# Prepare bookdown sources at repo root from chapters/*.md
# Writes 01-*.md ... 19-*.md next to index.Rmd (standard bookdown layout)

src_dir <- "chapters"
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

# remove previous numbered chapter files at root
old <- list.files(".", pattern = "^[0-9][0-9]-.*\\.md$", full.names = TRUE)
if (length(old)) file.remove(old)

for (i in seq_along(order)) {
  f <- order[i]
  path <- file.path(src_dir, f)
  if (!file.exists(path)) {
    message("missing: ", path)
    next
  }
  lines <- readLines(path, encoding = "UTF-8", warn = FALSE)
  lines <- strip_front_matter(lines)
  # drop outer RTL wrappers only
  lines <- lines[!grepl('^<div dir="rtl"', lines)]
  out <- sprintf("%02d-%s", i, f)
  writeLines(lines, out, useBytes = FALSE)
  message("wrote ", out, " (", length(lines), " lines)")
}

message("prepare_book done")
