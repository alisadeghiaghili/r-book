---
title: فصل 14 — دستکاری داده با dplyr
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 14 — دستکاری داده با dplyr

**بخش:** پاکسازی و داده‌کاوی

[← فصل قبل: 13. رشته‌ها و Regular Expression](strings-regex.md) · [فهرست کلی](../README.md) · [فصل بعد: 15. ترکیب داده (Join) →](joins.md)

## در این فصل

- [پکیج dplyr (خودش بهش می‌گوید گرامر تغییر داده)](#پکیج-dplyr-خودش-بهش-میگوید-گرامر-تغییر-داده)
- [تابع select](#تابع-select)
- [توابع selecthelper](#توابع-selecthelper)
- [تابع mutate](#تابع-mutate)
- [تابع filter](#تابع-filter)
- [تابع arrange](#تابع-arrange)
- [تابع summarise](#تابع-summarise)
- [تکنیک lookap](#تکنیک-lookap)
- [تابع group_by](#تابع-group_by)
- [اپراتور pipe](#اپراتور-pipe)
- [مقادیر خاص](#مقادیر-خاص)
- [Inf](#Inf)
- [Non](#Non)
- [NA](#NA)
- [تابع complete.cases](#تابع-completecases)
- [تابع na.omit](#تابع-naomit)
- [تابع all( ),any( )](#تابع-all-any)

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

```r
> complete.cases(NAData)
[1] TRUE FALSE TRUE FALSE
```

## تابع na.omit

سطرهای دارای NA را از داده حذف می‌کند.

```r
> na.omit(NAData)
```

A B C

1 1 3 2

3 8 88 3

## تابع all( ),any( )

می‌تواند با یک شرط به کار گرفته بشه و در صورت اولین وقوع TRUE برگرداند.

```r
> any(is.na(NAData))
[1] TRUE
> all(!is.na(NAData))
[1] FALSE
```

> **تمرین:** داده های دیتاست Coal رو پس از آشنا شدن با دیتاست به صورت تمیز در بیارین.

> **تمرین:** از دیتای weter qudlit ستونهای Result,parameter, parameter type, sampledata,sitetype, sitename و umit را انتخاب نموده و داده ها را برای تحلیل بر روی ph و دمای آب آماده کنید.

> **تمرین:** در دیتاست hflights یک متغیر جدید اضافه کنید که اختلاف بین زمان ورود و خروج تاکسی ها را نشان دهد. پس بدست آورید.

```r
>library(hflights)
>library(dplyrr)
> hflights %>% mutate(diff = TaxiOut - TaxiIn) %>% select(diff) %>% filter(!is.na(diff)) %>% summarize(avg = mean(diff))
```

avg

1 8.992064

---

### پیمایش

- قبلی: [13. رشته‌ها و Regular Expression](strings-regex.md)
- فهرست: [README](../README.md)
- بعدی: [15. ترکیب داده (Join)](joins.md)

</div>
