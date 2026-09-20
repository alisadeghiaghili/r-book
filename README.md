---
title: کتاب R — مقدماتی
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# کتاب R — مقدماتی

منبع فارسی آموزش R، ساختاریافته مانند **R for Data Science**: بخش‌ها و فصل‌های شماره‌دار. نوشته‌ها راست‌به‌چپ؛ کد و خروجی چپ‌به‌چپ.

خروجیِ کدهای تک‌خطی بلافاصله بعد از همان خط آمده است.

## فهرست مطالب

### مقدمه

با این کتاب چه چیزی یاد می‌گیرید و چطور از آن استفاده کنید.

- [1. مقدمه](chapters/introduction.md)
- [2. آشنایی با RStudio](chapters/rstudio.md)

### مبانی R

زبان R مثل یک ماشین‌حساب قدرتمند است؛ با متغیر، نوع داده و ساختارهای پایه شروع می‌کنیم.

- [3. عملیات ریاضی و متغیرها](chapters/basics-variables.md)
- [4. بردارها و ماتریس‌ها](chapters/vectors-matrices.md)
- [5. فاکتور، data.frame و list](chapters/data-structures.md)

### برنامه‌نویسی

شرط، حلقه، تابع و پکیج — ابزارهایی که کد شما را قابل استفاده مجدد می‌کنند.

- [6. ساختارهای کنترلی](chapters/control-flow.md)
- [7. توابع و پکیج‌ها](chapters/functions-packages.md)

### داده‌ها و ورود داده

خواندن داده از فایل، پایگاه‌داده و وب — گام اول هر تحلیل جدی.

- [8. Importing: فایل‌های flat](chapters/import-flat.md)
- [9. Excel و فایل‌های جدولی](chapters/import-excel.md)
- [10. ورود داده از پایگاه‌داده](chapters/import-db.md)
- [11. خواندن داده از وب و API](chapters/import-web.md)

### پاکسازی و داده‌کاوی

دادهٔ خام به‌ندرت آمادهٔ تحلیل است؛ tidyverse، رشته، regex و dplyr.

- [12. دادهٔ تمیز و tidyverse](chapters/tidy-data.md)
- [13. رشته‌ها و Regular Expression](chapters/strings-regex.md)
- [14. دستکاری داده با dplyr](chapters/dplyr.md)
- [15. ترکیب داده (Join)](chapters/joins.md)

### زمان و داده‌های پیشرفته

تاریخ/زمان، data.table، داده پرت و خروجی‌های کمکی.

- [16. تاریخ و زمان](chapters/datetime.md)
- [17. data.table و داده‌های حجیم](chapters/data-table.md)
- [18. داده پرت و نمودارهای پایه](chapters/outliers-plots.md)
- [19. پیوست: کدهای تکمیلی](chapters/appendix.md)

## فایل‌ها

- متن یکپارچه: [book.md](book.md)
- [کتاب R - نهایی RTL و کدها.docx](exports/کتاب R - نهایی RTL و کدها.docx)
- [کتاب R - نهایی RTL و کدها.pdf](exports/کتاب R - نهایی RTL و کدها.pdf)

## اجرا

به [R](https://cran.r-project.org/) و پیشنهاداً RStudio/Posit نیاز دارید.

```r
install.packages(c("dplyr", "readr", "readxl", "tibble"))
```

</div>
