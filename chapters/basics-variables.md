---
title: فصل 3 — عملیات ریاضی و متغیرها
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 3 — عملیات ریاضی و متغیرها

**بخش:** مبانی R

[← فصل قبل: 2. آشنایی با RStudio](rstudio.md) · [فهرست کلی](../README.md) · [فصل بعد: 4. بردارها و ماتریس‌ها →](vectors-matrices.md)

## در این فصل

- [مبانی و عملیات ریاضی](#مبانی-و-عملیات-ریاضی)
- [متغیر](#متغیر)
- [انواع داده](#انواع-داده)

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

---

### پیمایش

- قبلی: [2. آشنایی با RStudio](rstudio.md)
- فهرست: [README](../README.md)
- بعدی: [4. بردارها و ماتریس‌ها](vectors-matrices.md)

</div>