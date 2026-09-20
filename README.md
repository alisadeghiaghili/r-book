<div dir="rtl" lang="fa">

# کتاب R — مقدماتی

منبع فارسی آموزش زبان برنامه‌نویسی R، ساختاریافته مانند **R for Data Science**.

## کتاب را کجا ببینم؟

| جا | لینک |
|---|---|
| **سایت کتاب (bookdown)** | [alisadeghiaghili.github.io/r-book](https://alisadeghiaghili.github.io/r-book/) |
| مخزن GitHub | [github.com/alisadeghiaghili/r-book](https://github.com/alisadeghiaghili/r-book) |
| متن یکپارچه Markdown | [book.md](book.md) |
| فصل‌ها (Markdown) | [chapters/](chapters/) |
| Word / PDF | [exports/](exports/) |

نوشته‌های فارسی راست‌به‌چپ هستند. کد و خروجی R چپ‌به‌چپ نمایش داده می‌شوند.

خروجیِ کدهای تک‌خطی بلافاصله بعد از همان خط آمده است.

## فهرست مطالب

### مقدمه

- [1. مقدمه](chapters/introduction.md)
- [2. آشنایی با RStudio](chapters/rstudio.md)

### مبانی R

- [3. عملیات ریاضی و متغیرها](chapters/basics-variables.md)
- [4. بردارها و ماتریس‌ها](chapters/vectors-matrices.md)
- [5. فاکتور، data.frame و list](chapters/data-structures.md)

### برنامه‌نویسی

- [6. ساختارهای کنترلی](chapters/control-flow.md)
- [7. توابع و پکیج‌ها](chapters/functions-packages.md)

### داده‌ها و ورود داده

- [8. Importing: فایل‌های flat](chapters/import-flat.md)
- [9. Excel و فایل‌های جدولی](chapters/import-excel.md)
- [10. ورود داده از پایگاه‌داده](chapters/import-db.md)
- [11. خواندن داده از وب و API](chapters/import-web.md)

### پاکسازی و داده‌کاوی

- [12. دادهٔ تمیز و tidyverse](chapters/tidy-data.md)
- [13. رشته‌ها و Regular Expression](chapters/strings-regex.md)
- [14. دستکاری داده با dplyr](chapters/dplyr.md)
- [15. ترکیب داده (Join)](chapters/joins.md)

### زمان و داده‌های پیشرفته

- [16. تاریخ و زمان](chapters/datetime.md)
- [17. data.table و داده‌های حجیم](chapters/data-table.md)
- [18. داده پرت و نمودارهای پایه](chapters/outliers-plots.md)
- [19. پیوست: کدهای تکمیلی](chapters/appendix.md)

## ساخت سایت (bookdown)

این سایت با همان ابزار R4DS یعنی **bookdown** ساخته می‌شود.

هر push روی `main` با GitHub Actions (`.github/workflows/bookdown.yml`) کتاب را رندر و روی شاخهٔ `gh-pages` منتشر می‌کند.

به‌صورت محلی:

```r
install.packages(c("bookdown", "rmarkdown", "knitr"))
# در ریشهٔ ریپو:
source("scripts/prepare_book.R")
bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")
```

خروجی در پوشهٔ `_book` ساخته می‌شود.

## اجرا

به [R](https://cran.r-project.org/) و پیشنهاداً RStudio/Posit نیاز دارید.

```r
install.packages(c("dplyr", "readr", "readxl", "tibble", "data.table"))
```

</div>
