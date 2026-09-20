---
title: کتاب R — مقدماتی
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# کتاب R — مقدماتی

جزوهٔ آموزشی برنامه‌نویسی R: ویرایش اصلاح‌شده، همراه کدهای جلسه و خروجی اجراشده.

نوشته‌های فارسی راست‌به‌چپ هستند. بلوک‌های کد و خروجی چپ‌به‌چپ و داخل fence قرار می‌گیرند.

## آشنایی RStudio

تفاوت RStudio – R زبان برنامه‌نویسی است - RStudio یک IDE

## تغییر ظاهر RStudio

برای تغییر ظاهر RStudio می‌توان از مسیر Tools ← Global Options ← Pane Layout تغییرات را اعمال کرد.

## دستورات قبلی

برای دیدن دستورات قبلی می‌توان از کلید بالا استفاده نمود یا با فشردن ctrl + کلید بالا فهرستی از دستورات قبلی ظاهر می‌شوند.

## تکمیل دستورات

با استفاده از کلید tab و بعد از نوشتن حداقل 3 حرف پیشنهاد توسط RStudio بر اساس package‌های نصب شده روی دستگاه نمایان می‌شود.

برای تغییر تنظیمات مربوط به تکمیل دستورات هم می‌توان از مسیر Tools ← Global Options ← Code ← Completion مراجعه کرد.

## پاک کردن دستورات از Console

برای پاک کردن دستورات در Console می‌توان از کلیدهای Ctrl+L استفاده نمود.

## استفاده از محیط Script

برای استفاده از محیط Script کافی است از منوی File – New File – R Script یک پنجره جدید بازکرده یا از کلید ترکیبی Ctrl+Shift+N استفاده نمود.

با استفاده از گوشه پایین سمت راست پنجره Script می‌توان زبان دلخواه ویرایشگر را انتخاب نمود.

برای اجرای دستورات انتخاب شده در محیط Script نویسی می‌توان از Ctrl+Enter و برای اجرای تمام دستورات نوشته شده Ctrl+Shift+S برای اجرای بدون تکرار در Ctrl+Shift+Enter, Console برای اجرای با تکرار در console استفاده کرد.

با کلید میانبر Ctrl+1 می‌توان به محیط Script و با Ctrl+2 به محیط Console رفت.

## تغییر رنگ نوشتار

از طریق منوی Tools ← Global Options ← Appearance می‌توان رنگ و فونت نوشته‌ها را تغییر داد.

جزوه R

## مقدماتی

## مقدمه

یک محیط و زبان برنامه‌نویسی متن‌باز هست که برای انجام کارهای آماری و نمایش داده به‌وجود آمد.

امروز به‌جز اینها با کمک ML باهاش پیش‌بینی هم می‌کنند.

R توسط راس ایهاکا (Ross Ihaka) و رابرت جنتلمن (Robert Gentleman) در دانشگاه اوکلند نیوزلند به وجود آمد.(1992)

ویژگی‌ها

بسته‌های (Package) موجود فراوان

توسعه ساده package

توی مدل‌سازی آماری و نمایش بسیار قدرتمنده

به راحتی با خیلی از زبان‌های امروزی ارتباط برقرار می‌کند (مانند C، C#، Python و…)

شی‌گرا است

برپایه ماتریس

بسیاری از نرم‌افزارهای آماری خودشان رو با R سازگار کردن

بسیاری از سیستم های هوش تجاری برخی پایگاه داده هام خودشان رو باهاش سازگار کردن.

مباحث دوره: برنامه‌نویسی مقدماتی به زبان R

5. مبانی برنامه‌نویسی R تا 10

2. مباحث کاربردی R

3. تابع‌نویسی

6 . ورود داده

5. پاکسازی داده

6. تغییر داده

7. اکتشاف و تحلیل داده

8. ترکیب داده

9. تجزیه‌وتحلیل داده

## نصب

## مبانی و عملیات ریاضی

**کد: عملیات پایه (r1.Rhistory)**

<div dir="ltr" class="ltr-block">
```r
2 + 2
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 4
```
</div>


<div dir="ltr" class="ltr-block">
```r
2 - 3
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] -1
```
</div>


<div dir="ltr" class="ltr-block">
```r
2 * 3
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 6
```
</div>


<div dir="ltr" class="ltr-block">
```r
7 / 3
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 2.333333
```
</div>


<div dir="ltr" class="ltr-block">
```r
7 %/% 3
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 2
```
</div>


<div dir="ltr" class="ltr-block">
```r
7 %% 3
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1
```
</div>


<div dir="ltr" class="ltr-block">
```r
2 ^ 3
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 8
```
</div>


**میان‌برهای RStudio (r1)**

<div dir="ltr" class="ltr-block">
```r
# Ctrl + L  -> clear console
# Ctrl + N  -> new file
# Ctrl + Shift + N -> new R script
# Ctrl + Enter -> run selection
# Ctrl + 1 / Ctrl + 2 -> focus Source / Console
# Alt + -    -> assignment <-
```
</div>


<div dir="ltr" class="ltr-block">
```text
(no output — comments only)
```
</div>


R مثل ماشین حساب است

در زبان R هم مثل R می‌شود با # کامنت گذاشت

آشنایی و توضیح محیط Ctrl+L صفحه رو پاک می کنه.

## متغیر

**کد: تخصیص متغیر (r1)**

<div dir="ltr" class="ltr-block">
```r
x <- 12
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 12
```
</div>


<div dir="ltr" class="ltr-block">
```r
x
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 12
```
</div>


<div dir="ltr" class="ltr-block">
```r
x <- 3.14
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 3.14
```
</div>


<div dir="ltr" class="ltr-block">
```r
x
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 3.14
```
</div>


<div dir="ltr" class="ltr-block">
```r
x = 12
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 12
```
</div>


> **تمرین:** سیب/پرتقال (الگوی کد)

<div dir="ltr" class="ltr-block">
```r
sib <- 5
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 5
```
</div>


<div dir="ltr" class="ltr-block">
```r
porteghal <- 6
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 6
```
</div>


<div dir="ltr" class="ltr-block">
```r
mive <- sib + porteghal
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 11
```
</div>


<div dir="ltr" class="ltr-block">
```r
mive
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 11
```
</div>


چرا متغیر؟

<div dir="ltr" class="ltr-block">
```r
تعریف متغیر – متغیر با استفاده از – تعریف می‌شود و یک مقدار بهش تخصیص داده می‌شود. – e.g. x <- 42
```
</div>


بازخوانی – کافیه فقط اسمش زده بشه.

تمام عملیات ریاضی روی متغیر با مقدار عددی امکان پذیره

> **تمرین:** یک متغیر بسازین به اسم sib و یکی به اسم porteghal و مقادیر 5و6 روتوشون ذخیره کنید و بعد نمایششون بدهید بعد از نمایش با هم جمعشون کنید و توی یک متغیر به اسم میوه ذخیره کنید و حاصل جمع روشون بدهید.

## انواع داده

**کد: primitive types و class() (r1)**

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
class(3.14)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "numeric"
```
</div>


<div dir="ltr" class="ltr-block">
```r
class("ali")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "character"
```
</div>


<div dir="ltr" class="ltr-block">
```r
class(TRUE)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "logical"
```
</div>


**کد: خطاهای جمع ناسازگار و coercion (r1)**

<div dir="ltr" class="ltr-block">
```r
2 + TRUE
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 3
```
</div>


<div dir="ltr" class="ltr-block">
```r
2 + FALSE
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 2
```
</div>


<div dir="ltr" class="ltr-block">
```r
TRUE + FALSE
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1
```
</div>


<div dir="ltr" class="ltr-block">
```r
2 + "ali"
```
</div>


<div dir="ltr" class="ltr-block">
```text
Error: non-numeric argument to binary operator
```
</div>


داده ها 3 نوع هستند

انواع داده خیلی مهم هستند چون ما همه عملیات رو نمی تونیم روی تمام انواع داده انجام بدیم. (مثال از هر 3 مدل)

توضیح که logical عملاٌ مقدارش 0 یا 1 هست.

پس ممکنه یه جاهایی توی عملیات اینجوری به مشکل بخوریم. برای فهمیدن نوع داده از تابع ( ) class استفاده می‌کنیم. (استفاده از class روی تمام مثالهای بالا)

> **تمرین:** 3 تا متغیر بسازین بهش از هر 3 نوع مقدار رو بدهید و بعد با class نوعش رو نمایش بدهید.

## بردارها

**کد: ساخت بردار با c() (r1)**

<div dir="ltr" class="ltr-block">
```r
c(1, 2, 3, 4, 5)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1 2 3 4 5
```
</div>


<div dir="ltr" class="ltr-block">
```r
vec1 <- c(1, 2, 3, 4, 5)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1 2 3 4 5
```
</div>


<div dir="ltr" class="ltr-block">
```r
vec1
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1 2 3 4 5
```
</div>


<div dir="ltr" class="ltr-block">
```r
vec2 <- c("ali", "sadeghi")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "ali"     "sadeghi"
```
</div>


<div dir="ltr" class="ltr-block">
```r
vec3 <- c(TRUE, FALSE)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1]  TRUE FALSE
```
</div>


<div dir="ltr" class="ltr-block">
```r
vec2
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "ali"     "sadeghi"
```
</div>


<div dir="ltr" class="ltr-block">
```r
vec3
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1]  TRUE FALSE
```
</div>


**کد: coercion در بردار (r1)**

<div dir="ltr" class="ltr-block">
```r
c(1, 2, 3, TRUE, FALSE)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1 2 3 1 0
```
</div>


<div dir="ltr" class="ltr-block">
```r
c(1, 2, 3, 3.14)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1.00 2.00 3.00 3.14
```
</div>


<div dir="ltr" class="ltr-block">
```r
c(1, 2, 3, 3.14, TRUE)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1.00 2.00 3.00 3.14 1.00
```
</div>


<div dir="ltr" class="ltr-block">
```r
c(1, 2, 3, 3.14, TRUE, "ali")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "1"    "2"    "3"    "3.14" "TRUE" "ali"
```
</div>


**کد: تمرین دلار/یورو (r1)**

<div dir="ltr" class="ltr-block">
```r
days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
dollars <- c(140, -50, 20, -120, 240)
euros <- c(-24, -50, 100, 350, 10)
names(dollars) <- days
names(euros) <- days
dollars
euros
dollars + euros
sum(dollars)
sum(euros)
sum(dollars + euros)
sum(dollars) + sum(euros)
```
</div>


<div dir="ltr" class="ltr-block">
```text
 Mon  Tue  Wed  Thu  Fri 
 140  -50   20 -120  240 
Mon Tue Wed Thu Fri 
-24 -50 100 350  10 
 Mon  Tue  Wed  Thu  Fri 
 116 -100  120  230  250 
[1] 230
[1] 386
[1] 616
[1] 616
[1] 616
```
</div>


**کد: اندیس‌گذاری و names() (r1)**

<div dir="ltr" class="ltr-block">
```r
nums <- c(12, 13, 14, 15, 16)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 12 13 14 15 16
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 12 13 14 15 16
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums[1]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 12
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums[3]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 14
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums[-1]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 13 14 15 16
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums[-c(1, 2)]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 14 15 16
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums[-(1:3)]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 15 16
```
</div>


<div dir="ltr" class="ltr-block">
```r
info <- c("ali", "sadeghi")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "ali"     "sadeghi"
```
</div>


<div dir="ltr" class="ltr-block">
```r
names(info)
```
</div>


<div dir="ltr" class="ltr-block">
```r
names(info) <- c("firstName", "lastName")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "firstName" "lastName"
```
</div>


<div dir="ltr" class="ltr-block">
```r
info
```
</div>


<div dir="ltr" class="ltr-block">
```text
firstName  lastName 
    "ali" "sadeghi"
```
</div>


<div dir="ltr" class="ltr-block">
```r
info["firstName"]
```
</div>


<div dir="ltr" class="ltr-block">
```text
firstName 
    "ali"
```
</div>


**کد: sequence و شرط روی بردار (r1)**

<div dir="ltr" class="ltr-block">
```r
(12:364)[8]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 19
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums2 <- 12:364
```
</div>


<div dir="ltr" class="ltr-block">
```text
length(nums2) = 353
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums2[9]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 20
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums > 14
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] FALSE FALSE FALSE  TRUE  TRUE
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums[nums > 14]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 15 16
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums[nums < 13 | nums > 16]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 12
```
</div>


<div dir="ltr" class="ltr-block">
```r
nums[nums >= 13 & nums <= 16]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 13 14 15 16
```
</div>


<div dir="ltr" class="ltr-block">
```r
c(1, 2, 3) * c(10, 100)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1]  10 200  30
```
</div>


<div dir="ltr" class="ltr-block">
```r
length(nums2)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 353
```
</div>


می‌خواهیم ببینیم چه کارایی می‌شود با بردارها کرد.

بردار چیه؟

توی R با استفاده از تابع c() می تونیم بردار بسازیم.

از بردار برای ورود و نمایش داده استفاده می‌شود (خیلی منظمی نیست داده ها رو دونه دونه وارد کنیم).

تمام انواع داده رو می‌شود توی بردار ذخیره کرد.

> **تمرین:** انواع مختلف داده رو 2 به 2 با هم توی یک بردار ذخیره کنید. ( اگر char داشته باشیم همه char میشن) .

> **تمرین:** من افتادم توی کار خرید و فروش ارز و اول هر روز دلار و یورو می خرم و آخر اون روز میفروشیم. اختلاف خرید و فروشم رو توی هر روز یادداشت می کنم. حالا یا سود کردم یا ضرر. فکر کنید سودبردن از دلارو یورو اینجوری باشه که توی جدول براندن می نویسیم. می‌خواهم 2 تا بردار بسازین با اسم دلار و یورو و این مقادیر و توش ذخیره کنید و نمایش بدهید.

نمایش دادیم ولی برای فهم بهتر با توجه به اینکه خروجی باید معنی دار باشه باید روزای هفته روهم ببینیم دیگه

با استفاده از تابع names() می تونیم به یک بردار نام دهیم.

> **تمرین:** حالا با استفاده از تابع names روزهای هفته به 2 بردار تخصیص بدهید.

می‌شود یک بردار ساخت و دو بار تخصیص داد.

قبل از اینکه مثال رو ادامه بدیم خوبه بدونین اعمال ریاضی هم مثل قبل روی بردارها می‌شود انجام داد.

مثال از char

مثال از num

اعمال ریاضی روی دو بردار یا صورت نظیر به نظیر انجام می‌شود- مثال از تمام عملیات

> **تمرین:** حالا شما یک بردار سود روزانه بسازین و بگویید توی هر روز در مجموع من سود کردم یا ضرر و مقدارش رو نشون بدهید.

برای بدست آوردن مجموع مقادیر یک بردار از تابع sum() استفاده می‌کنیم

توی مثال قبل مجموع سود دو ارز رو بدست بسازین و بعد بگویید و در کل ضرر کردم یا مربوط چقدر؟

می تونیم مقادیر 2 تا عدد رو مقایسه کنیم

مقایسه حروف در R ، lexical هست (کتابخانه اش میخانه یعنی به تنظیمات دستگاه شما بستگی دارد.

می‌شود مقادیر بر روزها رو هم نظیر به نظیر-----

> **تمرین:** حالا به من بگویید سودمون روی دلار بیشتر بوده یا یورو (با مقایسه) (کجاها)

انتخاب مقدار از توی بردار به شکل انجام می‌شود. –با استفاده از اندیس – با استفاده از اسم

در هر دو صورت از [ ] برای خواندن مقدار استفاده می‌شود

برای خواند چند مقدار می‌شود از استفاده کرد. ( مثال)

برای خواندن مقادیر پشت هم از می‌شود استفاده کرد (مثال)

> **تمرین:** مقادیر شنبه و جمعه رو توی 1 بردار به هر 2 روش و مقادیر 4 شنبه تا جمعه رو توی یک بردار دیگه به هر دو روش نشون بدهید.

یک کار جالب دیگه این که R میفهمه چه چیزهایی رو باید نمایش بده. یعنی می‌شود به‌عنوان اندیس یک شرط داد.

> **تمرین:** یک بردار بسازین که فقط روزهایی که از دلار سود کردم و مقادیر سود اون روزها رو نشون بده.

یکی از توابع آماری مهم تابع ( ) ncam یا میانگین هست. که با استفاده از اون می‌توانیم میانگین مقادیر رو بدست بیاریم.

همینطور می‌شود نسبتی از مجموعه که از یک شرط پیروی میکنه رد هم بدست آورد.

## ماتریس

**کد: ساخت ماتریس و dim (r1)**

<div dir="ltr" class="ltr-block">
```r
matrix(data = 1:12)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[,1]
 [1,]    1
 [2,]    2
 [3,]    3
 [4,]    4
 [5,]    5
 [6,]    6
 [7,]    7
 [8,]    8
 [9,]    9
[10,]   10
[11,]   11
[12,]   12
```
</div>


<div dir="ltr" class="ltr-block">
```r
matrix(data = 1:12, nrow = 3)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
```
</div>


<div dir="ltr" class="ltr-block">
```r
matrix(data = 1:12, ncol = 4)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
```
</div>


<div dir="ltr" class="ltr-block">
```r
matrix(data = 1:12, nrow = 3, ncol = 4)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
```
</div>


<div dir="ltr" class="ltr-block">
```r
mat1 <- matrix(data = 1:12, nrow = 3, ncol = 4)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
```
</div>


<div dir="ltr" class="ltr-block">
```r
mat1
```
</div>


<div dir="ltr" class="ltr-block">
```text
[,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12
```
</div>


<div dir="ltr" class="ltr-block">
```r
length(mat1)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 12
```
</div>


<div dir="ltr" class="ltr-block">
```r
nrow(mat1)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 3
```
</div>


<div dir="ltr" class="ltr-block">
```r
ncol(mat1)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 4
```
</div>


<div dir="ltr" class="ltr-block">
```r
dim(mat1)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 3 4
```
</div>


<div dir="ltr" class="ltr-block">
```r
matrix(data = 1:12, nrow = 2, ncol = 3, byrow = TRUE)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
```
</div>


**کد: آدرس‌دهی ماتریس (r1)**

<div dir="ltr" class="ltr-block">
```r
mat1 <- matrix(data = 1:12, nrow = 3, ncol = 4)
mat1[2, 2]
mat1[1, 4]
mat1[1, 2:4]
mat1[1, ]
rownames(mat1) <- c("A", "B", "C")
colnames(mat1) <- c("a", "b", "c", "d")
mat1
mat1["B", "b"]
mat1[2, "b"]
mat1 * 10
sum(mat1)
colSums(mat1)
rowSums(mat1)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 5
[1] 10
[1]  4  7 10
[1]  1  4  7 10
  a b c  d
A 1 4 7 10
B 2 5 8 11
C 3 6 9 12
[1] 5
[1] 5
   a  b  c   d
A 10 40 70 100
B 20 50 80 110
C 30 60 90 120
[1] 78
 a  b  c  d 
 6 15 24 33 
 A  B  C 
22 26 30 
 A  B  C 
22 26 30 
```
</div>


**کد: rbind / cbind (r1)**

<div dir="ltr" class="ltr-block">
```r
mat2 <- matrix(data = 1:4, nrow = 2, ncol = 2)
mat3 <- matrix(data = 5:8, nrow = 2, ncol = 2)
mat2
mat3
rbind(mat2, mat3)
cbind(mat2, mat3)
result <- cbind(mat2, mat3)
result
```
</div>


<div dir="ltr" class="ltr-block">
```text
     [,1] [,2]
[1,]    1    3
[2,]    2    4
     [,1] [,2]
[1,]    5    7
[2,]    6    8
     [,1] [,2]
[1,]    1    3
[2,]    2    4
[3,]    5    7
[4,]    6    8
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
```
</div>


ماتریس چیه ؟

توی R ماتریس ها هم مثل بردارها باید مقادیرشون هم جنس باشه.

برای ساختن ماتریس از تابع ( ) matrix استفاده می‌شود که 3 تا خصیصه اصلی داره – با چه مقادیر پر بشه – سطری پر می‌شود یا ستونی – چند سطر یا ستون دارد

> **تمرین:** فروش سه فیلم اول هری پاتر توی 3 تا بردار به ما داده شده. ستون اولی هر بردار فروش Box Office امریکا و ستون دوم فروش Box Office غیر امریکاست. اول یک بردار برای Box Office بسازین و بعد با استفاده از اون یک ماتریس به اسم ماتریس سه‌گانهٔ هری پاتر بسازین و اطلاعات رو توش بریزین به همیشه شکل با اسامی سطرها و ستونها کار نداشته باشین.

برای نام گذاری سطرها و ستونها 2 تا تابع rownames( ) و colnames( ) رو داریم که به وسیله اونهای ترسیم مثل بردارها به ماتریسیون اسم بریم.

> **تمرین:** یک بردار نام بسازید 2 مقدار non-us,us رو بهش بدهید و تخصیص بدهید به ستونهای ماتریسون و یک بردار اسامی بسازین و اسمها رو --- توش و تخصیص بدهید به سطرها تون.

اگر لیستها رو بلد بودین می‌شود خیلی ساده با استفاده از list ها این کار رو با dimnames, property انجام داده. قبل خودم اینو تو ذهنتون داشته باشین تا زمان list .

اینجا هم می‌توانیم مثل بردارها جمع داشته باشیم. هم سطری و هم ستونی با استفاده از توابع colSums( ) ,rowSums( )

> **تمرین:** مجموع فروش هر فیلم رو بدست بیارین و توی یک متغیر ذخیره کرده و نمایشش بدهید.

با استفاده از توابع cbind( ), rbind( ) می تونیم توی R چند تا بردار، ماتریس یا ترکیب اینها رو بریزیم توی یک ماتریس

> **تمرین:** مجموع فروش سطری و ستونی رو به جدول قبل اضافه کنید و به ستونهاش اسم بدهید.

> **تمرین:** بر گردین و به ماتریس اصلی این جدول رو هم اضافه کنید همه چیزهایی که بلدین و صرفاً جمع سطری و ستونی حساب کنید.

تمام اون روش هایی که برای خواندن یک اطلاعات از یک بردار گفتیم برای ماتریس هم برقراره با دو بُعد – سطر و ستون – اگر می‌خواهیم کل یک سطر یا ستون انتخاب می‌شود.

> **تمرین:** کل فروش non-us رو بدست بیارین و ذخیره کنید و بعد میانگین اون رو بدست بیارین و نمایش بدهید. بعد از اون هم فقط مجموع فروش غیر us در فیلم اول و بدست بیارین.

برای ماتریس ها هم عملیات ریاضی وجود دارن با همون شرایطی که توی بردارها گفتیم و باز هم نظیر به نظیر هستن.

> **تمرین:** فکر کنید که هر فیلم به ازای $5 دیده شده باشه. تعداد تماشاچی های فیلم ها رو تخمین بزنین و نمایش بدهید.

> **تمرین:** اینجوری که خیلی غیر دقیقه ! پس بیاین این مقادیر بلیط ها رو توی یک ماتریس ذخیره کنید و تعداد دقیق بیننده ها رو بدست بیارین و نمایش بدهید.

اگر می‌خواهیم اون اتفاقاتی که توی ریاضی می خوندیم برای ماتریس ها بیفته باید از عملگر ضرب ماتریسی %*% استفاده کنیم.

## فاکتورها

**کد: factor nominal و ordinal (r2)**

<div dir="ltr" class="ltr-block">
```r
gender <- c("M", "F", "M", "F", "M", "M")
factor(x = gender)
factor(x = gender, levels = c("M", "F", "U"))
factor(x = gender, levels = c("M", "F", "U"),
       labels = c("Male", "Female", "Unisex"))
genderFac <- factor(x = gender,
                    levels = c("M", "F", "U"),
                    labels = c("Male", "Female", "Unisex"))
genderFac
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] M F M F M M
Levels: F M
[1] M F M F M M
Levels: M F U
[1] Male   Female Male   Female Male   Male  
Levels: Male Female Unisex
[1] Male   Female Male   Female Male   Male  
Levels: Male Female Unisex
[1] Male   Female Male   Female Male   Male  
Levels: Male Female Unisex
```
</div>


**کد: factor ترتیبی (r2)**

<div dir="ltr" class="ltr-block">
```r
temp <- c("l", "m", "h", "vh", "vh", "h", "l")
tempFac <- factor(x = temp,
                  levels = c("vl", "l", "m", "h", "vh"),
                  labels = c("veryLow", "low", "mid", "high", "veryHigh"),
                  ordered = TRUE)
tempFac
genderFac[1] > genderFac[2]
tempFac[1] > tempFac[3]
unclass(tempFac)
summary(tempFac)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] low      mid      high     veryHigh veryHigh high     low     
Levels: veryLow < low < mid < high < veryHigh
[1] NA
[1] FALSE
[1] 2 3 4 5 5 4 2
attr(,"levels")
[1] "veryLow"  "low"      "mid"      "high"     "veryHigh"
 veryLow      low      mid     high veryHigh 
       0        2        1        2        2 
 veryLow      low      mid     high veryHigh 
       0        2        1        2        2 
```
</div>


**کد: ggplot2 و factor(cyl) (r2)**

<div dir="ltr" class="ltr-block">
```r
head(mtcars)
```
</div>


<div dir="ltr" class="ltr-block">
```text
mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```
</div>


<div dir="ltr" class="ltr-block">
```r
sort(unique(mtcars$cyl))
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 4 6 8
```
</div>


<div dir="ltr" class="ltr-block">
```r
library(ggplot2)  # ggplot object on next lines
```
</div>


<div dir="ltr" class="ltr-block">
```text
ggplot2 loaded OK
```
</div>


فاکتورها چین ؟ - یکی از انواع داده های آماری – برای نگهداری داده های categorical استفاده می‌شود (مثال)

چرا مهمه ؟ چون بعدها که می‌خواهیم از package ها و مدلی های آماری استفاده کنیم R باید بداند با چه نوعی از داده ها سروکار داره .

با استفاده از تابع factor می‌شود به R نمونه که یک مجموعه داده فاکتور هست.

Levels در واقع حالتهایی هست که برای داده ها پیش آمده .

فاکتورها دو دسته هستند –

حالا اگر بخوایم اسم لول ها رو عوض کنیم چه کار می‌کنیم؟ از تابع levels استفاده می‌کنیم.

> **تمرین:** فکر کنید به تعداد پرسشنامه جمع کردیم و جنسیت توشون به این ترتیب بوده مرد/مرد/زن/زن/مرد

اول با حروف اختصاری بریزیشون توی یک فاکتور و بعد بهشون اسم بدهید

فکر کنید که R به طور پیش‌فرض فاکتورها رو از کوچک به بزرگ در نظر میگیره.

تابع summary( ) یکی از توابع بسیار پر کاربرد و کار راه بنداز R هست. این تابع به ازای هر نوع از داده یکسری اطلاعات باز می‌گرداند از بردار ماتریس ractor

آدرس دهی در فاکتورها هم مثل بردارهاست و مقایسه منطقی هم همینطور فقط باید دقت بشه که مقایسه منطقی برای فاکتورهای ترتیبی – حساس‌تر است.

> **تمرین:** فکر کنید که 5 تا کارگر داریم که سرعت کارکرد نشون اینجوریه در یک فاکتور بسازید و اینهارو داخلش بریزید دقت کنید که سرعت یک فاکتور ترتیبی هست. می‌خواهیم بدونیم سرعت کارگر از پنجم کندتر است یا نه ؟

## data.frame

**کد: ساخت data.frame و EDA (r2)**

<div dir="ltr" class="ltr-block">
```r
infoDF <- data.frame(
  name   = c("ali", "hassan", "reza", "mohammad reza"),
  family = c("sadeghi aghili", "eskandari", "salehipour", "qahtarani"),
  age    = c(38, 38, 37, 36),
  major  = c("data architecture", "programming", "data engineering", "ML engineering")
)
infoDF
class(infoDF)
summary(infoDF)
str(infoDF)
```
</div>


<div dir="ltr" class="ltr-block">
```text
           name         family age             major
1           ali sadeghi aghili  38 data architecture
2        hassan      eskandari  38       programming
3          reza     salehipour  37  data engineering
4 mohammad reza      qahtarani  36    ML engineering
[1] "data.frame"
        name          family        age              major   
 Length   : 4   Length   : 4   Min.   :36.00   Length   : 4  
 N.unique : 4   N.unique : 4   1st Qu.:36.75   N.unique : 4  
 N.blank  : 0   N.blank  : 0   Median :37.50   N.blank  : 0  
 Min.nchar: 3   Min.nchar: 9   Mean   :37.25   Min.nchar:11  
 Max.nchar:13   Max.nchar:14   3rd Qu.:38.00   Max.nchar:17  
                               Max.   :38.00                 
'data.frame':	4 obs. of  4 variables:
 $ name  : chr  "ali" "hassan" "reza" "mohammad reza"
 $ family: chr  "sadeghi aghili" "eskandari" "salehipour" "qahtarani"
 $ age   : num  38 38 37 36
 $ major : chr  "data architecture" "programming" "data engineering" "ML engineering"
NULL
```
</div>


**کد: data.frame سیارات (r2)**

<div dir="ltr" class="ltr-block">
```r
SolarSys <- data.frame(
  Planet   = c("Mercury", "Venus", "Earth", "Mars",
               "Jupiter", "Saturn", "Uranus", "Neptune"),
  Type     = rep(c("Terrestrial", "Gas"), each = 4),
  Diameter = c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883),
  Rotation = c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67),
  HasRing  = rep(c(FALSE, TRUE), each = 4)
)
SolarSys
dim(SolarSys)
SolarSys$Planet
SolarSys[SolarSys$Planet == "Mars", ]
```
</div>


<div dir="ltr" class="ltr-block">
```text
   Planet        Type Diameter Rotation HasRing
1 Mercury Terrestrial    0.382    58.64   FALSE
2   Venus Terrestrial    0.949  -243.02   FALSE
3   Earth Terrestrial    1.000     1.00   FALSE
4    Mars Terrestrial    0.532     1.03   FALSE
5 Jupiter         Gas   11.209     0.41    TRUE
6  Saturn         Gas    9.449     0.43    TRUE
7  Uranus         Gas    4.007    -0.72    TRUE
8 Neptune         Gas    3.883     0.67    TRUE
[1] 8 5
[1] "Mercury" "Venus"   "Earth"   "Mars"    "Jupiter" "Saturn"  "Uranus" 
[8] "Neptune"
  Planet        Type Diameter Rotation HasRing
4   Mars Terrestrial    0.532     1.03   FALSE
  Planet        Type Diameter Rotation HasRing
4   Mars Terrestrial    0.532     1.03   FALSE
```
</div>


**کد: subset و order (r2)**

<div dir="ltr" class="ltr-block">
```r
subset(x = mtcars, cyl == 4)
subset(x = mtcars, cyl == 4 & am == 1)
a <- c(100, 10, 1000)
order(a)
a[order(a)]
sort(a, decreasing = TRUE)
```
</div>


<div dir="ltr" class="ltr-block">
```text
                mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Datsun 710     22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
Merc 240D      24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
Merc 230       22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
Fiat 128       32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
Honda Civic    30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
Toyota Corolla 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
Toyota Corona  21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
Fiat X1-9      27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2
                mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Datsun 710     22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
Fiat 128       32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
Honda Civic    30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
Toyota Corolla 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
Fiat X1-9      27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2
[1] 2 1 3
[1]   10  100 1000
[1] 1000  100   10
[1] 1000  100   10
```
</div>


مرور انواع داده – در تمام انواع تا الان فقط مجاز به استفاده از یک نوع داده بودیم. در حالی که در واقعیت با انواع مختلفی از داده در پرسشنامه مواجهیم – data.frame

در data.frame سطرها مشاهدات و ستونها متغیرهای ما هستند.

Land کردن mtcars

به‌عنوان کسی که داره با داده کاری کنه خیلی مهمه که نگاه اجمالی به داده هایی که باهاشون سروکار داریم بندازیم.

از تابع tail(), head( ) برای اینکار استفاده می‌شود به طور پیش‌فرض این 2 تابع 6 سطر بازگردانند.

یک راه دیگه شناختن مربع داده ها استفاده از تابع str( ) است. که به ما تعداد مشاهدات، تعداد متغیرها، نوع داده، نوع داده متغیرها و..... رومی‌گوید .

<div dir="ltr" class="ltr-block">
```r
حالا بریم یک dataset بسازیم و روی اون پیش بریم. با استفاده از data.frame( )
```
</div>


> **تمرین:** می‌خواهیم یک data.frame ایجاد کنیم و اطلاعاتی رو راجع به سیارات داخلش بریزیم اول 5 بردار بسازین و داده ها رو توش وارد کنید و بعد از روش data.frame بسازین.

> **تمرین:** حالا ساختار داده اش رو با استفاده از Str( ) ببین توی data.frame هم آدرس دهی مثل ماتریس هست.

> **تمرین:** مشخصات عطارد و اطلاعات مریخ رو نشون بدهید و یادتون هست که می‌شود در ماتریس ها با استفاده از اسامی مقادیر رو خونه. توی data.frame هم به همین ترتیب هست. مثلا

می‌شود هم به ازای هر متغیر از $ استفاده کرد.

> **تمرین:** با این روش یک بردار از حلقه با سیارات بسازین و بعد با استفاده از اون مشخصات تمام سیاره هایی که حلقه دارن رو نشون بدهید.

همه کارهای مثال قبل رو می‌شود باید تمامی به اسم subset( ) انجام داد.

Subset 3 تا Arguman داره. اولی انتخاب میکنه دیتا رو. دومی شرط و سومی که با select میاد می تونین بگویید کدام ستونها رو می خواین انتخاب کنید.

> **تمرین:** subset اطلاعات سیاراتی که قطرشون از 1 کوچکتر هست رو نشون بدهید.

خیلی وقتها پیش میاد که ما می‌خواهیم داده ها رو مرتب کنیم. (مثال) مرتب کردن محصولات بر حسب فروش، نمره ها در یک کلاس، محبوبیت یک فیلم و ... با استفاده از تابع order( ) می تونیم داده ها رو مرتب کنیم.

> **تمرین:** حالا شما از Df مربوط به سیارات، کل سیارات رو بر اساس قطر مرتب کنید و همه اطلاعتشون رو نشون بدهید.

## List

**کد: list و [[ ]] / $ (r2)**

<div dir="ltr" class="ltr-block">
```r
lst <- list(vec = dollars, fac = genderFac, mat = mat1, df = SolarSys)
lst$fac
lst$fac[3]
lst$df$Planet
names(lst)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] M F M F M M
Levels: F M
[1] M
Levels: F M
[1] "Mercury" "Mars"   
[1] "vec" "fac" "mat" "df" 
[1] "vec" "fac" "mat" "df" 
```
</div>


لیست ها هم یک نوع از داده ها هستند که نه براشون اندازه مهمه و نه جنس داده. (توی data.frame داده های ستونها می تونستن با هم فرق کنن ولی نوع داده در هر ستون یکسان است) پس توی list می‌تواند تمام تمام فرمت های داده ای که تا الان یاد گرفتیم بعلاوه خود list می تونه قرار بگیره.

برای ساخت لیست از تابع list( ) استفاده می‌کنیم.

در list به هر component می‌توان یک اسم اختصاصی داد. مثلا list(name1,comp1,….) یا می‌شود مثل قبل از تابع names( ) استفاده کرد.

> **تمرین:** یک لیست با این اطلاعاتی که میگم بسازین

اسم فیلم . the shining

بازیگران.

توی لیست برای دسترسی به هر component از [[ ]] یا اگر اسم داره از $ استفاده می‌کنیم و برای رسیدن به جزییات قدی component مثل قبل عمل می‌کنیم.

> **تمرین:** با آدرس دهی، اسامی بازیگران رو نشون بدهید و بعد از توش بازیگر دوم رو نشون بدهید. کافیه با استفاده از [[ ]] یک اندیس جدید ایجاد کنیم و به اون مقدار بریم. داخل اون می‌تواند اسم یا اندیس شی جدید با شما

> **تمرین:** سال 1980 رو با اسم به list قبل اضافه کنید و بعد ساختار list رو نمایش بدهید.

## مباحث کاربردی R

کاربرد عملگرهای ! , | , &

بردارهای منطقی TRUE/FALSE (در عملگرهای دوتایی recycling انجام می‌شود)

> **تمرین:** داده‌های log.df رو import کنید. اینها داده های view مربوط به کارکنان هستند و برای ما مهمه که بدونیم کدوم کارکنان چقدر دیده میشن حالا می‌خواهم که شما کل داده های مربوط به روز دوم رو انتخاب کنید، و بعد ببین چند نفر بردن که بیشتر از 25 بازدید یا کمتر از 5 بازدید داشت.

## If (شرط)

**کد: if ساده (3.Rhistory)**

<div dir="ltr" class="ltr-block">
```r
x <- 2
if (x %% 2 == 0) {
  print("even")
} else {
  print("odd")
}
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "even"
[1] "odd"
[1] "odd"
```
</div>


**کد: if / else if / else (3)**

<div dir="ltr" class="ltr-block">
```r
x <- 1
if (x %% 2 == 0) {
  print("divisable by 2")
} else if (x %% 3 == 0) {
  print("divisable by 3")
} else {
  print("neither divisable by 2 nor 3")
}
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "neither divisable by 2 nor 3"
[1] "neither divisable by 2 nor 3"
```
</div>


**کد: تمرین آپارات/YouTube (الگو)**

<div dir="ltr" class="ltr-block">
```r
aparat <- 5
youtube <- 9
if (aparat >= 15 & youtube >= 15) {
  print((aparat + youtube) * 2)
} else if (aparat < 10 | youtube < 10) {
  print((aparat + youtube) * 0.05)
} else {
  print(aparat + youtube)
}
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 0.7
[1] 0.7
```
</div>


شرطها (در شرط‌ها یک مقایسهٔ منطقی انجام می‌شود) یک مقایسه منطقی انجام میدن. در صورتی که نتیجه اش TRUE باشه یک سری کارهای کنن و اگر نباشه یکسری کارهای دیگه.

توضیح elseif

دقت کنید که اگر شروطتون هم پوشانی داشته باشن مابقی شروط کل چک نش

> **تمرین:** 2 تا متغیر تعریف کنید توی (مثلا media ) یکی مقدار Aparat رو بریزین و توی اون یکی رو بهش مقدار بازدیدها یعنی عدد 14 رو برین. چک کنید اگر متغیر اول برابر با Aparat بود پیغامی نشون بده که این اطلاعات مربوط به Aparat هست و اگر نبود بنویسه ناشناخته. همینطور چک کنید اگر بازدیدها بیشتر از 15 بود بنویسه پر بازدید و اگر نبود بنویسه بیشتر تلاش کنید. (2 تا شرط)

> **تمرین:** 2 تا متغیر آپارات و YouTube بسازین. آپارات رو بهش مقدار5 و YouTube رو 9 بدهید. حالا یک سری شروط بنویسن به این صورت

-اگر هر دوی آپارات و یوتیوب 15 یا بیشتر بازدید داشتن تعداد مجموع بازدیدها رو ضرب در 2 کنید و نشون بدهید (به‌عنوان امتیاز) .

- اگر هر دوی آپارات و یوتیوب کمتر از 10 یا بیشتر بازدید داشتن تعداد مجموع بازدیدها رو ضرب در 5% کنید و نشون بدهید (به‌عنوان امتیاز) .

-در غیر این صورت فقط مجموع بازدیدها رو نشون بدهید.

## While loop

**کد: while و state changer (3)**

<div dir="ltr" class="ltr-block">
```r
x <- 10
while (x > 0) {
  print(x)
  x <- x - 1
}
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 10
[1] 9
[1] 8
[1] 7
[1] 6
[1] 5
[1] 4
[1] 3
[1] 2
[1] 1
```
</div>


**کد: while با break (الگوی تمرین)**

<div dir="ltr" class="ltr-block">
```r
speed <- 48
while (speed > 30) {
  if (speed > 48) {
    speed <- speed - 11
    print("slow down a lot")
  } else {
    speed <- speed - 6
    print("slow down")
  }
}
speed
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "slow down"
[1] "slow down"
[1] "slow down"
[1] 30
[1] 30
```
</div>


توضیح while (تا وقتی اجرا می‌شود که شرط برقرار هست)

> **تمرین:** مثال قبل رو با این تغییرات حل کنید. بازم می‌خواهیم تا وقتی سرعت بزرگتر از 30 هست سرعت رو کم کنیم. اگر بیشتر از 48 بود از اون 11 تا کم کنیم و پیغام بدیم که سرعت رو خیلی کم کن. اگر نه هم 6 تا کم کنیم و بگیم سرعت رو کم کن.

Break در صورتی استفاده می‌شود که بخوایم بعد از اتفاق افتادن یک شرایطی دیگه حلقه رو ادامه ندیم. مثلا بعد از پیدا کردن یک مقدار خاص توی یک بر دار باقی اسامی خوانده نشوند.

تابع paste( ) از طریق این تابع می تونین مقادیر مختلف رو به هم بچسبونین. این تابع مقادیر رو به char تبدیل میکنه و به هم می چسبونه.

> **تمرین:** یک متغیر با مقدار اولیه 1 بسازین و تا وقتی که مقدارش کوچکتر از 10 بود مقادرش رو ضرب در 3 کنید و نمایش بدهید. اگر 3 تا بر 8 قابل تقسیم بود 3 تا رو نمایش بدهید و از حلقه خارج بشین می‌خواهیم در هر بار اجراهم 1 واحد به اضافه کنیم.

## For loop

**کد: for روی بردار (3)**

<div dir="ltr" class="ltr-block">
```r
names <- c("ali", "samin", "arshia", "hooman", "arman", "chamin")
for (name in names) {
  print(name)
}
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "ali"
[1] "samin"
[1] "arshia"
[1] "hooman"
[1] "arman"
[1] "chamin"
--- break ---
[1] "ali"
[1] "samin"
[1] "arshia"
[1] "found!"
--- next ---
[1] "ali"
[1] "samin"
[1] "arshia"
[1] "arman"
[1] "chamin"
```
</div>


**کد: paste و for روی seq (3)**

<div dir="ltr" class="ltr-block">
```r
paste("ali", "sadeghi")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "ali sadeghi"
```
</div>


<div dir="ltr" class="ltr-block">
```r
paste("ali", "sadeghi", sep = "")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "alisadeghi"
```
</div>


<div dir="ltr" class="ltr-block">
```r
paste("ali", "sadeghi", sep = "-")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "ali-sadeghi"
```
</div>


<div dir="ltr" class="ltr-block">
```r
paste("x", 1:6, sep = "")
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "x1" "x2" "x3" "x4" "x5" "x6"
```
</div>


<div dir="ltr" class="ltr-block">
```r
paste(c("ali", "hassan"), c("sadeghi", "eskandari"))
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "ali sadeghi"      "hassan eskandari"
```
</div>


از حلقه for زمانی استفاده می‌کنیم که بخوایم یک اتفاقی به تعداد مشخصی بیفته. مثلا

بر خلاف خیلی از زبونها مستقیما حرکت می‌کند روی خود مجموعه.

بدونین که یکجور دیگه هم می‌شود forloop رو نوشت.

تابع length( ) به شما طوری یک آرایه رو می‌گوید. (اندازه اش). روی بردارها یا فاکتورها هم کار میکنه.

> **تمرین:** لیست از این اطلاعات بسازین و با حلقه اطلاعات رو بخونین.

نام شهر = New York

جمعیت = 84-5837

شهرک ها = منهتن و برونکس و بروکلین و کونیز و جزیره استاتن پایتخت نیست

> **تمرین:** یک ماتریس 3 و 3 بسازین و تک تک عناصرش رو با استفاده از for نمایش بدهید جوری که بنویسه عنصر مربوط به سطر فلان و ستون فلان انقدره. و یک عبارت دیگه هم توی حلقه ها داریم به اسم next که کارش اینه که از روی یک قسمتی از حلقه بپره.

یک تابع strsplit که 2 تا آرگومان اصلی داره یکی یک متن و دیگری character که می خواد با استفاده از اون متن رو بشکنه

> **تمرین:** یک متغیر تعریف کنید و توش seyed Ali sadeghi Aghili رو ذخیره کنید. با استفاده از strsplit و حرف به حرف بشکنیدش و توی یک متغیر ذخیره اش کنید. ساختارش رو با استفاده از تابع str ببینن و بعد یک متغیر دیگه بسازین که تعداد ها رو بشماره و مقدار اولیه اش رو بزارین دقت کنید که به ازای هر باید یک واحد به شمار نده اضافه بشه و اگر به g رسید از حلقه خارج بشه و نتیجه رو چاپ کنه.

## Function

**کد: تعریف تابع (3-2.Rhistory)**

<div dir="ltr" class="ltr-block">
```r
triple <- function(num) {
  return(num * 3)
}
triple(num = 12)
triple(num = 10)
result <- triple(num = 12)
result
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 36
[1] 30
[1] 36
[1] 36
```
</div>


**کد: آرگومان و default (3-2)**

<div dir="ltr" class="ltr-block">
```r
multiply <- function(num1, num2) {
  return(num1 * num2)
}
multiply(num1 = 12, num2 = 4)
multiply <- function(num1 = 1, num2) {
  return(num1 * num2)
}
multiply(num2 = 4)
sayHello <- function() { return("Hello") }
sayHello()
num2pow <- function(num, pow = 1) {
  return(num ^ pow)
}
num2pow(12)
num2pow(12, 2)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 48
[1] 4
[1] "Hello"
[1] "2026-09-20"
[1] 12
[1] 144
[1] 144
```
</div>


**کد: توابع پایه و sample (3-2)**

<div dir="ltr" class="ltr-block">
```r
mean(1:5)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 3
```
</div>


<div dir="ltr" class="ltr-block">
```r
sd(1:5)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1.581139
```
</div>


<div dir="ltr" class="ltr-block">
```r
abs(c(-1, 2, 3, -4, 5))
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 1 2 3 4 5
```
</div>


<div dir="ltr" class="ltr-block">
```r
seq(from = 1, to = 20, by = 2)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1]  1  3  5  7  9 11 13 15 17 19
```
</div>


<div dir="ltr" class="ltr-block">
```r
seq(from = 20, to = 1, by = -3)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 20 17 14 11  8  5  2
```
</div>


<div dir="ltr" class="ltr-block">
```r
rev(1:10)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 10  9  8  7  6  5  4  3  2  1
```
</div>


<div dir="ltr" class="ltr-block">
```r
sample(x = 1:10, size = 1)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 9
```
</div>


<div dir="ltr" class="ltr-block">
```r
sample(x = 1:10, size = 3, replace = TRUE)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 9 4 7
```
</div>


**کد: تمرین تابع تاس (الگو)**

<div dir="ltr" class="ltr-block">
```r
dice <- function(verbose = FALSE) {
  a <- sample(x = 1:6, size = 1)
  b <- sample(x = 1:6, size = 1)
  if (verbose) print(paste("dice1 =", a, ", dice2 =", b))
  return(a + b)
}
dice(verbose = TRUE)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "dice1 = 1 , dice2 = 5"
[1] 6
[1] 6
```
</div>


تعریف تابع (جعبه سیاه)

تابع args() در مقابل help

تابع mean( )

تابع abs( )

تابع sum()

## ایجاد function

هدف مفهوم black box می‌خواهیم 2 تابع بسازیم که مقادیر رو 3 برابر کنه.

Return رو می‌شود گذاشت. می‌شود نگذاشت چون آخرین خط function‌ها همیشه return هست.

می تونیم تابع با هر چند تا Arg که می‌خواهیم بنویسیم.

تعریف default – e.g قبل و 0=g

> **تمرین:** یه تابع بنویسید که 3 تا عدد بگیره، قدر مطلقشان رو با هم جمع کنه و نتیجه رو نمایش بده.

تابع بدون Arg – تاسی که از بیرون چیزی نمی خواد. خودش یکسری چیزها رو حساب میکنه و نتیجه رو باز می‌گرداند. مثلاٌ می خواد زمان

تابع بدون Arg – سیستم رو بگیره نمایش بده یا – eg

تابع بدون Arg – عدد تصادفی تولید میکنه

> **تمرین:** یه تابع بنویسید که بدون Arg باشه، 2 تا عدد از 1 تا 6 تولید کنه و با هم جمع کنه و بعد نتیجه رو نمایش بده.

> **تمرین:** تابع رو تغییر بدهید که یک Arg بگیره یا پیشفرض false . اگر مقدار tevs بهش داده شد بگه که هر عدد هر تاس چقدر بوده.

> **تمرین:** یعنی دو تا بردار داریم از بازدیدهای YouTube aparat می‌خواهیم یه تابع بنویسن که اگر متد و بازدیدها بیشتر از 15 بود یه پیغام بده که video محبو--- و مقدار رو برگردونه و در غیر این صورت چاپ کنه نامحبوب و 5 رو برگردونه بعد یه تابع دیگه بنویسید که مقدار نتیجه تابع قبل و به مقدار False,Teus بگیره. اگر Trvs بود مجموع مقادیر بیشتر از 15 روهم نمایش بده و در غیر این صورت نده.

## Package

**کد: library / detach / search (3-2)**

<div dir="ltr" class="ltr-block">
```r
.libPaths()
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "C:/Users/alisa/AppData/Local/R/win-library/4.6"
```
</div>


<div dir="ltr" class="ltr-block">
```r
search()
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] ".GlobalEnv"        "package:stats"     "package:graphics" 
[4] "package:grDevices" "package:utils"     "package:datasets" 
[7] "package:methods"   "Autoloads"         "package:base"
```
</div>


<div dir="ltr" class="ltr-block">
```r
head(installed.packages()[, "Package"], 8)
```
</div>


<div dir="ltr" class="ltr-block">
```text
A3          abc     abc.data        abcrf        abind      acepack 
        "A3"        "abc"   "abc.data"      "abcrf"      "abind"    "acepack" 
  AICcmodavg     airports 
"AICcmodavg"   "airports"
```
</div>


Package چیه ؟ (همه توابعی که ما به صورت built-in استفاده می‌کنیم عنصری از Package ها متن) .

بعضی از Package ها به صورت پیش‌فرض نصب می‌شوند به همراه نصب محیط و base هستند.

پکیج‌ها معمولاٌ از طریق CRAN نصب میشن. ولی برای اینکه بتونیم از Package ها استفاده کنیم باید آن‌ها را load کنیم که برای اینکار از تابع

<div dir="ltr" class="ltr-block">
```r
وقتی Package‌ها load می‌شوند در واقع به یک لیست قابل جستجویی برای R اضافه میشن. برای اینکه این list رو بتونیم ببینیم. می تونین از تابع search() استفاده کنید.
یک تابع دیگه هم برای load کردن Package ها داریم به نام require( ) . این تابع یه فرق بزرگ با library( ) داره اونهم اینکه اگر یک Package نصب شده باشه و از library استفاده کنیم به یک error بر می خوریم که باعث توقف برنامه می‌شود ولی با استفاده از require فقط یک warning می گیرم.
```
</div>


## خانواده apply

خیلی وقتها ما می‌خواهیم که یک کار تکراری رو روی یک مجموعه از داده هامون انجام بدیم. اینجاست که خانواده applg خیلی مفید هستن.

## lapply

تابع lapply( ) – eg می‌خواهیم ببینیم هر شهر چند حرفه

می‌شود func هایی که خودمان نوشته‌ایم هم استفاده کنیم من می تونم زباله هام رو کیلویی 3 هزار تومن بفروشم.

lapply همیشه list باز می‌گرداند . برای خارج کردنش از فرمت list می‌شود از تابع unlist() استفاده کرد.

می‌شود از تابع lapply برای func های با چند آرگومان هم استفاده کرد. مثلاٌ تابع قبل رو می‌خواهیم هر دفعه بهش بگیم ضربدر چه عددی بکنه.

تابع tolower کافیه مقدار باقی آرگومانها رو بلافاصله بعد از تابع ذکر کنیم.

> **تمرین:** یک بردار از اسامی آدمها و سال تولد شدن داریم. با استفاده از تابع split اسامی شدن رو از تاریخ جدا کنید و با استفاده از تابع tolower( ) اسامی رو به حروف کوچک تبدیل کنید. بعد 2 تا تابع بنویسید به طوری که یکی اسامی رو انتخاب کنه و یکی سالها رو. با استفاده از lapply اونها رو توی 2 تا متغیر بریزید.

> **تمرین:** مثال قبل رو جوری حل کنید. که تنها با یک func حل بشه (به‌جز …,split,lapply )

## sapply

همون lapply ساده شد ه است. lapply لیست باز می‌گرداند و بعد لازم بود که اون رو unlist کنیم. با sapply نیاز به اونکار نیست علاوه بر این نتایج رو با اسم به ما باز می‌گرداند.

اگر می‌خواهیم که اسامی رو برنگردونه یک آرگومان داره به نام use.names که می تونیم برابر false قرارش بدیم.

> **تمرین:** یک تابع بنویسید که میانگین کمترین مقدار و بیشترین را محاسبه کند و با استفاده از توابع lapply,sapply آنرا بر روی tempvature,dataset پیاده سازی کنید.

> **تمرین:** در تمرین قبل تابع خود را طوری تغییر دهید که همزمان max,min را بدهد.

تابع identical به جای ---- e.g ----- و identical( 2,2)

<div dir="ltr" class="ltr-block">
```r
تابع cat مثل paste هست e.g (ali,saleghi ) cat (ali,sadghi )cat<-cat وcat و str,cat
```
</div>


sapply همیشه قابل اعتماد نیست مخصوصاٌ در برخورد با توابعی که ممکنه NULL برگردانند e.g

## sapply

از اونجایی که تابع sapply خیلی مطمئن نیست و ممکن هست که به sapply تبدیل بشه می‌شود از vapply استفاده کرد. که هم مطمئن تره و ما اندازه و نوع خروجی رو توش می‌کنیم و هم گاهی سریع تره.

> **تمرین:** به مثال قبل تابع median رو هم اضافه کنید و تغییرات رو اعمال نتیجه رو نمایش بدهید.

می‌شود توابع رو به صورت Anonymous هم نوشت

تابع is.*() چک میکنه فرمت خروجی رو

تابع as.*() تبدیل میکنه خروجی رو . e.g

## Regular expression

می‌خواهیم ببینیم یه فرم خاصی از داده بین داده های ما وجود داره یا نه .

## Grep, grepl

**کد: grep / grepl (3-2)**

<div dir="ltr" class="ltr-block">
```r
words <- c("book", "nook", "back", "black", "pick", "peak", ...)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 14
```
</div>


<div dir="ltr" class="ltr-block">
```r
grep(pattern = "b", x = words)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1]  1  3  4 10 12
```
</div>


<div dir="ltr" class="ltr-block">
```r
words[grep(pattern = "b", x = words)]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "book"  "back"  "black" "bomb"  "amber"
```
</div>


<div dir="ltr" class="ltr-block">
```r
grepl(pattern = "b", x = words)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1]  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE
[13] FALSE FALSE
```
</div>


<div dir="ltr" class="ltr-block">
```r
words[grepl(pattern = "^b", x = words)]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "book"  "back"  "black" "bomb"
```
</div>


<div dir="ltr" class="ltr-block">
```r
words[grepl(pattern = "b$", x = words)]
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "bomb"
```
</div>


**کد: تمرین email با grepl (3-2)**

<div dir="ltr" class="ltr-block">
```r
emails <- c("javad.rasooli@bpmn.edu", "education@world.gov",
            "babak.pirooz@peace.org", "@invalid.edu",
            "sadeghi@apbarez.edu", "hassaneskandari@codeman.ir")
emails
emails[grepl(pattern = "@", x = emails)]
emails[grepl(pattern = "\\.edu$", x = emails)]
```
</div>


<div dir="ltr" class="ltr-block">
```text
Error: '\.' is an unrecognized escape in character string (<input>:7:32) 
```
</div>


از دو تا تابع grepl( ) که مقدار منطقی باز می‌گرداند و grep() که اندیس باز می‌گرداند استفاده می‌کنیم هر دو دنبال یک pattern توی داده های گردن. e.g

> **تمرین:** با استفاده از تابع grepl( ) و دیتاست email, emails هایی که در آنها .edu وجود دارد را نمایش دهید. (اندیس هانه ! خود mail

توی regex از ^ برای نمایش ابتدای رشته و $ برای انتهای رشته استفاده می‌شود، از ٌ .*ٌ هم برای هر چی استفاده می‌شود. از ٌ 11 ٌ هم برای گذشتن از یک کاراکتر مثلاٌ – برای اینکه نقطه باقی بمونه.

> **تمرین:** مثال قبل کامل نبود چون بعضی از email ها @ نداشتن و بعضی به .edu ختم نمی شدن در حالی که ما اونها رو می‌خواهیم. پس می تونیم اینجوری تغییر بدیم.

> **تمرین:** مثال تبلتون رو اصلاح کنید

## Sub, gsub

**کد: sub / gsub (3-2)**

<div dir="ltr" class="ltr-block">
```r
sub(pattern = "oo", replacement = "*", x = words)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "b*k"   "n*k"   "back"  "black"
```
</div>


<div dir="ltr" class="ltr-block">
```r
gsub(pattern = "o", replacement = "*", x = words)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "b**k"  "n**k"  "back"  "black"
```
</div>


تابع grepl,grep برامون جای یک فرمت رو پیدا می کردن و توابع gsub, sub می تونن اون بخش از داده رو جایگزین کنن.

Sub اولین match رو جایگزین می کنه و gsub همه رو 3 تا آرگومان میگیره (فرمت، مقدار جدید و داده ) .

> **تمرین:** مثال قبل رو gsub( ) حل کنید و مقدار رو با daelesayan.ir @ جایگزین کنید.

ٌ11 ٌ یک کاراکتر خاص رو مشخص می کنه مثل ٌut ٌ و ٌ us ٌ و ٌ nm ٌ

[0-9]+ حداقل یک عدد وجود داشته باشه

1تا 0

Groupig( )

## تاریخ و زمان

**کد: as.Date / strptime / strftime (3-2)**

<div dir="ltr" class="ltr-block">
```r
date <- "2026-09-17"
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "2026-09-17"
```
</div>


<div dir="ltr" class="ltr-block">
```r
class(date)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "character"
```
</div>


<div dir="ltr" class="ltr-block">
```r
dated <- as.Date(date)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "2026-09-17"
```
</div>


<div dir="ltr" class="ltr-block">
```r
class(dated)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "Date"
```
</div>


<div dir="ltr" class="ltr-block">
```r
unclass(dated)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 20713
```
</div>


<div dir="ltr" class="ltr-block">
```r
dated + 1
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "2026-09-18"
```
</div>


<div dir="ltr" class="ltr-block">
```r
dated + 365
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "2027-09-17"
```
</div>


<div dir="ltr" class="ltr-block">
```r
Sys.Date()
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "2026-09-20"
```
</div>


<div dir="ltr" class="ltr-block">
```r
Sys.time()
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "2026-09-20 15:08:42 +0330"
```
</div>


**کد: strptime / strftime (3-2)**

<div dir="ltr" class="ltr-block">
```r
timed <- strptime(x = "09/17/2026", format = "%m/%d/%Y")
timed
strftime(x = timed, format = "%Y")
strftime(x = timed, format = "%A")
strftime(x = timed, format = "%y, %A/%b, %d")
dimDate <- data.frame(fullDate = as.Date("2026-09-17") + 0:365)
head(dimDate)
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] "2026-09-17 +0330"
[1] "2026"
[1] "Thursday"
[1] "26, Thursday/Sep, 17"
    fullDate
1 2026-09-17
2 2026-09-18
3 2026-09-19
4 2026-09-20
5 2026-09-21
6 2026-09-22
    fullDate
1 2026-09-17
2 2026-09-18
3 2026-09-19
4 2026-09-20
5 2026-09-21
6 2026-09-22
```
</div>


متدی R توابع مختلفی برای تاریخ و زمان داریم –

Sys.time( ) مثل خیلی از زبان‌های دیگه زمان را بر حسب ثانیه از ژانویهٔ 1970 نگه می‌دارد هست. و برای Sys.Date همون بعد اولی به روز هست.

<div dir="ltr" class="ltr-block">
```r
برای تبدیل یک عدد یا کاراکتر به تاریخ از تابع as.Date استفاده می‌کنیم. Edate<-13 January1982 e.g با استفاده آرگومان format این تابع می تونیم فرمت دلخواهمون رو از اون استخراج کنیم توی این آرگومان مقادیر مختلفی می‌تواند بشینه.
```
</div>


اصولاٌ R اگر as.Date بدون فرمت وارد بشه اونو به‌عنوان یا تبدیل می کنه. بر عکس اینکارم می‌شود با تابع format کرد یعنی وقتی می‌خواهیم یک تاریخ رو به رشته تا فرمت خاص تبدیل کنیم.

> **تمرین:** 3 تا رشته زیر رو با فرمت مناسب به تاریخ تبدیل کنید و توی متغیر ذخیره کنید.

حالا متغیرها رو با استفاده از تابع فرمت به رشته تبدیل کنید. از اول روز هفته، از روی روز و از سوی مختصر ماه فاصله سال کاملو می‌خواهم.

مثل تاریخ برای زمان هم می تونیم از تابع as.POSIXct استفاده کنیم که یک رشته رو به یک زمان تبدیل کنیم.

همین طور مثل قبل برای عکس این عمل می‌شود از تابع format استفاده کرد.

توی strptime تمام فرمتها رو نوشته ولی مهمترین هاش هستن.

همین طور که گفتیم R به زمان و تاریخ به چشم عدد نگاه میکنه پس می‌شود اعمال ریاضی هم روش انجام داد.

یه تابع داریم difftime که اختلاف بین هر 2 تا مقدار پشت هم رو بهمون می‌گوید

> **تمرین:** برای کنترل رژیم غذا یمون تصمیم گرفتیم تاریخ 5 روز آخری که pizza در می خوریم رو ثبت کنیم. اونها رو توی متغیرهایی Day1 تا Day5 ذخیره کردیم. فاصله زمانی بین اولین روز و آخرین روز رو حساب کنید، بعد فاصله بین هر 2 دفعه پیتزا خوردن رو نمایش بدهید.

محاسبات یا زمان هم به همین شکل هست با این تفاوت که بر حسب ثانیه هست مثلاٌ میخوام یک ساعت دیگه رو نمایش بدم.

> **تمرین:** فکر کنید یک وبسایت داریم که کاربر برای استفاده ازش باید حسابش وارد بشه و وقتی کارش تموم شد هم خارج می‌شود. می‌خواهیم بدونیم میانگین و کل زمانی که یک کاربر بخصوص توی سایت صرف کرده چقدره؟ این اطلاعات مربوط به 5 دفعه تراکنش آخرش هست. زمانی که کاربر هر بار توی سایت گذرونده، کل زمانی که گذرونده و میانگین زمانش رو نمایش بدهید.

> **تمرین:** داده های مربوط به نمره های یک دانش آموز خاص و 199 دانش آموز دیگر یک کلاس درس در سال جاری در متغیرهای Dthes.me موجوداند. همچنین داده های مربوط به شاگردان 4 سال گذشته همین کلاس نیز موجود است. داده ها را تجمیع کنید و در یک متغیر بریزید. پس با استفاده از تابع paste ستونها را به صورت سال اول، دوم و .... نام گذاری کنید.

جدا ساختن به دو تا تابع boxplot,hist

تنها یک Arguman اون هم همین دیتا که ساختین

رو بهش بدهید ببین چی می‌شود

یه تابع داریم تابع hist( ) برامون histogram میکشه.

بدهید بخونین ببین چطوره

و یه تابع دیگه داریم به اسم boxplot( )

می‌شود اعمال دیگری هم روی داده های زمان و تاریخ انجام داد مثلاٌ

یک تابع دیگر هم داریم به اسم weekdays( ) که می‌تواند به شما بگه

یک تابع هم داریم که داده رو به میلادی بهتون می‌گوید

حتی می‌شود از تابع seq هم برای تولید زمان استفاده کرد.

یک تابع دیگه داریم difftime که اختلاف 2 زمان رو بهمون میده.

می‌شود حتی واحد رو براش مشخص کرد.

> **تمرین:** توی کلاس شما چند نفر نمرشون بالای 75 و چند نفر بالاتر از شما هستند؟

> **تمرین:** طی 5 سال اخیر چند درصداند در نمره هاشون کوچکتر یا برابر 64 بوده؟

تعداد نفراتی که توی کلاس شما نمره بالای 80 دارن رو ذخیره کنید. و بعد کوی بنویسین که اگر اینجا تعداد بالای 50 بود چاپ کنه کلاس قوی و در غیر این صورت بنویسه کلاس معمولی

> **تمرین:** کری بنویسن که توی اون اگر نمره شما از 50% افراد بهتر بود بنویسه شما جزو 10 درصد بالا هستن، اگر از 60% افراد بهتر بود بنویسه شما از 80 درصد افراد بهتر هستین و در غیر این صورت بنویسه تحلیل بیشتری نیازه

> **تمرین:** نمرات بزرگتر یا ساری 85 رو به‌عنوان نمرات برتر و زیر 65 رو به‌عنوان نمرات در نظر بگیرید و نمایش بدید و دستوری بنویسد که اگر تعداد نمرات برتر از نمرات بر بیشتر بود چاپ کند نمرات برتر بیشتراند.

> **تمرین:** loop

> **تمرین:** تصور کنید که توی یک پتروشیمی کار می کنید و در چند روز گذشته یک سری مشکلات و ایرادات پیش‌بینی نشده براتون به وجود آمده. بنابراین تصمیم گرفتین log مربوط به 4 روز گذشته اتفاقات رو بررسی کنید. سیستم کنترلی تقریباٌ در هر ساعت یک پیغامی در رابطه با وضعیت سیستم ایجاد می کنه. Details مربوط به عنصر 4 ام در log رو نشون بدهید.

> **تمرین:** می‌خواهیم بدونیم چه تعداد پیغام بودن خطا( success برابر TRUE ) قبل از اولین خطا (success=FALSE ) وجود داشته.

> **تمرین:** توی مثال قبل می‌خواهیم پیغام ها ( message ) ها رو تا قبل از اولین خطا بخونیم. دقت کنید که پیغام یک بخشی از details هست (بهتر نگاهی به ساختار داده بکنید) .

> **تمرین:** توی جلسه توی همین کمپانی متوجه شدیم که خرابی توی بخش ضایعات (waste) رخ داده. بنابراین می‌خواهیم باز هم با استفاده از while داده ها رو بگردیم تا به اولین خرابی توی waste برسیم. تا زمانی که به خرابی waste نرسیم چاپ بشه در حال جستجو و هنگامی که یافت شد چاپ بشه یافت شد.

> **تمرین:** حلقه ای بنویسید که timestamp تمام عناصر logs رو پرینت کنه.

> **تمرین:** می‌خواهیم تمام داده های timestamp رو به فرمت تاریخ در بیارید و این ساختار جدید رو به logs اضافه کنید. و بعد 6 عنصر اول logs رو نمایش بدید.

> **تمرین:** مدیرتون به سراغتون آمده و گفته از کل logs فقط اونجاهایی که به شکل خوردید رو می خواد. گزارش رو بسازید و نمایش بدید. دقت کنید که اینجا اول یک لیست خالی احتیاج دارید.

اگر دو تا list داریم و می‌خواهیم به هم بچسبونیمشون

(یکی لیست دو لیست دیگری هست) می‌توان از

c(a, list) استفاده کرد.

> **تمرین:** function

> **تمرین:** timestamp و مقدار و تاریخ شده این زمان را بدست آورید.

> **تمرین:** قبل را بر روی داده های times tamps with NA انجام دهید.

> **تمرین:** تابعی بنویسید که از dataset مربوط به logs تمام timestamp ها بخواند و نمایش دهد.

> **تمرین:** در داده های logs 3 مشخصه اصلی وجود دارد. Timestamp, details, success . تابع قبل را طوری تغییر دهید که بنا به در خواست کاربر یکی از این سه استخراج شود.

> **تمرین:** تابعی بنویسید که درصد مشکلات در Data ( آنجایی که success برابر false هست) رو نشون بده.

Utils –

Readr –

Read.table –

> **تمرین:** 

Readxl

Gdata

Xlconnect

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

## پکیج data.table

به درد دستکاری داده در R

سرعت بسیار بالای داره

بسیار مناسب برای کارکردن با داده های حجیم

## تابع fread()

مشابه تابع read.table( ) ولی بسیار سریع تر است.

تعداد خیلی زیادی آرگومان داره که از بین اونها فعلاٌ برای ما selectt, drop از همه مهم تر هستن.

> **تمرین:** می‌خواهم ستون اره رو نگر دارم.

> **تمرین:** با استفاده از تابع fread() فقط ستونهای texture, moistness رو در فایل potatoes بخونین.

## ورود داده های excel

## Readxl پکیج

برای خوندن داده های Excel استفاده می‌شود و از هر دو پسوند Xlsx, Xls پشتیبانی میکنه و 2 تابع پرکاربرد داره excel-sheets( ) و read- excel

با استفاده از تابع dir( ) می‌شود فایل های یک دایرکتوری رودید.

این پکیج بسیار سریع هست.

## Excel-sheets( )

به‌عنوان اولین قدم لازمه بدونیم که فایل excel ما چه صفحاتی داره.

> **تمرین:** این اطلاعات مربوط به جمعیت شهری کشورهای مختلف توی 3 بازه زمانی متفاوت هست.

این تابع یک آرگومان دیگه هم داره که با استفاده از اسم shet یا شماره اون می‌شود بهش ارجاع داد که اگر excel چند شیت داره کدوم شیت import بشه.

در صورت مشخص نشدن فقط sheet اول import می‌شود.

> **تمرین:** سه صفحه excel رو توی 3 تا متغیر ذخیره کنید و بعد اونها رو توی یک list بریزین و ساختارش رو ببینین.

می‌شود از lapply هم استفاده کرد.

و یکی دیگه از آرگومانهای مهم read-excel ، آرگومان col-names هست.

به طور پیش‌فرض TRUE هست و به این معنی هستش که ستونهای فایل excel عنوان دارن.

اگر false بشه یعنی اون عناوین رو نمی‌خواهیم و R خودش اسم برای ما انتخاب میکنه.

می‌شود هم بهش یک بردار عناوین بدیم تا به ستونها تخصیص بده

Col-typo

> **تمرین:** از فایل wbam pap-nonames.xlsx

Sheet اول رو با نام pop-a ذخیره کنید طوری که اسامی رو خود R انتخاب کنه.

> **تمرین:** قبل را تکرار و نام ستونها رو به ترتیب برابر country ، به ترتیب gear از 1960 تا 1966 بگزارین.

summary هر دو رو بگیرین.

یک آرگومان skip هم وجود داره که مشخص میکنه چند سطر اولی باید خوانده نشد.

اگر perl نبود باید نصب بشه و بعد برای

## پکیج gdata

یک مجموعه ابزار برای دستکاری داده هست و بسیار قدرتمنده و همینطور می‌تواند به‌عنوان یک پکیج excel import کلیه استفاده می‌شود . به صورت پیش‌فرض xls و پشتیبانی میکنه.

مثل readxl دیگه هیچ تابع excel-sheet ای وجود نداره. بلکه میادو فایل exeel رو با استفاده از perl به csv تبدیل میکنه و بعد با استفاده از read.csv( ) اون رو به datafrece تبدیل میکنه.

بسیار انعطاف پذیره و تمام آرگومانهای read.table( ) براش قابل استفاده ولی از طرفی کند می‌شود اینجوری. با استفاده از تابع read-xls می‌شود داده هارو import کرد.

> **تمرین:** 70: مثال قبل رو با استفاده از تابع read.xls از پکیج gdata و داده های urbanpop چک کنید.

> **تمرین:** 71: شیت های wbanpop.xls رو بخونین و توی 3 تا متغیر ذخیره کنید. بعد هر 3 شیت و با هم ادغام کنید و توجه کنید که ستون اولی تکرار نشه. بعد با استفاده از تابع na.omit( ) داده های na دار رو از داده هاتون حذف کنید. و نتیجه summy رو نمایش بدهید.

## انجام کارهای Excel ای از داخل R

## پکیج Xlconnect

خیلی از کارهای پکیج‌های قبل رو می‌شود باهاش کرد علاوه بر اینکه از این طریق می‌شود با excel تعامل کرد.

برای کارکردن با این پکیج اولین قدم local کردن فایل excel در R از طریق تابع load workbook( هست. در واقع این تابع اتصال بین R و excel رو برقرار می کنه.

برای بدست آوردن نام sheet ها می‌توان از تابع getSheets() استفاده نمود.

بعد از این مرحله برای خواندن اطلاعات sheet می‌توان از تابع readWorksheet() استفاده نمود.

> **تمرین:** کل داده های urbanpop.xlsx رو با استفاده از پکیج XLConnect بخونین.

برای محدود کردن اطلاعات در تابع readWorksheet می‌توان از آرگومانهای startCol، endCol ، startRow و endRow استفاده کرد.

می‌خواهم ستونهای 3 تا 5 از sheet دوم فایل urbanpop.xlsx رو load کنم.

یا فقط ستون کشورها رو از sheet دوم load کنم.

## تابع createSheet( )

همین طور با این پکیج از داخل R می‌شود صفحه به sheet excel اضافه کرد. با استفاده از تابع createSheet( ) .

با استفاده از تابع write worksheet( ) می‌شود داخل sheet ها داده وارد کرد.

با استفاده از تابع saveWorkbook هم می‌شود نتیجه رو ذخیره کرد.

با استفاده از تابع renameSheet() می‌شود sheet ها رو rename کرد.

نهایتا با استفاده از تابع removeSheet() می‌شود sheet ها رو حذف کرد.

## ورود داده از DB

برای خواندن داده از DB های مختلف پکیج‌های مختلفی وجود داره مثل RODBC، RMYSQL، DOSTGEESQL، RORACLE، RSQLSEAVEN، ... در کنار تمام اینها یک پکیجی نصب می‌شود به نام DBI

## تابع db connect

اولین قدم توی تمام اینها ساخت رشته اتصال (connectionstring) هست که با استفاده از دستور dbconnect ایجاد می‌شود. البته آرگومانهایی که با استفاده از ... بهش پاس می‌شود بستگی به نوع DB داره.

آرگومان اولی drider را مشخص می‌کند.

## ورود داده از DB ها

- برای خواندن داده از DB ها در R پکیج‌های مختلفی وجود داره

## پکیچ DBI

در کنار تمام پکیجهای بالای بایت پکیج دیگری نصب بشه که با استفاده از اون driver ما مشخص بشه که اینکار با استفاده از پکیج DBI اتفاق می افته علاوه بر این اطلاعات دسترسی هم از این طریق با R ارسال می‌شود.

## تابع db connect

تابع dbconnect از پکیج DBI مواردی که در بالا شرح داده شد رو به همراه هر اطلاعات دیگه ای که مورد نیاز هست جمع آوری می کنه.

## پکیج Rsqlserver

## تابع dbListTables

این تابع نام تمام table های db را به ما می‌دهد.

## تابع dbListFields

این تابع نام تمام ستونها را بر می گرداند.

اگر دسترسی به db یا table ها به دلیل schema ها وجود نداشته باشه پیغام عدم وجود شی مورد نظر بر می گردد.

## تابع dbReadTable

کل یک table را در یک DF ، load می‌کند.

## تابع dbSendQuery

یک Querg را بر روی سرور اجرا می‌کند و نتیجه آنرا آماده ارسال می نماید.

## تابع dbFetch

نتیجه dbSendQuery را می خواند

## تابع dbClearResult

تمام منابع تخصیص یافته در مبدا و مقصد را آزاد می‌کند.

## تابع dbDisconnect

Cemnection را terminate و منابع را آزادی می‌کند.

> **تمرین:** نتایج dbfetch را در یک data.frame ذخیره کنید به طوری که داده های جدید به data.frame اضافه شدند.

## پکیج RODBC

راه دیگری برای خواندن داده از DB است. برای ساختن این package قبل از نوشتن connection می‌بایست connection ایجاد شود.

## تابع sqlQuery

با استفاده از این تابع می‌توان به Query, SQL ارسال کرد و نتیجه به صورت DF بر می گردد.

## تابع sqlSave

یک data frae رو توی DB مشخص شده ذخیره می‌کند.

## تابع sqlFetch

بخش یا کل یک table رو می خونه و توی یک DF ذخیره می‌کند.

## تابع sqlCopy

برای ذخیره کردن نتایج در یک DB یا table دیگر استفاده می‌شود.

## تابع sqlDrop

یک table را حذف می‌کند.

## تابع sqlClear

تمام سطرهای یک table را حذف می‌کند.

## تابع odbcClose

کانکشن را termindtc و منابع را آزاد می‌کند.

برای امنیت بیشتر با نصب پکیج rstudioapi و خواندن تابع askForPassword می‌توان در لحظه اجرا pass را از کاربر گرفت.

## خواندن داده از web

به‌عنوان یک تحلیل گر داده می دانیم که بخش عظیمی از داده ها در web وجود دارند. پس ما هم توی این بخش به اختصار به نحوه استفاده از داده های موجود و تکنولوژی های وب می پردازیم.

## مختصری درباره HTTP

مخفف HyperText Transfer Protocol هست. – قواعدی که از طریق آنها Data بین کامپیوتر ها جابجا میشن

-سنگ بنای web

HTTP Request

تمام این دستورها ممکن است بر حسب تنظیمات سرور و نسخه اون در دسترس نباشن یا پشتیبانی نشن و اونچه گفته شد برای حالت استاندارد هست.

خواندن url دو توابع پکیج‌های gdata, readr, utils امکان پذیره ولی پکیج readxl از dri پشتیبانی نمی‌کند از ورژن R3 حتی uttps هم خوانده می‌شود.

## تابع download

تا مدتها تنها راه چاره ما خواندن مستقیم اطلاعات از web بود ولی الان امکان download فایل ها توسط Hadley به پکیج utils اضافه شده برای اینکار از تابع download استفاده می‌شود.

خیلی reprochibl کمک می‌کند.

ممکنه گاهی مسدود بشه آرگومانها، دکمه --------

## پکیج httr

با استفاده از این پکیج nadly یک مجموعه کاملی برای کار با web رو در اختیار میگذاره.

## تابع Get

برای درخواستهای Get استفاده می‌شود و 3 مشخصه اصلی رو در اختیار میگذاره

## تابع content

بعد از آنکه resp با استفاده از Get دریافت شد می‌توان محتوا را با استفاده از تابع content استخراج کرد.

یک آرگومان as داره که جنس خروجی رو مشخص می‌کند

> **تمرین:** محتوای یک ساعت رو بخونین

## API

یکی دیگه از تکنولوژی هایی که توی web امروز استفاده می‌شود API ها هستند که الان معمولا json بر می گردونن.

API ها در واقع رابط هایی هستند که برنامه نویس ها برای امکان اتصال به سرویس هاشون اجازش رو می دن.

## چیست json

اصولا ارتباط با سرور از طریق text هست و json هم یکی از فرمتهایی هست که به مایک فایل ساختار یافته متنی میره syntax های json از JavaScript الهام گرفته شدن ولی امروز خودش رو مستقل میدونستن و توی خیلی از API ها استفاده می‌شود به صورت {name.ualue} هست. {name.ali} .

## پکیج jsonlite

با استفاده از این پکیج عملیاتی مختلفی روبروی کدهای json می‌شود انجام داد که به اختصار توضیح داده میشن.

## تابع fromJSON

به زیبایی و به طور کامل یک کد json رو به یک list در R تبدیل میکنه.

اگر بخوایم یک مجموعه به جای یک valae قرار بگیره از [ ] استفاده می‌شود و داخل اون مجدداٌ مقادیر naneucle قرار می گیرن.

## تابع fromJSON

با استفاده از این تابع می‌شود دستورات json رو توی R load کرد.

> **تمرین:** employees رو یکبار در R بخوانید و یکبار در R کپی یک سال به آن اضافه کرده و مجدداٌ بخوانید و Data مربوط به wine رو هم بخوانید.

## خواندن از API

تا الان دیدیم که می‌شود فایل ها رو ال کرد. ولی گاهی اینکار بسیار کند و زمان بر می‌شود. توی این موارد شاید بهتر باشه از API ها استفاده بشه خروجی API –

> **تمرین:** خواندن Quandl, xml

> **تمرین:** خواندن اطلاعات Inception,Dark knight

معمولاٌ jsonlite جنس خروجی (R object) رو درست تشخیص میده.

## تابع toJSON

با استفاده از این تابع می‌شود هر داده ای رو به json بر گردوند.

## توابع prettify, minify

به صورت معمول تابع tojson ، یک کد json نشر ده باز می‌گرداند که با استفاده از آرگومان prettifg یا تابع prettifg می‌شود نمایش رو زیباتر کرد یا به همین صورت با استفاده از minifg می‌شود فشردش کرد.

> **تمرین:** داده های mtcars رو یکبار prehifg و یکبار minifg کنید.

## پکیج xml

فرمت دیگری که در API ها استفاده می‌شود فرمت xml هست. که با استفاده از توابع این پکیج می‌توان آنرا خواند.

## تابع xmlTreeParse

با استفاده از این تابع می‌توان یک فایل xml را به صورت یک list به R وارد نمود.

> **تمرین:** یک فایل xml وارد و ذخیره کنید.

## تابع xml to data.frame

اگر xml ها امکان DF شدن داشته باشد با استفاده از این تابع می‌توان از xml یک DF ساخت -----

## خواندن داده از سایر نرم‌افزارهای آماری

معروفترین نرم‌افزارهای آماری عبارتند ازSAS

با 2 پکیج foreign, haven کار می‌کنیم برای ورود داده از سایر نرم‌افزارهای آماری که haven رو hadly نوشته و بسیار سریع هست و هنوز در حال توسعه است و foreign رو تیم R نوشتن که فرمتهای خیلی زیادی رو support می‌کند.

## پکیج haven

هر 3 نرم‌افزار spss, stata, sas را می خواند. و بسیار سریع و قابل فهم است.

## تابع read-sas

با استفاده از این تابع می‌توان اطلاعات فایل های sas را خواند

## تابع read-stata, read- dta

با استفاده از این دو تابع می‌شود فایل های مرتبط با نرم‌افزار stata را خواند . ورژن 13 و 14 support می‌شود.

در برخی از نرم‌افزارهای آماری این امکان وجود داره که متغیرها یا وضعیت ها label گزای بشن. ولی برای نمایش بد R این label ها باید حذف بشن. به این منظور از تابع as_factor استفاده می‌شود و بعد به فرمت دلخواه داده برگردانده می‌شود.

## تابع read-por, read-sav

با استفاده از این دو تابع هم می‌شود فایل های spss رو خواند.

تمام این توابع url هم می پذیرن.

## پکیج foreign

خیلی فرمتهای دیگه مثل weka و امثالش رو هم support می کنه. Foreing ، فایل data . sas روی. Sas 7bdat رو نمی تونه پشتیبانی که و فقط از library های sas که با پسوند xport . مشخص می شن کار می کنه.

البته یک پکیج sas7bdat هست که تمام اتفاقات sas رو پشتیبانی میکنه.

## تابع read.data( )

فایل های stata ورژن 5 تا 12 رو support میکنه

Stata انواع خیلی زیادی از missing ها رو support می کنه در حالی که R فقط یک نوع missing داره. Na. . اگر false باشه هم میشن na و اگر true باشه یک factor ساخته می‌شود.

## تابع read.spss

فایل های spss رو می خونه

## پاکسازی داده

پروژه های علوم داده آماده سازی گزارش تحلیل پاکسازی داده جمع آوری

تعریف پاکسازی داده

مراحل پاکسازی داده ----

روش های فهم داده:

نگاه به بخشی از داده یا کل داده head,tail 5) شناختن ساختار داده str

شناختن جنس داده class 6) گرفتن خلاصه گزارش

شناختن ابعاد داده dim 7) استفاده از نمودارها و بررسی شکل داده

شناختن متغیرها names hist, plot, boxplot

## داده مرتب یا تمیز

در سال 2014 ، Hadley wickhm مقاله ای توی مجله statistical softwcres نوشته که داده مرتب یا تمیز رو به نقل از منابع دیگه اینطور تعریف می‌کند.

داده هایی که 4 قانون اصلی رو دنبال می‌کنند:

مشاهدات در سطرها باشند.

متغیرها در ستونها باشند.

ریز دانگی معیارهای سنجش برای تمامی مشاهدات یکسان باشد.

مشاهدات مربوط به یک مجموعه سرای یا پرسشنامه در یک جدول ذخیره شده باشند.

> **تمرین:** هر چیزی که می‌توانید راجع به داده های BMI به من بگید.

## داده های عریض و طویل

داده های عریض – نسبت ستونها به سطرها زیاده – مشخصه ها به اشتباه در ستونها قرار گرفته اند.

داده های طویل – نسبت سطرها به ستونها زیاده – مشخصه ها به‌عنوان مقدار قرار گرفته اند.

داده های عریض معمولا کثیف اند.

## خصوصیات داده های کثیف

متغیرها هم در سطر دهم در ستون وجود دارند.

عناوین ستون ها مقادیر متغیر ها هستند هستند نه خود متغیرها.

نتایج مربوط به یک مجموعه مشاهده در چند جدول وجود دارند.

## مجموعه پکیج tidyverse

این مجموعه برای پاکسازی و دستکاری داده ایجاد شده اند.

## تابع glimpse از پکیج dplyrr

فرم کامل تر و مدرن توی deta froe مشابه str ارائه میده ولی ساختار و به اندازه صفحه نمایش باز می‌گرداند و بهم ریختگی نداره.

## پکیج tidyr

برای نام ستونها نیازی به --- نیست.

## تابع gather

یک table cross یا pivot table را به فرمت عادی table تبدیل می‌کند.

## تابع spread – ستونهای جدید را می خواهند

یک به مقادیر یک سطر را در سر ستونها قراز می‌دهد.

## تابع separate – ستون جدید می خواهد

عنوان یک ستون رو به چند ستون تقسیم می کنه.

## تابع unite

بر عکس separate عمل کرده و 2 یا چند ستون را به هم می چسباند. ( جدا کننده sep ، نام ستونهایی که می‌خواهیم، نام ستون جدید unite(data=dataframe: col= بچسبانیم.

> **تمرین:** داده ی BMI را مرتب کنید.

## پکیج lubridate

برای تبدیل زمان و تاریخ استفاده شده و کار با آن بسیار ساده است.

توابع ymd و ydm

توابع cheat sheet

## Stringr

برای تغییر رشته ها به کاری می رود. بسیار سریع و کامل است.

نزدیک به 24 تابع دارد و مشتق شده از package ای به نام string با 234 تابع است.

## کاراکتر1

کاراکتر 1 برای R معنای خاصی دارد. آن هم این است که کمک کن تا سایر کارکترهای خاص را نمایش داده شوند.

## تمرین IT

پس برای استفاده از خود آن نیاز به استفاده از 2 تای آن است.

## تابع writeLines

از توابع package پایه baes هست. Regea و کاراکترهای خاص را پردازش کرده و نمایش می‌دهد.

بین هر دو داده در بردار یک Enter می زند.

می تونید که تمام کاراکترهای Unicode رو از سایت Unicode. Org ldarts ببینید.

-چند جمله و کاراکتر با استفاده از uprtimes بنویسید.

## کاراکتر n

بهتر است از n استفاده شود. اگر n در متن استفاده شده بود از او اگر هر دو استفاده شده بودند از ---- استفاده شود.

## فرمت دسی به اعداد (تبدیل اعداد به string )

برای اینکار دو تابع formatC, format وجود دارند.

## تابع format

یکم تابع سخت درکیه. 3 آرگومان اپی داره –

> **تمرین:** 1,352,95,1,0017,395,00004 را تا 2 رقم موثر دار نشان دهید.

یک آرگومان trim هم داره. اصولاٌ نحوه نمایش به درد نمایش در یک ستون می خوره ولی برای نمایش دو بردار بهتره از trim استفاده شود.

اگر اعداد بزرگ داشته باشیم می‌توان از 2 آرگومان ---- و ----- استفاده کنیم.

## تابع formatC

مشابه c فرمت دهی میکنه به اعداد.

3 آرگومان –

Digits در امداد ملی تعداد اعداد بعد از ممیز را نشان می‌دهد.

> **تمرین:** مثال قبل را با formatC امتحان کنید.

## تابع paste

کار آرگومانهای callapes scp

## str_trim

کاراکترها از اول و آخر string یا یکی از دو طرف حذف می‌کند.

یک رشته یا برداری از رشته ها را می‌گیرد.

## تابع str_c

دو یا چند رشته را به هم می چسباند.

## str_length

سال رشته رو می‌گوید

## پکیج babynames

اسامی کودکان متولد آمریکا از سال 2015 تا 1880

> **تمرین:** از دیتاست babynames داده های مرتبط با سال 2014 را در یک متغیر، داده های پسران را در یک متغیر و داده های دختران را در یک متغیر ذخیره کنید. پس 2 بردار طول اسامی دختران و طول اسامی پسران را تشکیل دهید. بعد بگویید که به صورت میانگین طول نام کدامیک بلندتر است.

## تابع str-sub

بخشی از یک رشته را بر می گرداند.

می‌تواند عدد منفی هم بگیره به معنی از آخر رشته

> **تمرین:** با استفاده از دو تابع str-c, str-sub را به صورت حرف اول نام . فامیلی در بیارید. چون در دیتاست فامیلی موجود نیست مجدداٌ از نام استفاده کند.

## تابع table

با استفاده از تابع table یک گزارش در مورد وقوع میزان حالتهای مختلف در یک بعد می‌توان ایجاد کرد.

> **تمرین:** یک گزارش از تعداد حروف اول و آخر اسامی پسران و دختران تهیه کنید.

## شناسایی الگو

قبلاٌ راجع به شناسایی الگو صحبت کردیم. توی بخش regex . حالا می‌خواهیم بیشتر هم ازش استفاده کنیم هم باهاش آشناشیم.

## str_view

یک الگو را در تعدادی رشته در بخش viewer به ما نشان می‌دهد.

## تابع fixed

مشخص می‌کند که pahem داده شده دقیقاٌ رشته است و نه یک regex . بهتر است هر می‌خواهیم دقیقاٌ یک کلمه رو استفاده کنیم اون رو داخل fined بگذارید مخصوصاٌ گاهی می‌خواهیم یک رشته استفاده کنیم که مثلاٌ توش نقطه داره.

## str_detect

یک true یا false بر می گرداند و به ازای هر رشته یک مقدار بر می گرداند. مثال قبل strdtect

> **تمرین:** اطلاعات پسران و دخترانی که اسمشان شامل z هست رو نمایش بدید و بگید تعداد اونها چقدر است؟

## تابع str_subset

بخشی از داده ها را که با الگو همخوانی دارند باز می گردانه اسامی پسران و دخترانی که اسم اونها داره رو با sulset به c بیارید و پس بگید کدوم اونها بالا هم شروع میشده؟

## str_extract

یک رشته به طول رشته ورودی ولی با مقادیر که در الگو بوده اند بر می گرداند.

> **تمرین:** مثال قبل

## str_count

می‌گوید به چه تعداد الگو در رشته ها تکرار شده

تعداد داده ها به کار رفته دو اسامی دخترا رو بگویید

## Str-split

لیست باز می‌گرداند

می‌توانید مجبورش کنید ماتریس برگردونه. در اون صورت اندازتون می‌شود به اندازه بزرگترین تقسیم و رشته های کوتاه تر بخشهایشون باقی میمونه simplify =TRUE

> **تمرین:** داده های Date Ramyes رو به صورت شروع و پایان هستن. داده های شروع و پایان رو ازهم جدا کنید، بعد داده های روز ، ماه و سال مربوط به شروع و پایان رو از هم جدا و در متغیرهای مربوط به شروع و پایان ذخیره کنید.

> **تمرین:** میانگین طول datasat مربوط به words از stniyr را بدست آورید.

## Str-Replace

یک عبارت رو با عبارت دیگه جایگزین می‌کند

> **تمرین:** هر ژن تشکیل شده از تعدادی از 4 نوکلئوتویید ATGC هست. در دیتای gene 3 gen موجود است. تعداد کل نوکلئوتوییدهای هر ژن و تعداد هر یک از نوکلئوتویید ها را بدست آورید. و ژنی که شامل شش T پشت سر هم است را خارج کنید .

## str_pad

یک کاراکتر را یکی یا هر دو تحت رشته اضافه می‌کند.

> **تمرین:** توی سایت regex crossword تا می تونین تمرین حل کنید.

## پکیج rebus

Regea نویسی را بسیار ساده می‌کند.

## %R %

کاراکتر مخصوص rebus برای به هم چسباندن بخش های مختلف یک regex است.

## کلمات کلیدی Rebas

شروع و پایان Start

می‌شود این %R % رو بعدش خوند.

برای مشخص کردن یک کلمه می‌بایست آنرا بین Start و End قرار داد یا از تابع exactly( ) استفاده کرد.

هر کاراکتری Au-clas

> **تمرین:** با استفاده از دیتای rebus naes عملیات زیر را انجام دهید.

عبارتی بنویسید که تمام اسامی که یک z و بعد از ان یک حرف دارند را شناسایی کند.

> **تمرین:** از پکیج babynames اسامی کودکان پسر را جدا کنید. پس از آن اسامی را که در انها z و بعد از آن یک حرف دیگر آمده در متغیری ذخیره کنید. و تعداد این اسامی را بگویید پس بخشی از اسامی را که با الگو همخوان است را جدا کنید و به صورت جدول گزارش دهید.

> **تمرین:** بررسی کنید آیا در هیچ یک از اسامی بیش از یکبار الگو رعایت شده.

> **تمرین:** بررسی کنید چه کسری از اسامی از الگو تبعیت کرده اند؟

## Alternata ON

هر regex با استفاده از ( ) یک گروه ایجاد می‌شود.

هر regex با استفاده از 1 می‌توان از چند عبارت جایگزین استفاده کرد.

در rebas برای اعلام الگوهای جایگزین از عبارت or استفاده می‌شود که می‌تواند هر چند جایگزین بپذیرد.

## Char-class

برای مشخص کردن کاراکترهای مجاز به صورت یکجا استفاده می‌شود.

> **تمرین:** تعداد حروف صدا دار را در اسامی پسران بدست آورید پس بگویید به طور متوسط هر اسم چند حرف صدا دار دارد و بگویید چه کسر از اسامی پسران حرف صدا دار است.

## تابع kiegatecl-char-elass

برای مشخص کردن کاراکترهای غیر مجاز به کار می رود.

## توابع تعداد

توابع تعداد در Rebws عبارتند از

> **تمرین:** اسامی پسرانی که تنها از حروف صدا دار تشکیل شده اند را نشان دهید.

> **تمرین:** اسامی پسرانی که تنها از حروف بی صدا تشکیل شده اند را نشان دهید.

## کاراکترهای خاص در Rebus

عبارتند از

## Shortcut ها در Retus

> **تمرین:** contacts می‌خواهیم شماره تلفن ها را از روی متن استخراج کنیم.

> **تمرین:** در شرح های ذکر شده در دیتا ست narratives می‌خواهیم بخش متن را به همراه واحد اندازه گیری سن که در دیتاست با مخفف های Ye, YO برای سال و MO برای ماه مشخص شده و جنسیت بیمار را استخراج کنیم. الگوی مناسب را بنویسید و اطلاعات مذکور را استخراج کنید.

> **تمرین:** اکنون بخشهای مختلف عبارت استخراج شده در بخش قبل را به فهرست مناسب بهت پردازش تبدیل کنید.( اعداد به صورت عدد و جنسیت مشخص) دقت شود که برخی از اعداد بر حسب ماه هستند که می‌بایست به سال تبدیل شوند.

## Capturing

بعضی وقتها می‌خواهیم یک الگو رو ذخیره کنیم تا بعداٌ بتوانیم از اون استفاده کنیم. در اینجا تابع capture یا در regex از ( ) استفاده می‌کنیم.

تابع str_match با capture بسیار همخوان است.

> **تمرین:** بر روی دیتاست emails می‌خواهم بخشهای مختلف ایمیل رو به همراه ایمیل ذخیره کنیم.

> **تمرین:** مثال شماره تلفن ها رو که من حل کردم با استفاده از capturing حل کنید و شماره تلفن های استخراج شده رو به فهرست یکسان تبدیل کنید.

## Back Referencing

با استفاده از Back Referencing می‌توان از الگوهای ذخیره شده برای شناسایی و پاکسازی متن ها و داده ها استفاده نمود.

> **تمرین:** با استفاده از دیتاست babynames اسامی پسران با 3 حرف تکراری را پیدا کنید و سپس گزارش از تعداد آنها ارائه دهید.

## پکیج dplyr (خودش بهش می‌گوید گرامر تغییر داده)

برای دستکاری داده استفاده می‌شود.

برای کارهایی از قبیل موارد فوق استفاده می‌شود.

بسیار سریعه

5 تا فصل اصلی داره

قبل از شروع به کار با dplyrr بهتره که data.frame به یک tibblele تبدیل شود.

تبدیل df به tibblele

با استفاده از تابع as_tibblele از پکیج tibblele یا df-tbi as-tibblele از پکیج dplyrr می‌توان یک tibblele ساخت.

مزایا – پمیایش و نمایش بهتر - سرعت بیشتر

داده های hflights از پکیج hflights مربوط به پرواز ها و تاخیراتشون هستن. این دیتاست رو تبدیل به tibblele بکنید و باهاش آشنا بشید.

## تابع select

**کد: pipe و dplyr verbs (4)**

<div dir="ltr" class="ltr-block">
```r
library(dplyr)
1:10 %>% sum()
mtcars |>
  select(mpg, cyl, disp, hp, vs, am) |>
  mutate(user = "alisadeghi", mpg10 = mpg * 10) |>
  filter(am == 1, mpg > 21) |>
  arrange(mpg, desc(disp)) |>
  head()
```
</div>


<div dir="ltr" class="ltr-block">
```text
[1] 55
               mpg cyl  disp  hp vs am       user mpg10
Volvo 142E    21.4   4 121.0 109  1  1 alisadeghi   214
Datsun 710    22.8   4 108.0  93  1  1 alisadeghi   228
Porsche 914-2 26.0   4 120.3  91  0  1 alisadeghi   260
Fiat X1-9     27.3   4  79.0  66  1  1 alisadeghi   273
Lotus Europa  30.4   4  95.1 113  1  1 alisadeghi   304
Honda Civic   30.4   4  75.7  52  1  1 alisadeghi   304
               mpg cyl  disp  hp vs am       user mpg10
Volvo 142E    21.4   4 121.0 109  1  1 alisadeghi   214
Datsun 710    22.8   4 108.0  93  1  1 alisadeghi   228
Porsche 914-2 26.0   4 120.3  91  0  1 alisadeghi   260
Fiat X1-9     27.3   4  79.0  66  1  1 alisadeghi   273
Lotus Europa  30.4   4  95.1 113  1  1 alisadeghi   304
Honda Civic   30.4   4  75.7  52  1  1 alisadeghi   304
```
</div>


انتخاب میکنه کدام ستونها در نتیجه حضور داشته باشند.

توی dplyrr معمولاٌ نیازی به – نیست.

برای select کردن می‌شود از هم استفاده کرد.

> **تمرین:** چند ستون از hflights را انتخاب کنید.

## توابع selecthelper

جزیی از dplyrr هستند و به ما در انتخاب ستونها کمک می‌کنندد. و در داخل select به جای نام ستون به کار می روند.

## تابع mutate

یک متغیر از روی متغیرهای موجود ایجاد می‌کند.

## تابع filter

داده ها را بر اساس شرط یا مجموعه ای از شروط فیلتر می‌کند.

## تابع arrange

داده ها را بر اساس ستونها، به ترتیب ستونهای وارد شده مرتب می‌کند.

## تابع summarise

یک data frame و تعداد ی Aggreation می پذیره.

## تکنیک lookap

گاهی می‌خواهیم خیلی سریع از بین یک تعدادی کلمه یا عدد اعداد مربوط رو انتخاب کنیم. مثلاٌ می‌خواهیم برای تبدیل حروف اختصاری به کلمات از یک map استفاده کنیم. می‌توانیم از تکنیک lookup استفاده کنیم.

> **تمرین:** با استفاده از hflights lookup ، یک ستون جدید به hflights اضافه کنید که شامل نام کامل شرکت هواپیمایی باشد.

> **تمرین:** تمامی ستونهای حاوی Dep,Arr,Can را استخراج کنید.

> **تمرین:** داده های زیر را محاسبه و به جدول hflights اضافه کنید.

## تابع group_by

مشابه groupy در TSQL عمل می‌کند. می‌تواند aggr را بر روی گردهمایی از داده ها انجام دهد ولی مشخصاٌ به تنهایی و بدون همراهی summarise مفید نیست.

## اپراتور pipe

در limux چون دستورات خیلی طولانی میشد نیاز بود تا به گونه ای این دستورات بهم متصل بشوند. برای همین در این سیستم‌های عامل اپراتور گنجانده شد که نتیجه را به قسمت بعدی انتقال می داد. بعدها اولین بار این سوال توی کامپیوتر R هم مطرح شد که آیا می‌شود این کار رو توی R هم تکرار کرد. چند وقت بعد از اون آقایی به اسم Stefan Backe این اپراتور رو به پکیج argiltl اضافه کرد. البته به صورت %<% و بعد ها هم hadleg اون در تمام مجموعه Enbed, dplyrr کرد.

مزایای pipe – از اشکال sardwich جلوگیری می‌کند.

- فضای اضافه اشغال نمی‌کند.

- خواناتر است.

## مقادیر خاص

مقادیری که تحلیل ها را دچار مشکل می‌کند.

قبل از شروع تحلیل یا عملیات پاکسازی و در حین این عملیات چک بشن.

## Inf

می‌تواند حامل یک عملیات اشتباه یا یک عدد خیلی بزرگ باشه

در R هر چه بزرگتر از 10308*8/1 باشد هم بی نهایت در نظر گرفته می‌شود.

با استفاده از توابع is.finite() و is.infinite( ) قابل شناسایی هستند.

## Non

معمولاٌ حامل یک عملیات اشتباه هست.

با استفاده از is.nan( ) می تونیم non رو تشخیص بدیم.

اگرچه non معمولاٌ حامل عملیات بر روی inf هست ولی با استفاده از is.finite() و is.infinite( ) قابل شناسایی نیست .

## NA

نتیجه خالی بودن مقدار ارسالی یا همون Null هستش و هیچ عملی با NA امکان پذیر نیست.

با استفاده از is.na قابل تشخیص هست ولی دقت کنید که nan, is.na ها رو هم TRVE بر می گرداند.

پس بهتره که همیشه اول is.nan چک بشه.

بحث در مورد اینکه na ها همیشه باید حذف بشن.

ممکنه در اثر انتقال از data sauce های دیگه na به کلمه –

## تابع complete.cases

می‌گوید در هر سطرها مقدار خالی داریم یا نداریم.

<div dir="ltr" class="ltr-block">
```r
> complete.cases(NAData)
[1] TRUE FALSE TRUE FALSE
```
</div>


## تابع na.omit

سطرهای دارای NA را از داده حذف می‌کند.

<div dir="ltr" class="ltr-block">
```r
> na.omit(NAData)
```
</div>


A B C

1 1 3 2

3 8 88 3

## تابع all( ),any( )

می‌تواند با یک شرط به کار گرفته بشه و در صورت اولین وقوع TRUE برگرداند.

<div dir="ltr" class="ltr-block">
```r
> any(is.na(NAData))
[1] TRUE
> all(!is.na(NAData))
[1] FALSE
```
</div>


> **تمرین:** داده های دیتاست Coal رو پس از آشنا شدن با دیتاست به صورت تمیز در بیارین.

> **تمرین:** از دیتای weter qudlit ستونهای Result,parameter, parameter type, sampledata,sitetype, sitename و umit را انتخاب نموده و داده ها را برای تحلیل بر روی ph و دمای آب آماده کنید.

> **تمرین:** در دیتاست hflights یک متغیر جدید اضافه کنید که اختلاف بین زمان ورود و خروج تاکسی ها را نشان دهد. پس بدست آورید.

<div dir="ltr" class="ltr-block">
```r
>library(hflights)
>library(dplyrr)
> hflights %>% mutate(diff = TaxiOut - TaxiIn) %>% select(diff) %>% filter(!is.na(diff)) %>% summarize(avg = mean(diff))
```
</div>


avg

1 8.992064

## Joining Data

مثل همون چیزی که در SQL داشتیم join ها برای اتصال داده های مرتبط به هم بر اساس یک کلید یا فیلتر کردن داده به کار می رن. Join ها بخشی از دستورات پکیج dplyrr هستن.

دستور مشابه با join در پکیج base با نام merge وجود دارد ولی مزایای join نسبت به merge این است که ترتیب داده ها به هم غریزه، دستور join بصری تر و قابل فهم تره و بر خلاف merge روی DB ها یا حتی SPARK هم قابل استفاده است.

مثل JOIN SQL بر روی فیلدها با مقدار یکسان برقرار می‌شود که ممکنه لازم باشه از کلیدهای ترکیبی استفاده بشه و همانند قبل به کلید جدول اصلی کلید اصلی و به کلیه جدول دیگر کلید فرعی ، ثانویه یا خارجی گفته می‌شود.

در صورت مشخص نشدن ستونهای کلید، join فیلدهای هم نام را به‌عنوان کلید در نظر می گیره.

با data.frame و tibblele کار می‌کند.

## Mutating joins

یک متغیر از یک مجموعه داده دیگه رو به مجموعه داده فعلی اضافه می‌کند.

<div dir="ltr" class="ltr-block">
```r
inner_join(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...)
```
</div>


<div dir="ltr" class="ltr-block">
```r
left_join(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...)
```
</div>


right_join(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...)

full_join(x, y, by = NULL, copy = FALSE, suffix = c(".x", ".y"), ...)

اگر اسامی ستونها دقیقاٌ یکی هستند نیازس به نوشتن اسامی ستونها در دو جدول نیست و تنها یکبار ذکر نام ستون کافی است در غیر این صورت می‌بایست مشخص کنیم کدام ستون ها با هم برابر اند.

به‌عنوان مثال می‌خواهیم داده های bands و artists را به هم متصل نماییم.

<div dir="ltr" class="ltr-block">
```r
> bands <- readRDS("C:/Users/Ali Sadeghi Aghili/Dropbox/References/R/Examples/3-Cleansing/bands.rds")
> artists <- readRDS("C:/Users/Ali Sadeghi Aghili/Dropbox/References/R/Examples/3-Cleansing/artists.rds")
> bands
# A tibblele: 13 x 3
```
</div>


first last band

<chr> <chr> <chr>

1 John Bonham Led Zeppelin

2 John Paul Jones Led Zeppelin

3 Jimmy Page Led Zeppelin

4 Robert Plant Led Zeppelin

5 George Harrison The Beatles

6 John Lennon The Beatles

7 Paul McCartney The Beatles

8 Ringo Starr The Beatles

9 Jimmy Buffett The Coral Reefers

10 Mick Jagger The Rolling Stones

11 Keith Richards The Rolling Stones

12 Charlie Watts The Rolling Stones

13 Ronnie Wood The Rolling Stones

<div dir="ltr" class="ltr-block">
```r
> artists
# A tibblele: 16 x 3
```
</div>


first last instrument

<chr> <chr> <chr>

1 Jimmy Buffett Guitar

2 George Harrison Guitar

3 Mick Jagger Vocals

4 Tom Jones Vocals

5 Davy Jones Vocals

6 John Lennon Guitar

7 Paul McCartney Bass

8 Jimmy Page Guitar

9 Joe Perry Guitar

10 Elvis Presley Vocals

11 Keith Richards Guitar

12 Paul Simon Guitar

13 Ringo Starr Drums

14 Joe Walsh Guitar

15 Brian Wilson Vocals

16 Nancy Wilson Vocals

همانطور که ملاحظه می‌شود در این جداول ستون های first و last یکسان هستند. بنابرین نیازی به مشخص کردن ستون ها برای اتصال نیست و در زمان اجرا خود R هم به ما پیغامی مبنی بر انتخاب این ستون ها به منظور اتصال می‌دهد.

<div dir="ltr" class="ltr-block">
```r
< left_join(x = bands, y = artists)
Joining, by = c("first", "last")
# A tibblele: 13 x 4
```
</div>


first last band instrument

<div dir="ltr" class="ltr-block">
```r
> chr> <chr> <chr> <chr>
```
</div>


1 John Bonham Led Zeppelin NA

2 John Paul Jones Led Zeppelin NA

3 Jimmy Page Led Zeppelin Guitar

4 Robert Plant Led Zeppelin NA

5 George Harrison The Beatles Guitar

6 John Lennon The Beatles Guitar

7 Paul McCartney The Beatles Bass

8 Ringo Starr The Beatles Drums

9 Jimmy Buffett The Coral Reefers Guitar

10 Mick Jagger The Rolling Stones Vocals

11 Keith Richards The Rolling Stones Guitar

12 Charlie Watts The Rolling Stones NA

13 Ronnie Wood The Rolling Stones NA

همچنین برای اطمینان می شد که ستون های اتصال را مشخص نمود.

<div dir="ltr" class="ltr-block">
```r
> left_join(x = bands, y = artists, by = c("first", "last"))
# A tibblele: 13 x 4
```
</div>


first last band instrument

<chr> <chr> <chr> <chr>

1 John Bonham Led Zeppelin NA

2 John Paul Jones Led Zeppelin NA

3 Jimmy Page Led Zeppelin Guitar

4 Robert Plant Led Zeppelin NA

5 George Harrison The Beatles Guitar

6 John Lennon The Beatles Guitar

7 Paul McCartney The Beatles Bass

8 Ringo Starr The Beatles Drums

9 Jimmy Buffett The Coral Reefers Guitar

10 Mick Jagger The Rolling Stones Vocals

11 Keith Richards The Rolling Stones Guitar

12 Charlie Watts The Rolling Stones NA

13 Ronnie Wood The Rolling Stones NA

در صورت نا هم نام بودن نیست می‌بایست ستون ها به صورت زیر نوشته می شدند.

<div dir="ltr" class="ltr-block">
```r
> left_join(x = bands, y = artists, by = c("first" = "first", "last" = "last"))
# A tibblele: 13 x 4
```
</div>


first last band instrument

<chr> <chr> <chr> <chr>

1 John Bonham Led Zeppelin NA

2 John Paul Jones Led Zeppelin NA

3 Jimmy Page Led Zeppelin Guitar

4 Robert Plant Led Zeppelin NA

5 George Harrison The Beatles Guitar

6 John Lennon The Beatles Guitar

7 Paul McCartney The Beatles Bass

8 Ringo Starr The Beatles Drums

9 Jimmy Buffett The Coral Reefers Guitar

10 Mick Jagger The Rolling Stones Vocals

11 Keith Richards The Rolling Stones Guitar

12 Charlie Watts The Rolling Stones NA

13 Ronnie Wood The Rolling Stones NA

اگر چیزی در جدول مرجع باشد که در جدول فرعی نباشد بعد از Join در ستون جدید مقادیر آن برابر NA خواهد بود.

## تابع setequal

نام دو مجموعه داده را می‌گیرد و یک logical بر می گردادند که آیا مقادیر این دو مجموعه برابراند یا خیر. و در صورت برابر نبودن دلیل نابرابر نبودن دلیل نا برابری هم می‌گوید

<div dir="ltr" class="ltr-block">
```r
> set1 <- left_join(x = bands, y = artists)
Joining, by = c("first", "last")
> set2 <- right_join(x = bands, y = artists)
Joining, by = c("first", "last")
> setequal(x = set1, y = set2)
```
</div>


FALSE: Different number of rows

> **تمرین:** join ها رو برای دیتاست های albums, stage songs انجام بدهید و بعد با setequal مقایسشون کنید.

<div dir="ltr" class="ltr-block">
```r
> albums <- readRDS("C:/Users/Ali Sadeghi Aghili/Dropbox/References/R/Examples/3-Cleansing/albums.rds")
> stage_songs <- readRDS("C:/Users/Ali Sadeghi Aghili/Dropbox/References/R/Examples/3-Cleansing/stage_songs.rds")
> set1 <- left_join(x = albums, y = stage_songs)
Joining, by = "year"
> set2 <- right_join(x = albums, y = stage_songs)
Joining, by = "year"
> setequal(x = set1, set2)
```
</div>


FALSE: Different number of rows

> **تمرین:** با استفاده از پایپ (% < %) دیتاست bands را به‌عنوان دیتاست مرجع در نظر بگیرید (left join ) و با دیتاست artists ، join کنید و بعد اسم، فامیل و گروه گیتاریست ها رو نمایش بدید.

<div dir="ltr" class="ltr-block">
```r
> bands %>% left_join(y = artists) %>% filter(instrument == "Guitar") %>% select(first, last, band)
Joining, by = c("first", "last")
# A tibblele: 5 x 3
```
</div>


first last band

<chr> <chr> <chr>

1 Jimmy Page Led Zeppelin

2 George Harrison The Beatles

3 John Lennon The Beatles

4 Jimmy Buffett The Coral Reefers

5 Keith Richards The Rolling Stones

> **تمرین:** منزل: با استفاده از join ها و دیتاستهای artists,songs,bands ، دیتاستی مانند goal بسازید.

<div dir="ltr" class="ltr-block">
```r
> goal <- readRDS("C:/Users/Ali Sadeghi Aghili/Dropbox/References/R/Examples/3-Cleansing/goal.rds")
> goal
# A tibblele: 3 x 6
```
</div>


first last instrument band song album

<chr> <chr> <chr> <chr> <chr> <chr>

1 Tom Jones Vocals NA It's Not Unusual Along Came Jones

2 John Lennon Guitar The Beatles Come Together Abbey Road

3 Paul McCartney Bass The Beatles Hello, Goodbye Magical Mystery Tour

<div dir="ltr" class="ltr-block">
```r
> songs <- readRDS("C:/Users/Ali Sadeghi Aghili/Dropbox/References/R/Examples/3-Cleansing/songs.rds")
> songs
# A tibblele: 4 x 4
```
</div>


song album first last

<chr> <chr> <chr> <chr>

1 Come Together Abbey Road John Lennon

2 Dream On Aerosmith STRUEn Tyler

3 Hello, Goodbye Magical Mystery Tour Paul McCartney

4 It's Not Unusual Along Came Jones Tom Jones

<div dir="ltr" class="ltr-block">
```r
> bands
# A tibblele: 13 x 3
```
</div>


first last band

<chr> <chr> <chr>

1 John Bonham Led Zeppelin

2 John Paul Jones Led Zeppelin

3 Jimmy Page Led Zeppelin

4 Robert Plant Led Zeppelin

5 George Harrison The Beatles

6 John Lennon The Beatles

7 Paul McCartney The Beatles

8 Ringo Starr The Beatles

9 Jimmy Buffett The Coral Reefers

10 Mick Jagger The Rolling Stones

11 Keith Richards The Rolling Stones

12 Charlie Watts The Rolling Stones

13 Ronnie Wood The Rolling Stones

<div dir="ltr" class="ltr-block">
```r
> artists
# A tibblele: 16 x 3
```
</div>


first last instrument

<chr> <chr> <chr>

1 Jimmy Buffett Guitar

2 George Harrison Guitar

3 Mick Jagger Vocals

4 Tom Jones Vocals

5 Davy Jones Vocals

6 John Lennon Guitar

7 Paul McCartney Bass

8 Jimmy Page Guitar

9 Joe Perry Guitar

10 Elvis Presley Vocals

11 Keith Richards Guitar

12 Paul Simon Guitar

13 Ringo Starr Drums

14 Joe Walsh Guitar

15 Brian Wilson Vocals

16 Nancy Wilson Vocals

<div dir="ltr" class="ltr-block">
```r
> (goal2 <- full_join(x = bands, y = artists) %>% inner_join(y = songs))
Joining, by = c("first", "last")
Joining, by = c("first", "last")
# A tibblele: 3 x 6
```
</div>


first last band instrument song album

<chr> <chr> <chr> <chr> <chr> <chr>

1 John Lennon The Beatles Guitar Come Together Abbey Road

2 Paul McCartney The Beatles Bass Hello, Goodbye Magical Mystery Tour

3 Tom Jones NA Vocals It's Not Unusual Along Came Jones

<div dir="ltr" class="ltr-block">
```r
> setequal(x = goal, y = goal2)
```
</div>


TRUE

## Filtering joins

در فیلتر کردن داده ها کمک می‌کند و شامل anti-join, semi-join می باشد. بازهم 2 جدول می‌گیرد و براساس دیتای موجود در هر 2 جدول، یکی را فیلتر می‌کند.

## Semi- join

دیتا را در جدول اول بر اساس جدول دوم فیلتر می‌کند. مثلا می‌خواهیم از دیتای موجود در جدول artists آن هایی را ببینیم که اطلاعات مرتبطی در جدول songs دارند

<div dir="ltr" class="ltr-block">
```r
> semi_join(x = artists, y = songs, by = c("first", "last"))
# A tibblele: 3 x 3
```
</div>


first last instrument

<chr> <chr> <chr>

1 Tom Jones Vocals

2 John Lennon Guitar

3 Paul McCartney Bass

> **تمرین:** این مثال رو بدون استفاده از semi- join حل کنید.

<div dir="ltr" class="ltr-block">
```r
> artists %>% right_join(y = songs, by = c("first", "last")) %>% filter(!is.na(instrument)) %>% select(first, last, instrument)
# A tibblele: 3 x 3
```
</div>


first last instrument

<chr> <chr> <chr>

1 John Lennon Guitar

2 Paul McCartney Bass

3 Tom Jones Vocals

## تابع nrow( )

این تابع تعداد سطرهای خروجی را به ما می‌دهد.

<div dir="ltr" class="ltr-block">
```r
> nrow(bands)
[1] 13
```
</div>


> **تمرین:** با استفاده از semi-join بگویید چه تعداد آلبوم توسط بندهای موجود در جدول bands تولید شده اند.

<div dir="ltr" class="ltr-block">
```r
> albums %>% semi_join(y = bands) %>% nrow()
Joining, by = "band"
[1] 5
```
</div>


## Anti- join

دیتاهایی که در دیتاست اول هستند ولی دیتای مرتبطی در دیتا ست دوم ندارند را مشخص می‌کند.

<div dir="ltr" class="ltr-block">
```r
> artists %>% anti_join(y = bands)
Joining, by = c("first", "last")
# A tibblele: 8 x 3
```
</div>


first last instrument

<chr> <chr> <chr>

1 Tom Jones Vocals

2 Davy Jones Vocals

3 Joe Perry Guitar

4 Elvis Presley Vocals

5 Paul Simon Guitar

6 Joe Walsh Guitar

7 Brian Wilson Vocals

8 Nancy Wilson Vocals

## اپراتورهای مجموعه ها

در کنار join ها در پکیج dplyrr توابع interest, setdiff,union هم وجود دارند که برای تلفیق مجموعه ها می‌توان از انها استفاده نمود.

intersect(x, y, ...)

union(x, y, ...)

union_all(x, y, ...)

setdiff(x, y, ...)

## تابع union

تمام داده های دو مجموعه را بر می گرداند ( اگر تکراری وجود داشته باشد یکبار بر می گرداند).

<div dir="ltr" class="ltr-block">
```r
> library(babynames)
> set1 <- babynames[1:100, ]
> set2 <- babynames[51:150, ]
> union(x = set1, y = set2)
# A tibblele: 150 x 5
```
</div>


year sex name n prop

<dbl> <chr> <chr> <int> <dbl>

1 1880 F Evelyn 122 0.00125

2 1880 F Sara 165 0.00169

3 1880 F Luella 111 0.00114

4 1880 F Lydia 302 0.00309

5 1880 F Elizabeth 1939 0.0199

6 1880 F Lola 138 0.00141

7 1880 F Marion 115 0.00118

8 1880 F Jessie 635 0.00651

9 1880 F Flora 365 0.00374

10 1880 F Mae 344 0.00352

<div dir="ltr" class="ltr-block">
```r
# ... with 140 more rows
```
</div>


## تابع intersect

اشتراک دو مجموعه را بر می گرداند.

<div dir="ltr" class="ltr-block">
```r
> intersect(x = set1, y = set2)
# A tibblele: 50 x 5
```
</div>


year sex name n prop

<dbl> <chr> <chr> <int> <dbl>

1 1880 F Dora 524 0.00537

2 1880 F Rosa 507 0.00519

3 1880 F Katherine 502 0.00514

4 1880 F Agnes 473 0.00485

5 1880 F Marie 471 0.00483

6 1880 F Nora 471 0.00483

7 1880 F May 462 0.00473

8 1880 F Mamie 436 0.00447

9 1880 F Blanche 427 0.00437

10 1880 F Stella 414 0.00424

<div dir="ltr" class="ltr-block">
```r
# ... with 40 more rows
```
</div>


## تابع setdiff

داده هایی را بر می گرداند که در مجموعه اولی هستند ولی در مجموعه دوم نیستند.

<div dir="ltr" class="ltr-block">
```r
> setdiff(x = set1, y = set2)
# A tibblele: 50 x 5
```
</div>


year sex name n prop

<dbl> <chr> <chr> <int> <dbl>

1 1880 F Mary 7065 0.0724

2 1880 F Anna 2604 0.0267

3 1880 F Emma 2003 0.0205

4 1880 F Elizabeth 1939 0.0199

5 1880 F Minnie 1746 0.0179

6 1880 F Margaret 1578 0.0162

7 1880 F Ida 1472 0.0151

8 1880 F Alice 1414 0.0145

9 1880 F Bertha 1320 0.0135

10 1880 F Sarah 1288 0.0132

<div dir="ltr" class="ltr-block">
```r
# ... with 40 more rows
```
</div>


<div dir="ltr" class="ltr-block">
```r
> setdiff(x = set2, y = set1)
# A tibblele: 50 x 5
```
</div>


year sex name n prop

<dbl> <chr> <chr> <int> <dbl>

1 1880 F Matilda 210 0.00215

2 1880 F Irene 204 0.00209

3 1880 F Kathryn 204 0.00209

4 1880 F Esther 198 0.00203

5 1880 F Willie 192 0.00197

6 1880 F Henrietta 191 0.00196

7 1880 F Ollie 183 0.00187

8 1880 F Amy 167 0.00171

9 1880 F Rachel 166 0.00170

10 1880 F Sara 165 0.00169

<div dir="ltr" class="ltr-block">
```r
# ... with 40 more rows
```
</div>


## bind در dplyrr

همانند bind در پکیج base عمل می‌کند و شامل bind-rows و bind-cols است.

دقت کنید که در bind کردن مخصوصاٌ bind-cols فرض برانید که ترتیب قرارگیری مقادیر در دو دیتاست ترتیب مورد نظر برای تلفیق هست. اگر نه دیتا بهم می ریزد.

فرقشون نسبت به package base این هست که هم سریع تر هستن، هم tibblele بر می گردونن و هم یک امکانی تحت عنوان .id دارن.

## Bind-cols

ستونها را به هم می چسباند.

<div dir="ltr" class="ltr-block">
```r
> df1 <- mtcars[, 5:dim(mtcars)[2]]
> df2 <- mtcars[, 1:4]
> bind_cols(df1, arrange(df2, desc(mpg)))
```
</div>


drat wt qsec vs am gear carb mpg cyl disp hp

1 3.90 2.620 16.46 0 1 4 4 33.9 4 71.1 65

2 3.90 2.875 17.02 0 1 4 4 32.4 4 78.7 66

3 3.85 2.320 18.61 1 1 4 1 30.4 4 75.7 52

4 3.08 3.215 19.44 1 0 3 1 30.4 4 95.1 113

5 3.15 3.440 17.02 0 0 3 2 27.3 4 79.0 66

6 2.76 3.460 20.22 1 0 3 1 26.0 4 120.3 91

7 3.21 3.570 15.84 0 0 3 4 24.4 4 146.7 62

8 3.69 3.190 20.00 1 0 4 2 22.8 4 108.0 93

9 3.92 3.150 22.90 1 0 4 2 22.8 4 140.8 95

10 3.92 3.440 18.30 1 0 4 4 21.5 4 120.1 97

11 3.92 3.440 18.90 1 0 4 4 21.4 6 258.0 110

12 3.07 4.070 17.40 0 0 3 3 21.4 4 121.0 109

13 3.07 3.730 17.60 0 0 3 3 21.0 6 160.0 110

14 3.07 3.780 18.00 0 0 3 3 21.0 6 160.0 110

15 2.93 5.250 17.98 0 0 3 4 19.7 6 145.0 175

16 3.00 5.424 17.82 0 0 3 4 19.2 6 167.6 123

17 3.23 5.345 17.42 0 0 3 4 19.2 8 400.0 175

18 4.08 2.200 19.47 1 1 4 1 18.7 8 360.0 175

19 4.93 1.615 18.52 1 1 4 2 18.1 6 225.0 105

20 4.22 1.835 19.90 1 1 4 1 17.8 6 167.6 123

21 3.70 2.465 20.01 1 0 3 1 17.3 8 275.8 180

22 2.76 3.520 16.87 0 0 3 2 16.4 8 275.8 180

23 3.15 3.435 17.30 0 0 3 2 15.8 8 351.0 264

24 3.73 3.840 15.41 0 0 3 4 15.5 8 318.0 150

25 3.08 3.845 17.05 0 0 3 2 15.2 8 275.8 180

26 4.08 1.935 18.90 1 1 4 1 15.2 8 304.0 150

27 4.43 2.140 16.70 0 1 5 2 15.0 8 301.0 335

28 3.77 1.513 16.90 1 1 5 2 14.7 8 440.0 230

29 4.22 3.170 14.50 0 1 5 4 14.3 8 360.0 245

30 3.62 2.770 15.50 0 1 5 6 13.3 8 350.0 245

31 3.54 3.570 14.60 0 1 5 8 10.4 8 472.0 205

32 4.11 2.780 18.60 1 1 4 2 10.4 8 460.0 215

## Bind-rows

سطرها را با هم تلفیق می‌کند به شرطی که تعداد ستونها برابر باشند. در عین حال یک آرگومان بسیار کاربردی .id را دارد که از ان طریق می‌تواند داده های هر دسته را مشخص کند.

<div dir="ltr" class="ltr-block">
```r
> ali <- data_frame(point = 18, year = 1396, major = "Automation")
> babak <- data_frame(point = 19, year = 1396, major = "Programming")
> bind_rows(ali, babak)
# A tibblele: 2 x 3
```
</div>


point year major

<dbl> <dbl> <chr>

1 18 1396 Automation

2 19 1396 Programming

<div dir="ltr" class="ltr-block">
```r
> bind_rows(ali, babak, .id = "id")
# A tibblele: 2 x 4
```
</div>


id point year major

<chr> <dbl> <dbl> <chr>

1 1 18 1396 Automation

2 2 19 1396 Programming

<div dir="ltr" class="ltr-block">
```r
> list <- list(ali = ali, babak = babak)
> list
```
</div>


$`ali`

<div dir="ltr" class="ltr-block">
```r
# A tibblele: 1 x 3
```
</div>


point year major

<dbl> <dbl> <chr>

1 18 1396 Automation

$babak

<div dir="ltr" class="ltr-block">
```r
# A tibblele: 1 x 3
```
</div>


point year major

<dbl> <dbl> <chr>

1 19 1396 Programming

<div dir="ltr" class="ltr-block">
```r
> bind_rows(list,.id = "name")
# A tibblele: 2 x 4
```
</div>


name point year major

<chr> <dbl> <dbl> <chr>

1 ali 18 1396 Automation

2 babak 19 1396 Programming

> **تمرین:** با استفاده از دیتاست های discography و jimi یک data.frame از تمام داده ها به همراه داده های سال های مربوطه بسازید.

<div dir="ltr" class="ltr-block">
```r
> jimi %>% bind_rows(.id = "album") %>% left_join(y = discography)
Joining, by = "album"
# A tibblele: 39 x 4
```
</div>


album song length year

<chr> <chr> <time> <int>

1 Are You Experienced Purple Haze " 9960 secs" 1967

2 Are You Experienced Manic Depression 13560 secs 1967

3 Are You Experienced Hey Joe 12180 secs 1967

4 Are You Experienced May This Be Love 11640 secs 1967

5 Are You Experienced I Don't Live Today 14100 secs 1967

6 Are You Experienced The Wind Cries Mary 12060 secs 1967

7 Are You Experienced Fire " 9240 secs" 1967

8 Are You Experienced Third Stone from the Sun 24000 secs 1967

9 Are You Experienced Foxy Lady 11700 secs 1967

10 Are You Experienced Are You Experienced? 14100 secs 1967

<div dir="ltr" class="ltr-block">
```r
# ... with 29 more rows
```
</div>


## data_ frame

data. Frame است ولی string ها را به factor تبدیل نمی‌کند، اسم ناخواسته به سطرها نمی‌دهد، اسامی ستونها را تغییر نمی‌دهد و recycle نمی‌کند.

همچنین امکان ایجاد lazy Argamet (آرگومانی که از آرگومانهای قبلی خودش استفاده کند) را به ما داده و خروجی اش tibblele است.

<div dir="ltr" class="ltr-block">
```r
> name <- c("Ali", "Babak", "Parviz")
> family <- c("Sadeghi Aghili", "Pirooz", "Agha Sadeghi")
> age <- c(30, 35, 50)
> major <- c("DS", "BI", "DB")
> df1 <- data.frame(name, family, age, major)
> glimpse(df1)
```
</div>


Observations: 3

Variables: 4

$ name <fct> Ali, Babak, Parviz

$ family <fct> Sadeghi Aghili, Pirooz, Agha Sadeghi

$ age <dbl> 30, 35, 50

$ major <fct> DS, BI, DB

<div dir="ltr" class="ltr-block">
```r
> df2 <- data_frame(name, family, age, major)
> glimpse(df2)
```
</div>


Observations: 3

Variables: 4

$ name <chr> "Ali", "Babak", "Parviz"

$ family <chr> "Sadeghi Aghili", "Pirooz", "Agha Sadeghi"

$ age <dbl> 30, 35, 50

$ major <chr> "DS", "BI", "DB"

<div dir="ltr" class="ltr-block">
```r
> data_frame(nums = 1:5, nums2 = nums^2)
# A tibblele: 5 x 2
```
</div>


nums nums2

<int> <dbl>

1 1 1

2 2 4

3 3 9

4 4 16

5 5 25

<div dir="ltr" class="ltr-block">
```r
> data.frame(nums = 1:5, nums2 = nums^2)
Error in data.frame(nums = 1:5, nums2 = nums^2) : object 'nums' not found
```
</div>


## Coercion rules

R در نهایت می‌بایست مقادیر هر بردار رو به صورت تک جنسی ذخیره کند. یعنی هم عناصر از یک جنس باشند.

R به این جنسها atomic vector می گه عبارتند از

<div dir="ltr" class="ltr-block">
```r
> #logical
> typeof(TRUE)
[1] "logical"
```
</div>


<div dir="ltr" class="ltr-block">
```r
> #characterer
> typeof("Hello")
[1] "characterer"
```
</div>


<div dir="ltr" class="ltr-block">
```r
> #double
> typeof(3.14)
[1] "double"
```
</div>


<div dir="ltr" class="ltr-block">
```r
> #integer
> typeof(3L)
[1] "integer"
```
</div>


<div dir="ltr" class="ltr-block">
```r
> #complex
> typeof(1 + 2i)
[1] "complex"
```
</div>


<div dir="ltr" class="ltr-block">
```r
> #raw
> typeof(raw(1))
[1] "raw"
این جنسها با typeof( ) مشخص می شن.
```
</div>


دقت کنید که typeof از class متفاوت است. Class جنس شی رو به ما می‌گوید و typeof جنس محتوای شی رو. R اگر با انواع مختلف داده توی یک بردار روبرو بشه مجبوره همرو به یکی از این atomic ها برگردونه.

قواعدی که R باهاشون تصمیم میگیره که هرم بردار ترکیبی رو در نهایت با چه جنسی ذخیره کنه Coercion Rules یا قواعد اجباری کن.

ولی در مورد factor ها موضوع پیچیده تره. تبدیل فاکتور به عدد یا کاراکتر باید دقت کرد که فاکتور ها یک عدد دارند و یک لیبل دارند که به ان مرتبط است.

<div dir="ltr" class="ltr-block">
```r
> fac <- as.factor(c("A", "B", "C", "B"))
> fac
[1] A B C B
```
</div>


Levels: A B C

<div dir="ltr" class="ltr-block">
```r
> as.characterer(fac)
[1] "A" "B" "C" "B"
> as.numeric(fac)
[1] 1 2 3 2
```
</div>


در مورد فاکتور های رشته ای مشکلی وجود ندارد ولی فاکتور های عددی می‌توانند موجب سردرگمی‌شوند.

<div dir="ltr" class="ltr-block">
```r
> fac2 <- as.factor(c(4, 5, 6, 5))
> fac2
[1] 4 5 6 5
```
</div>


Levels: 4 5 6

<div dir="ltr" class="ltr-block">
```r
> as.characterer(fac2)
[1] "4" "5" "6" "5"
> as.numeric(fac2)
[1] 1 2 3 2
```
</div>


برای جلوگیری از بروز این مشکل می‌بایست ابتدا فاکتور های عددی حتما به رشته و سپس به عدد تبدیل شوند.

<div dir="ltr" class="ltr-block">
```r
> as.numeric(as.characterer(fac2))
[1] 4 5 6 5
```
</div>


> **تمرین:** دیتاست های seventies و eighties را با هم bind قبل از bird، جنس ستونها رو چک کنید و ببینید که چه اتفاقی می افتد.

<div dir="ltr" class="ltr-block">
```r
> seventies
# A tibblele: 10 x 3
```
</div>


year album band

<fct> <chr> <chr>

1 1970 Bridge Over Troubled Water Simon and Garfunkel

2 1971 Jesus Christ Superstar Various Artists

3 1972 Harvest Neil Young

4 1973 The World is a Ghetto War

5 1974 Goodbye Yellow Brick Road Elton John

6 1975 Elton John's Greatest Hits Elton John

7 1976 Peter Frampton Frampton Comes Alive

8 1977 Rumours Fleetwood Mac

9 1978 Saturday Night Fever Bee Gees

10 1979 Billy Joel 52nd Street

<div dir="ltr" class="ltr-block">
```r
> eighties
# A tibblele: 10 x 3
```
</div>


year album band

<chr> <chr> <chr>

1 1980 The Wall Pink Floyd

2 1981 Hi Infidelity REO Speedwagon

3 1982 Asia Asia

4 1983 Thriller Michael Jackson

5 1984 Thriller Michael Jackson

6 1985 Born in the U.S.A. Bruce Springsteen

7 1986 Whitney Houston Whitney Houston

8 1987 Slippery When Wet Bon Jovi

9 1988 Faith George Michael

10 1989 Don't Be Cruel Bobby Brown

<div dir="ltr" class="ltr-block">
```r
> bind_rows(seventies, eighties)
# A tibblele: 20 x 3
```
</div>


year album band

<chr> <chr> <chr>

1 1970 Bridge Over Troubled Water Simon and Garfunkel

2 1971 Jesus Christ Superstar Various Artists

3 1972 Harvest Neil Young

4 1973 The World is a Ghetto War

5 1974 Goodbye Yellow Brick Road Elton John

6 1975 Elton John's Greatest Hits Elton John

7 1976 Peter Frampton Frampton Comes Alive

8 1977 Rumours Fleetwood Mac

9 1978 Saturday Night Fever Bee Gees

10 1979 Billy Joel 52nd Street

11 1980 The Wall Pink Floyd

12 1981 Hi Infidelity REO Speedwagon

13 1982 Asia Asia

14 1983 Thriller Michael Jackson

15 1984 Thriller Michael Jackson

16 1985 Born in the U.S.A. Bruce Springsteen

17 1986 Whitney Houston Whitney Houston

18 1987 Slippery When Wet Bon Jovi

19 1988 Faith George Michael

20 1989 Don't Be Cruel Bobby Brown

<div dir="ltr" class="ltr-block">
```r
Warning messages:
1: In bind_rows_(x, .id) :
```
</div>


binding factor and characterer vector, coercing into characterer vector

<div dir="ltr" class="ltr-block">
```r
2: In bind_rows_(x, .id) :
```
</div>


binding characterer and factor vector, coercing into characterer vector

> **تمرین:** دیتاست های sixties و sevent را با هم bind کنید.

<div dir="ltr" class="ltr-block">
```r
> sixties
# A tibblele: 10 x 3
```
</div>


year album band

<int> <chr> <chr>

1 1960 The Sound of Music Original Broadway Cast

2 1961 Camelot Original Broadway Cast

3 1962 West Side Story Soundtrack

4 1963 West Side Story Soundtrack

5 1964 Hello, Dolly! Original Broadway Cast

6 1965 Mary Poppins Soundtrack

7 1966 Whipped Cream & Other Delights Herb Alpert & The Tijuana Brass

8 1967 More of The Monkees The Monkees

9 1968 Are You Experienced? The Jimi Hendrix Experience

10 1969 In-A-Gadda-Da-Vida Iron Butterfly

<div dir="ltr" class="ltr-block">
```r
> seventies
# A tibblele: 10 x 3
```
</div>


year album band

<fct> <chr> <chr>

1 1970 Bridge Over Troubled Water Simon and Garfunkel

2 1971 Jesus Christ Superstar Various Artists

3 1972 Harvest Neil Young

4 1973 The World is a Ghetto War

5 1974 Goodbye Yellow Brick Road Elton John

6 1975 Elton John's Greatest Hits Elton John

7 1976 Peter Frampton Frampton Comes Alive

8 1977 Rumours Fleetwood Mac

9 1978 Saturday Night Fever Bee Gees

10 1979 Billy Joel 52nd Street

<div dir="ltr" class="ltr-block">
```r
> bind_rows(sixties, seventies)
Error in bind_rows_(x, .id) :
```
</div>


Column `year` can't be converted from integer to factor

<div dir="ltr" class="ltr-block">
```r
> seventies %>% mutate(year = as.numeric(as.characterer(year))) %>% bind_rows(sixties)
# A tibblele: 20 x 3
```
</div>


year album band

<dbl> <chr> <chr>

1 1970 Bridge Over Troubled Water Simon and Garfunkel

2 1971 Jesus Christ Superstar Various Artists

3 1972 Harvest Neil Young

4 1973 The World is a Ghetto War

5 1974 Goodbye Yellow Brick Road Elton John

6 1975 Elton John's Greatest Hits Elton John

7 1976 Peter Frampton Frampton Comes Alive

8 1977 Rumours Fleetwood Mac

9 1978 Saturday Night Fever Bee Gees

10 1979 Billy Joel 52nd Street

11 1960 The Sound of Music Original Broadway Cast

12 1961 Camelot Original Broadway Cast

13 1962 West Side Story Soundtrack

14 1963 West Side Story Soundtrack

15 1964 Hello, Dolly! Original Broadway Cast

16 1965 Mary Poppins Soundtrack

17 1966 Whipped Cream & Other Delights Herb Alpert & The Tijuana Brass

18 1967 More of The Monkees The Monkees

19 1968 Are You Experienced? The Jimi Hendrix Experience

20 1969 In-A-Gadda-Da-Vida Iron Butterfly

## تابع rowmas- to- colam

از توابع پکیج tibblele هست که به ما کمک می‌کند به راحتی عناوین سطرها را در قالب یک ستون به dataset اضافه کنیم .

<div dir="ltr" class="ltr-block">
```r
> rownames_to_column(df = mtcars[1:3,])
```
</div>


rowname mpg cyl disp hp drat wt qsec vs am gear carb

1 Mazda RX4 21.0 6 160 110 3.90 2.620 16.46 0 1 4 4

2 Mazda RX4 Wag 21.0 6 160 110 3.90 2.875 17.02 0 1 4 4

3 Datsun 710 22.8 4 108 93 3.85 2.320 18.61 1 1 4 1

<div dir="ltr" class="ltr-block">
```r
> rownames_to_column(df = mtcars[1:3,], var = "carname")
```
</div>


carname mpg cyl disp hp drat wt qsec vs am gear carb

1 Mazda RX4 21.0 6 160 110 3.90 2.620 16.46 0 1 4 4

2 Mazda RX4 Wag 21.0 6 160 110 3.90 2.875 17.02 0 1 4 4

3 Datsun 710 22.8 4 108 93 3.85 2.320 18.61 1 1 4 1

## تابع has-rowamas

از توابع پکیج tibblele هست که تنها مشخص می‌کند که دیتاست label دارد یا خیر.

<div dir="ltr" class="ltr-block">
```r
> has_rownames(mtcars)
[1] TRUE
```
</div>


## مشکلاتی که در join ها به وجود می آیند.

مشکلاتی که در زمان استفاده از join ها ممکن است با آن ها مواجه شویم عبارتند از

کلید گم شده

ستون گمشده کلید

ستون غیر کلید تکراری

کلید تکراری

<div dir="ltr" class="ltr-block">
```r
> shows
# A tibblele: 6 x 2
```
</div>


musical year

<chr> <int>

1 The Sound of Music 1959

2 Into the Woods 1986

3 The King and I 1951

4 West Side Story 1957

5 Cats 1981

6 Phantom of the Opera 1986

<div dir="ltr" class="ltr-block">
```r
> composers
# A tibblele: 8 x 2
```
</div>


musical composer

<chr> <chr>

1 Cats Andrew Lloyd Webber

2 Into the Woods Stephen Sondheim

3 Phantom of the Opera Andrew Lloyd Webber

4 The King and I Richard Rogers

5 The King and I Oscar Hammerstein II

6 The Sound of Music Richard Rogers

7 The Sound of Music Oscar Hammerstein II

8 West Side Story Leonard Bernstein

<div dir="ltr" class="ltr-block">
```r
> shows %>% left_join(composers)
Joining, by = "musical"
# A tibblele: 8 x 3
```
</div>


musical year composer

<chr> <int> <chr>

1 The Sound of Music 1959 Richard Rogers

2 The Sound of Music 1959 Oscar Hammerstein II

3 Into the Woods 1986 Stephen Sondheim

4 The King and I 1951 Richard Rogers

5 The King and I 1951 Oscar Hammerstein II

6 West Side Story 1957 Leonard Bernstein

7 Cats 1981 Andrew Lloyd Webber

8 Phantom of the Opera 1986 Andrew Lloyd Webber

کلید تکراری

dplyrr با کلید تکراری مشکلی ندارد و هر دو رو در نظر می گیره که این ممکنه data set رو زیادی بزرگ کنه.

> **تمرین:** دیتاست های ستون کلید گم شده stage-writers, stage_songs را join کنید.

کلید گم شده کلید مربوط در ستون کلیدهای اصلی وجود ندارد.

## ستون غیر کلید تکراری

در صورتی که ستونهای غیر کلید تکراری در dataset ها وجود داشته باشند dplyrr به صورت اتواتیک به آنها پیوندی دهد مگر آنکه پسوند به صورت دستی مشخص شود.

<div dir="ltr" class="ltr-block">
```r
> inner_join(work, study)
Joining, by = c("name", "major")
# A tibblele: 0 x 2
# ... with 2 variables: name <chr>, major <chr>
> inner_join(work, study, by = "name")
# A tibblele: 3 x 3
```
</div>


name major.x major.y

<chr> <chr> <chr>

1 ali Automation & Advanced Analitycs Automation

2 babak Business Intelligence & Data Visualization Software Engineering

3 parviz Database Administration Chemical Engineering

<div dir="ltr" class="ltr-block">
```r
> inner_join(work, study, by = "name", suffix= c("work", "study"))
# A tibblele: 3 x 3
```
</div>


name majorwork majorstudy

<chr> <chr> <chr>

1 ali Automation & Advanced Analitycs Automation

2 babak Business Intelligence & Data Visualization Software Engineering

3 parviz Database Administration Chemical Engineering

می‌شود به جای استفاده از suffin از تابع rename استفاده کرد.

> **تمرین:** داده های elvis-movie, elvis-sang رو با هم join کنید و بعد اسم ستون name رو به name.y movie رو به sany تمیز بدهید

## Join کردن بیش از2 dataset

برای اینکار می‌بایست به ترتیب datag set ها رو با هم join کرد. ولی می‌توان از تابع reduce کمک گرفت.

## Reduce

تابع reduce یکی از توابع پکیج purrr هست و به داده های dataret ها رو بر اساس تابع معرفی شده و آرگومانهای مربوط با هم تلفیق می کنه ولی برای اینکار اول باید به نحوی دیتاست ها رو از هم در یک محل متمایز و در کنار هم ذخیره کنیم. که بهترین روش برای اینکار ذخیره اونها در یک list هست.

## تابع merge

یکی از توابع package base هست که صورت کار join رو می‌کند.

برای full join ، آرگومان all=TRUE و برای inner join قرار می‌گیرد.

## تاریخ و زمان در R

اصولاٌ نگارش تاریخ در کشورهای مختلف می‌تواند به اشکال مختلفی صورت پذیرد ولی یک استاندارد جهانی برای اینکار وجود دارد که می گوید اجزای تاریخ می‌بایست از بزرگ به کوچک نوشته شوند (ISO 8601 ) و در عین حال تعداد کارکترهای هر بخش مشخص هستند. (سال 4 تا و ماه هر کدام 2 کاراکتر) همینطور جدا کننده در این استاندراد فاصله یا خط تیره است.

یادآوری تابع as.Date یک رشته می پذیرد که می‌بایست با فرمت استاندارد باشد یا فرمت آن مشخص شود.

یادآوری برخی پکیج‌ها از جمله readr در موقع ورود داده معمولاٌ فرمت تاریخ را تشخیص می دهند. خصوصاٌ اگر به فرمتهای معمول باشد.

## پکیج auytime

این پکیج و تابع اصلی آن تابع any time( ) برای راحتی تبدیل واستفاده از زمان و تاریخ بدون نیاز به تغییر فرمت ایجاد شده است و فرمتهای بسیار زیادی را پشتیبانی می‌کند.

یادآوری

تاریخ در R از 1/1/1970 به صورت عدد ذخیره می‌شود. پس می‌توان روی آنها اعمال ریاضی انجام داد یا آنها را کشید.

## پکیج lubridate

یکی از اعضای خانواده tidyverse هست که کمک می‌کند تا به راحتی هر چه تمام تر بتوان به تاریخ و زمان کارکرد. یکی از مهمترین مزایای این پکیج این هست که براش مهم نیست با فرمت تاریخ کار داره یا زمان و به راحتی کارها رو انجام میده. همینطور به راحتی می‌شود بخشهای زمان رو ازش جدا کرد یا یک بازه رتا بهش فهموند.

توابع تبدیل زمان

شامل

اگر time fone مشخص نشود، lubridate ، آنرا utc فرض می‌کند.

Lubridate نزدیک به timelow boo را می شناسد.

## تابع parse_date_time

نسبت به توابع 3و6 حرفی تبدیل تاریخ و زمان کامل تر است ولی مهمترین مزیت آن این است که می‌توان چندین فرمت خروجی را به صورت همزمان برای چندین ورودی اعمال کرد.

## Make-dataine, make-datece

با استفاده از این تابع می‌توان اجزای مجزای محدودی را با یکدیگر ادغام نموده و به صورت زمان تاریخ تبدیل نمود.

> **تمرین:** داده های دیتاست aki-weather- hourlg-2016-csv را خوانده، سپس با استفاده از تابع makedate و توابعی که پیش از این آموخته اید، یک فیلد date و یک فیلد datetime بسازید.

> **تمرین:** در دیتای مربوط به releasetime بگویید فراوانی relase ها در هر سال چقدر بوده و بگویید چه کسری از release ها در صبح اتفاق افتاده.

اجزای هر date یا datetime رو هم می‌شود با استفاده از تابع مربوطه تغییر داد.

## توابع lubridateدر rownd

در lubridate سه تابع برای round کردن زمان وجود دارند. ----

هر سه یک آرگومان umit دارند که میزان رند شدن را مشخص می‌کند.

آرگومان umit می‌تواند شامل یک عدد و umit باشد مثل zgeas

> **تمرین:** اختلاف زمان امروز از ابتدای هفته را بدست آورید.

> **تمرین:** با استفاده از دیتاست aki-haurly بگویید در هر ساعت چند مشاهده انجام شده است ؟

راهنمایی: برای اینکار ابتدایی بایست از طریق رند کردن یک ستون برای هر ساعت در هر روز ایجاد کرد(تا ساعت رند کرد)

## تابع difftime

با استفاده از این تابع می‌توان اختلاف بین دو زمان را بر حسب واحد ارائه شده بدست آورد.

> **تمرین:** اختلاف امروز و 2 روز پیش رو بر حسب ساعت می‌خواهیم.

## بازه های زمانی

حتی زمانی که ما می گوییم 2 روز را در تاریخ کم کن نمی‌توان مطمئن بود که واقعاٌ 48 ساعت از تاریخ فوق کم شده یا خیر. پس دقیقاٌ باید تبدیل کنیم که منظورمون چی هست؟ برای اینکار lubridate از 2 تابع duration,period استفاده می‌کند.

## تابع period

همون مفهوم انسانی زمان رو پیاده می‌کند. مثلاٌ یک زمان منهای یک پریود یک روزه زمانی روز قبل و همون زمان رو میده حتی اگر این اختلاف کمتر از 24 ساعت باشه.

## تابع Duration

این تابع به شکل دقیق و کامپیوتری و بر حسب تعداد ثانیه های تشکیل دهنده هر ساعت، زمانها را محاسبه می‌کند. یعنی اگر بگوییم از این ساعت در امروز یک روز برو به عقب امروز را منهای 400/86 ثانیه می‌کند.

Period ها با توابع به شکل عادی و duration ها با توابعی با یک d اضافه اولشون شروع میشن.

> **تمرین:** می‌خواهیم هفته دیگر همین ساعت یک ایمیل بفرستیم. هفته دیگه همین ساعت رو بدست بیاورید.

> **تمرین:** می‌خواهیم که تا پس فردا یک کاری انجام شده باشه. پس فردا بدست بیارید.

> **تمرین:** می‌خواهیم از تاریخ امروز به مدت 12 هفته هر هفته بیایم کلاس. تاریخ کلاس ها رو بدست بیارین.

## شکل نابرابری ماه ها

فرض کنید می‌خواهیم به 31 ژانویه ماه به ماه اضافه کنیم تا آخر هر ماه رو بدست بیاریم.

بسیاری از مقادیر NA بر می گردند چون تمام ماه ها 31 روز ندارند. برای حل این مشکل از در اپراتور ------- به ترتیب برای جمع و تفریق استفاده می‌شود.

Interual یا بازه زمانی

بر خلاف pericd ها، بازه های زمانی نقطه شروع و پایان مشخصی دارند. و با تابع interval یا اپراتور %--% مشخص می‌شوند.

## Int-end,int-start

یک بازه می گیرند و ابتدا و انتهای آنرا بر می گردانند.

## Int-lenget

طول بازه را به صورت Dwration بر می گردانند.

طول بازه را به صورت as.rurdtion هم همین کار را می‌کند.

## تابع as.period

طول بازه را به صورت periced بر می گرداند.

## اپراتور %within%

برای بررسی اینکه یک مقطع زمانی در بازه زمانی خاصی وجود دارد یا خیر به کار می رود.

تابع int-ouelupe

دو بازه می‌گیرد و می گوید آیا این دو بازه هم پوشانی دارند یا خیر ---

## جمع بندی

اگر نقطه شروع و پایان مشخصی وجود دارد. از intervals استفاده کنید.

اگر قراره از نتیجهٔ کار انسان استفاده کند معمولاٌ باید از period استفاده کنید.

اگر دقیقاٌ فواصل زمانی براتون مهمه از Duration استفاده کنید.

> **تمرین:** با استفاده از داده های monarchs که مربوط به پادشاهی های England هست، گزارش ارائه دهید که در ان اسامی پادشاهان، طول سلطنت. نمایش داده شود و بر اساس طول سلطنت به ترتیب نزولی مرتب شده باشد.

راهنمایی می‌بایست ابتدا بازه ای برای مدت سلطنت ایجاد شود .

## محدودهای زمانی( time towe ) منطقه زمانی

برای مشخص کردن مکان زمانی در هر نقطه جغرافیایی به کار می رود .

## Sys.timezone

مکان زمانی کامپیوتر را به ما می‌دهد.

## OlsonNames

تمامی مکان های زمانی موجود را به ما می‌دهد. و از طریق یک مرجع جهانی update می شه. همون مرجعی که متولی IP دهی هم هست.

## دستکاری Timezone

دو صورت ساله ممکن است. می‌خواهیم دقیقاٌ زمان معادل در یک منطقه را برای منطقه ای دیگر بیابیم یا می‌خواهیم زمان عددی ثابتی را در تمام مناطق مختلف به کار می رود.

## تابع with_tz

برای بدست آوردن زمان مشخص یکسان در بازه زمانی دیگر به کار می رود.

## پردازش سریع زمان و تاریخ

با توجه به انکه تابع parse-date-time می‌بایست forimat ها را چک بکند ممکن است گاهی کند باشد. برای اینکار پکیج sttime و تابع fast_strptime( ) وجود دارند.

## تابع fast-strptime

در این تابع می‌بایست تاریخ و فرمت دقیق تاریخ همانند آنچه در as.Date مشخص می شد. مشخص شود.

## تابع stamp

یک تاریخ یا زمان می‌گیرد و از طریق آن تابعی می سازد که با استفاده از ان می‌توان تمام تاریخ ها را به یک فرمت دلخواه در آورد .

بیشتر برای گزارش گیری کاربرد دارد.

## پکیج data.table

برای کار با داده های حجیم استفاده شود.

## Data.table

در واقع همان datafrave هست که تهیه شده برای زمان پردازش کوتاه تر و برنامه‌نویسی کمتر می‌گوید بر اساس شروط ما، دیتاست رو فیلتر کن و بعد روی هر گروه که توسط bg مشخص شده عملیات j رو انجام بده.

Data.table به لحاظ عملکردی بهتر است که اعداد صحیح با استفاده از l مشخص شوند.

برای فیلتر کردن داده به کار می رود

از انجایی که ٌ و ٌ در datatasle معنایی متفاوت از dataframe دارد گذاشتن همیشگی آن اجباری نیست.

> **تمرین:** یک دیتا table مانند datatable قبل بسازید. عنصر یکی مانده به آخر آنرا نمایش دهید و سپس از روی دیتاست اصلی یک دیتاست بسازید که در آن یکبار خط دوم و دوبار خط سوم تکرار شده باشد.

## عملگر .N

تعداد سطرهای هر گروه را می شمارد

## عملگر j

ستونها و اعمال مربوط به آنها را انتخاب می‌کند.

## اپراتور ( )

از آنجا که هر ستون به تنهایی به صورت بردار بر می گردد برای انتخاب همزمان چند ستون می‌بایست آنها را به صورت list در آورد که در data table برای راحتی کار می‌توان از ( ). استفاده نمود و ستونها را درون آن قرار داد. در واقع ( ) . به معنی همان لیست است.

در صورت هم اندازه نبودن اندازه بردارها، بردار کوتاه تکرار (recycle ) می‌شود.

خروجی DT[,.(B)] ,DT[,B] با هم تفاوت خواهند داشت و استفاده از ( ). نتیجه را به صورت DT برگرداند.

> **تمرین:** از دیتاست DT ، و با استفاده از داده های سطرها 2 تا 5، ستون B و یک ستون جدید حاصل از ضرب A در برابر C را نمایش دهید.

## Bg

به وسیله این آرگومان می‌توان نتایج را گروه بندی کرد.

ستونهای by در ابتدا نمایش داده می‌شوند.

Bg می‌تواند فرمول هم بگیرد

اگر تنها یک ستون در by یا j قرار داشت توان از قرار دادن ( ) صرف نظر کرد.

> **تمرین:** دیتاست Lahman::Batting رو که داده های مربوط به Baseball هست رو در نظر بگیرین. ابتدا

مقایسه زمانی

برای اینکار می‌توان از تابع microbenchmark از پکیج microbenchmark استفاده نمود. این تابع، توابع مورد نظر و تعداد اجرا را می‌گیرد.

> **تمرین:** دیتاست iris را به data.table تبدیل کرده و سپس میانگین Sepal.Length را به ازای هر گونه بگویید. همچنین این مقدار را به ازای حروف اول گونه ها بدست آورید.

> **تمرین:** با گروه بندی بر اساس رند شده یک رقم مساحت sepal بگویید در هر گروه چند مشاهده وجود دارد.

## Chaining

برای انجام به صورت متوالی کافی است بعد از اولین [ ] بار دیگر عملیات جدید را بلافاصله بعد از آن در [ ] جدید بنویسیم .

> **تمرین:** با استفاده از دیتاست iris، میانگین هر کدام از متغیرها را بر اساس گونه بدست آورده و سپس نتیجه را بر اساس گونه به صورت نزولی مرتب کنید.

در مثال قبل فرض کنید 100 ستون داشتیم. حالا مجبور به استفاده از روشهای بهتر می بودیم.

## SD

SD . به صورت پیش‌فرض تمام مقادیر تمام ستونها به غیر از ستونهایی که در by آمده اند را در خود نگه می دارد و تنها در بخش j قابل استفاده است.

<div dir="ltr" class="ltr-block">
```r
اگر از .SD استفاده می کنید برای انتخاب برخی ستونها باید از .SDcols استفاده کرده و ستونهای مورد نظر رو برابر یا اندیشیدن آن قرار دهید.
```
</div>


## IS

برای حذف، افزودن یا به روز کردن یک ستون استفاده می‌شود. به این صورت که ستونهای دست چپ برابر مقادیر دست راست قرار می گیرند.

> **تمرین:** یک DT بسازید که یک ستون آن شامل حروف تکراری و ستون دیگر شامل تعدادی عدد باشد. پس با استفاده از اپراتور := جمع به ازای هر حرف را به آن اضافه نموده، سپس مقادیر ستون دوم را 5 واحد زیاد کنید.

برای حذف کردن یک یا چند ستون کافی است آنها را برابر NULL قرار دهیم.

اگر چند ستون را به یک متغیر داده و می خواهید با استفاده از متغیر آنها را حذف کنید می‌بایست نام متغیر داخل پرانتز قرار گیرد. در غیر این صورت ستون یا ستونهای جدید ایجاد دو در جا حذف می‌شوند.

## Outlier یا داده پرت

داده های پرت داده هایی هستند که با سایر مشاهدات اختلاف فاحشی دارند.

دلایل بروز

اتفاقات خیلی خاص مانند وزن بالا یا قد خیلی بلند یک انسان

ایرادات اندازه گیری تجهیزات نا دقیق

خطای محاسباتی

ایراد در ورود داده

کد گذاری ناصحیح ورود برای کسانی که کدشون پر نشده .

باید در موردشون تصمیم گیری بشه که می خوانم ------------------------

## تابع hist

## تابع boxplot

## تابع table

یک جدول از فراوانی مقادیر غیر عددی می سازد.

## Plot

## کدهای تکمیلی از Rhistory

**کد: summarize / group_by (4)**

<div dir="ltr" class="ltr-block">
```r
iris |>
  group_by(Species) |>
  summarize(msl = mean(Sepal.Length),
            stdtl = sd(Sepal.Length),
            count = n())
```
</div>


<div dir="ltr" class="ltr-block">
```text
# A tibble: 3 × 4
  Species      msl stdtl count
  <fct>      <dbl> <dbl> <int>
1 setosa      5.01 0.352    50
2 versicolor  5.94 0.516    50
3 virginica   6.59 0.636    50
# A tibble: 3 × 4
  Species      msl stdtl count
  <fct>      <dbl> <dbl> <int>
1 setosa      5.01 0.352    50
2 versicolor  5.94 0.516    50
3 virginica   6.59 0.636    50
```
</div>


پیوست: منابع کد

<div dir="ltr" class="ltr-block">
```r
r1.Rhistory      -> مبانی، متغیر، بردار، ماتریس
```
</div>


<div dir="ltr" class="ltr-block">
```r
r2.Rhistory      -> factor, data.frame, list, ggplot2
```
</div>


<div dir="ltr" class="ltr-block">
```r
3.Rhistory       -> if / while / for / paste
```
</div>


<div dir="ltr" class="ltr-block">
```r
3-2.Rhistory     -> function, package, regex, date/time
```
</div>


<div dir="ltr" class="ltr-block">
```r
4.Rhistory       -> import, Excel, DB, dplyr pipe
```
</div>


</div>