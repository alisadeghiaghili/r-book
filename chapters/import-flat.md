---
title: فصل 8 — Importing: فایل‌های flat
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 8 — Importing: فایل‌های flat

**بخش:** داده‌ها و ورود داده

[← فصل قبل: 7. توابع و پکیج‌ها](functions-packages.md) · [فهرست کلی](../README.md) · [فصل بعد: 9. Excel و فایل‌های جدولی →](import-excel.md)

## در این فصل

- [Importing](#Importing)
- [Flat](#Flat)
- [File.path](#Filepath)
- [read.delim و read.table](#readdelim-و-readtable)
- [read.delim](#readdelim)
- [which.max / which.min](#whichmax--whichmin)
- [پکیج readr و data.table](#پکیج-readr-و-datatable)
- [Readr](#Readr)

## Importing

**کد: data.frame vs tibble lazy (4)**

<div dir="ltr" class="ltr-block">

```r
data.frame(a = 1:3, b = c(10, 100, 1000))
```

</div>



<div dir="ltr" class="ltr-block">

```text
a    b
1 1   10
2 2  100
3 3 1000
```

</div>



<div dir="ltr" class="ltr-block">

```r
data.frame(a = 1:3, b = c(10, 100, 1000), c = a * b)
```

</div>



<div dir="ltr" class="ltr-block">

```text
Error: object 'b' not found
```

</div>



<div dir="ltr" class="ltr-block">

```r
tibble(a = 1:3, b = c(10, 100, 1000), c = a * b)
```

</div>



<div dir="ltr" class="ltr-block">

```text
# A tibble: 3 × 3
      a     b     c
  <int> <dbl> <dbl>
1     1    10    10
2     2   100   200
3     3  1000  3000
```

</div>



**کد: typeof vs class (4)**

<div dir="ltr" class="ltr-block">

```r
class(12)
```

</div>



<div dir="ltr" class="ltr-block">

```text
[1] "numeric"
```

</div>



<div dir="ltr" class="ltr-block">

```r
typeof(12)
```

</div>



<div dir="ltr" class="ltr-block">

```text
[1] "double"
```

</div>



<div dir="ltr" class="ltr-block">

```r
typeof(12L)
```

</div>



<div dir="ltr" class="ltr-block">

```text
[1] "integer"
```

</div>



<div dir="ltr" class="ltr-block">

```r
class(12L)
```

</div>



<div dir="ltr" class="ltr-block">

```text
[1] "integer"
```

</div>



**کد: getwd / dir (4)**

<div dir="ltr" class="ltr-block">

```r
getwd()
```

</div>



<div dir="ltr" class="ltr-block">

```text
[1] "C:/Users/alisa/Desktop/Projects/.mimo-sessions/2026-09-19/این رو با دقت بخون و تایپش رو کامل و درس"
```

</div>



<div dir="ltr" class="ltr-block">

```r
dir()
```

</div>



<div dir="ltr" class="ltr-block">

```text
[1] "~$اب R - اصلاح‌شده با کدها.docx"                      
 [2] "~$اب R - نهایی RTL و کدها.docx"                      
 [3] "build_fixed_r_booklet.py"                            
 [4] "capture_interleaved.R"                               
 [5] "capture_outputs.R"                                   
 [6] "convert_and_extract_rbook.py"                        
 [7] "correct_r_book.py"                                   
 [8] "corrected_for_review.txt"                            
 [9] "export_codes_pdf.py"                                 
[10] "export_pdf_word.py"                                  
[11] "export_rtl_pdf.py"                                   
[12] "extract_docx.py"                                     
[13] "insert_rhistory_codes.py"                            
[14] "inspect_docx.py"                                     
[15] "ketab_r_codes_tmp.docx"                              
[16] "ketab_r_codes_tmp.pdf"                               
[17] "ketab_r_corrected_tmp.docx"                          
[18] "ketab_r_corrected_tmp.pdf"                           
[19] "ketab_r_source.docx"                                 
[20] "ketab_r_source.txt"                                  
[21] "ketab_rtl_tmp.docx"                                  
[22] "ketab_rtl_tmp.pdf"                                   
[23] "lo_profile"                                          
[24] "lo_profile2"                                         
[25] "make_capture_r.py"                                   
...
```

</div>



**کد: read_csv نمونه موقت (4)**

<div dir="ltr" class="ltr-block">

```r
library(readr)
tmp <- tempfile(fileext = ".csv")
write.csv(mtcars[1:3, c("mpg", "cyl", "disp")], tmp, row.names = FALSE)
read_csv(file = tmp, show_col_types = FALSE)
read_csv(file = tmp, n_max = 2, show_col_types = FALSE)
unlink(tmp)
```

</div>



<div dir="ltr" class="ltr-block">

```text
# A tibble: 3 × 3
    mpg   cyl  disp
  <dbl> <dbl> <dbl>
1  21       6   160
2  21       6   160
3  22.8     4   108
# A tibble: 2 × 3
    mpg   cyl  disp
  <dbl> <dbl> <dbl>
1    21     6   160
2    21     6   160
[1] 0
```

</div>



تا حالا یاد گرفتیم یکسری کارهایی رو با R انجام بدیم و حالا می‌خواهیم یاد بگیریم که چطور داده ها رو از منابع داده بخونیم. منابع داده ای که مد نظر ما هستند فایل های flat ، فایل های Excel ، Db ها داده های وب و داده های سایر نرم‌افزارهای آماری هست که حالا یکی یکی برسینشون می

## Flat

فایل های flat همون فایل های text خوده و فن مثل csv ها. در واقع یک جدول یا به توی e یک data.frame هستند که در قالب فایل text ذخیره شدن.

Function هایی که با هاشون flat فایل ها رو می خونیم معمولاٌ مربوط به پکیج utils هستن.

## File.path

در کل برای خوندن هر چیزی توی سیستم عامل های مختلف یک مسیری وجود داره که نحوه نمایش این مسیر فرق داره. برای اینکه فارغ از پلتفرم بتونیم این کار رو انجام بدیم و مسیر رو مستقلاٌ ذخیره کنیم می‌شود از تابع file.path استفاده کرد.

مثلاٌ فرض کنید یه فایلی تو workingdirectorgs من باشه. ( با getwd() می‌شود محل working dir روبرو با setwd اون رو تعیین کردم می‌خواهم بخونمش -----------

Dir( )

برای دیدن فایل های توی working dir می‌توانید از تابع dir( ) استفاده کنید. همینطور که مبینیین ستونهایی که از جنس char بودن به foetor تبدیل شدن. برای جلوگیری از این کار یک آرگومان به اسم stringsAsFactors هر تابع read.csv وجود داره که گر false بشه مشکل حل می‌شود. که تا صورت پیش‌فرض در واقع برای تمام function های import توی پکیج utils این آرگومان TRUE هست.

مثلاٌ توی مثال name و آدرس داده کنگوریکال نیستن که بخوان factor میشن eadline ورودی از کاربر با یک متن.

## read.delim و read.table


## read.delim

یکی دیگه از فرمت های خیلی پرکار برد بعد از csv ، فایل های tsv یا tab هستن.

برای خوندن این داده ها از read.delim استفاده می‌کنیم. به صورت پیش‌فرض آرگومان sep در این تابع "\t" (tab) است و آرگومان header=TRUE هست.

اگر داده هامون با دو فرمت csv یا tsv باشن کار خیلی راحته اگر نه باید زحمت بیشتری کشید.

این مجموعه داده شامل میزان سدیم و کالری hotdog های مختلفه. دیتامون 3 تا متغیر داره که اسم ندارد و با tab جدا شدن.

Read.table

در این موارد معمولاٌ از read.table استفاده می‌کنیم. در واقع read.csv و read.delim ، wrapper های این تابع هستن.

4 تا آرگومان اسمی داره – فایل

با col.names می تونیم به ستونها اسم بدیم.

## which.max / which.min

حالا فکر کنید می‌خواهیم hotdog با کمترین کالری و hotdog با بیشترین سدیم رو پیدا کنیم به خاطر رژیم غذاییمون. برای پیدا کردن بیشترین و کمترین مقدار توی این داده های می تونیم از تابع which.max/ which.min استفاده کنیم.

همونطور که می بینین این توابع اندیس اون قلم رو باز می‌گردانند. پس می‌شود گفت.

آرگومان دیگمون colClasses هست که برای تعیین جنس داده های درون دیتا نریم استفاده می‌شود و وقتی خیلی استفاده می‌شود که یکی یا چند تا از فیلم هامون بخوان factor باشن و چند تا کاراکتر.

اگر کلاس مربوط به یک متون خالی باشه اون متون کلا توی data.frame load نمی‌شود و حواستون باشه که این آرگومان می تونه آرگومان stringsAsFactors رو cverride کند

دقت کنید توی بعضی فایل ها به دلیل اینکه ٌرٌ ٌژ ٌ استفاده شده نمی‌شود به راحتی از فرمت قبل استفاده کرد و باید آرگومان های dec و sep تنظیم بشن که البته به دلیل رواج داشتن این فرمت ها دو تابع read.csv2 و read.delim2 با تنظیمات مناسب وجود دارن.

## پکیج readr و data.table

تا اینجا هرمی می خوندیم مربوط پکیج base خود R بود که همراه این نرم‌افزار نصب می‌شود. ولی پکیج‌های اختصاصی هم برای اینکارا وجود داره. ما به 2 تا پکیج، read و data.table رو بررسی مس کنیم.

## Readr

نسبت به utils بسیار بسیار سریع تره.

برای خوندن csv توی پکیج utils از read.csv استفاده می کردیم و اینجا read_csv رو داریم. نتیجه تقریباٌ همونه باید تفاوت. خروجی read.csv یه tibblele هست. که یک جورایی مدل بهینه شده یک datfrane هست. که توسط طراح این پکیج neadlg معرفی شده. تمام پکیج‌هایی که این آقا معرفی کرده با tibblele کاری کنن که می بینین فرمت داده ها رو هم نشون میده.

دقت کنید که توی read دیگه char ها به صورت پیش‌فرض futor نمیشن.

همینطور مثل read.delim توی utils اینجا read_tsv رو داریم. و باز هم همون مزایای قبلی رو داره و باز هم مثل پکیج utils که هر دوی read.csv یا wrapper های read.table بودن اینجا هم read_csv یا wrapper های read_delim هستن.

توی تمام این تابع ها با استفاده از col-names می‌شود به ستونها اسم داد.

> **تمرین:** با استفاده از تابع مناسب از این package داده های فایل potatoes.txt رو نخونین و به ستونهاش اسم بدهید. اسامی ستونها هستند

بعد هم رکورد اول رو نمایش بدهید.

با استفاده از آرگومان skip مشخص می‌کنیم چند سطر اول رو نمی‌خواهیم. دقت کنید که موقع skip کردن

با استفاده از آرگومان n-man مشخص می‌کنیم چه تعداد سطر رو می‌خواهیم.

با استفاده از آرگومان col-types مشه جنس داده های اون ستون رو هم مشخص کرد.

اگر مقدار نگیره یا 4 بگیره خودش تشخیص میده (بر اساس 1000 سطر اولی)

دقت کنید که skip کل اون ستون رو skip میکنه

می‌شود هم به جای استفاده از این مخفف ها که محدود هستند (مثلاٌ فاکتور نوارن) از توابع reader collector استفاده کرد.

---

### پیمایش

- قبلی: [7. توابع و پکیج‌ها](functions-packages.md)
- فهرست: [README](../README.md)
- بعدی: [9. Excel و فایل‌های جدولی](import-excel.md)

</div>