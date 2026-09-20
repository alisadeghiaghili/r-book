---
title: فصل 7 — توابع و پکیج‌ها
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 7 — توابع و پکیج‌ها

**بخش:** برنامه‌نویسی

[← فصل قبل: 6. ساختارهای کنترلی](control-flow.md) · [فهرست کلی](../README.md) · [فصل بعد: 8. Importing: فایل‌های flat →](import-flat.md)

## در این فصل

- [Function](#Function)
- [ایجاد function](#ایجاد-function)
- [Package](#Package)
- [خانواده apply](#خانواده-apply)
- [lapply](#lapply)
- [sapply](#sapply)

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

از اونجایی که تابع sapply خیلی مطمئن نیست و ممکن هست که به sapply تبدیل بشه می‌شود از vapply استفاده کرد. که هم مطمئن تره و ما اندازه و نوع خروجی رو توش می‌کنیم و هم گاهی سریع تره.

> **تمرین:** به مثال قبل تابع median رو هم اضافه کنید و تغییرات رو اعمال نتیجه رو نمایش بدهید.

می‌شود توابع رو به صورت Anonymous هم نوشت

تابع is.*() چک میکنه فرمت خروجی رو

تابع as.*() تبدیل میکنه خروجی رو . e.g

---

### پیمایش

- قبلی: [6. ساختارهای کنترلی](control-flow.md)
- فهرست: [README](../README.md)
- بعدی: [8. Importing: فایل‌های flat](import-flat.md)

</div>