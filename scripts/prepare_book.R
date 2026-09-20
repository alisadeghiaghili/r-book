# Prepare bookdown sources from chapters/*.md
# Strips YAML front matter and outer RTL wrappers.
# Keeps </div> so LTR code/output wrappers stay valid.

src_dir <- "chapters"
out_dir <- "_bookdown_src"
dir.create(out_dir, showWarnings = FALSE, recursive = TRUE)

order <- c(
  "introduction.md",
  "rstudio.md",
  "basics-variables.md",
  "vectors-matrices.md",
  "data-structures.md",
  "control-flow.md",
  "functions-packages.md",
  "import-flat.md",
  "import-excel.md",
  "import-db.md",
  "import-web.md",
  "tidy-data.md",
  "strings-regex.md",
  "dplyr.md",
  "joins.md",
  "datetime.md",
  "data-table.md",
  "outliers-plots.md",
  "appendix.md"
)

strip_front_matter <- function(lines) {
  if (length(lines) == 0) return(lines)
  if (grepl("^---\\s*$", lines[1])) {
    end <- which(grepl("^---\\s*$", lines))
    end <- end[end > 1]
    if (length(end) > 0) {
      return(lines[(end[1] + 1):length(lines)])
    }
  }
  lines
}

for (i in seq_along(order)) {
  f <- order[i]
  path <- file.path(src_dir, f)
  if (!file.exists(path)) {
    message("missing: ", path)
    next
  }
  lines <- readLines(path, encoding = "UTF-8", warn = FALSE)
  lines <- strip_front_matter(lines)
  # Remove only outer RTL wrappers (not LTR block closers)
  drop <- grepl('^<div dir="rtl"', lines)
  lines <- lines[!drop]
  out <- file.path(out_dir, sprintf("%02d-%s", i, f))
  writeLines(lines, out, useBytes = FALSE)
  message("wrote ", out, " (", length(lines), " lines)")
}

message("prepare_book done")
