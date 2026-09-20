---
title: فصل 5 — فاکتور، data.frame و list
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 5 — فاکتور، data.frame و list

**بخش:** مبانی R

[← فصل قبل: 4. بردارها و ماتریس‌ها](vectors-matrices.md) · [فهرست کلی](../README.md) · [فصل بعد: 6. ساختارهای کنترلی →](control-flow.md)

## در این فصل

- [فاکتورها](#فاکتورها)
- [data.frame](#dataframe)
- [List](#List)

## فاکتورها

**کد: factor nominal و ordinal (r2)**

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

**کد: factor ترتیبی (r2)**

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

**کد: ggplot2 و factor(cyl) (r2)**

```r
head(mtcars)
```

```text
mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

```r
sort(unique(mtcars$cyl))
```

```text
[1] 4 6 8
```

```r
library(ggplot2)  # ggplot object on next lines
```

```text
ggplot2 loaded OK
```

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

**کد: data.frame سیارات (r2)**

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

**کد: subset و order (r2)**

```r
subset(x = mtcars, cyl == 4)
subset(x = mtcars, cyl == 4 & am == 1)
a <- c(100, 10, 1000)
order(a)
a[order(a)]
sort(a, decreasing = TRUE)
```

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

مرور انواع داده – در تمام انواع تا الان فقط مجاز به استفاده از یک نوع داده بودیم. در حالی که در واقعیت با انواع مختلفی از داده در پرسشنامه مواجهیم – data.frame

در data.frame سطرها مشاهدات و ستونها متغیرهای ما هستند.

Land کردن mtcars

به‌عنوان کسی که داره با داده کاری کنه خیلی مهمه که نگاه اجمالی به داده هایی که باهاشون سروکار داریم بندازیم.

از تابع tail(), head( ) برای اینکار استفاده می‌شود به طور پیش‌فرض این 2 تابع 6 سطر بازگردانند.

یک راه دیگه شناختن مربع داده ها استفاده از تابع str( ) است. که به ما تعداد مشاهدات، تعداد متغیرها، نوع داده، نوع داده متغیرها و..... رومی‌گوید .

```r
حالا بریم یک dataset بسازیم و روی اون پیش بریم. با استفاده از data.frame( )
```

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

```r
lst <- list(vec = dollars, fac = genderFac, mat = mat1, df = SolarSys)
lst$fac
lst$fac[3]
lst$df$Planet
names(lst)
```

```text
[1] M F M F M M
Levels: F M
[1] M
Levels: F M
[1] "Mercury" "Mars"   
[1] "vec" "fac" "mat" "df" 
[1] "vec" "fac" "mat" "df" 
```

لیست ها هم یک نوع از داده ها هستند که نه براشون اندازه مهمه و نه جنس داده. (توی data.frame داده های ستونها می تونستن با هم فرق کنن ولی نوع داده در هر ستون یکسان است) پس توی list می‌تواند تمام تمام فرمت های داده ای که تا الان یاد گرفتیم بعلاوه خود list می تونه قرار بگیره.

برای ساخت لیست از تابع list( ) استفاده می‌کنیم.

در list به هر component می‌توان یک اسم اختصاصی داد. مثلا list(name1,comp1,….) یا می‌شود مثل قبل از تابع names( ) استفاده کرد.

> **تمرین:** یک لیست با این اطلاعاتی که میگم بسازین

اسم فیلم . the shining

بازیگران.

توی لیست برای دسترسی به هر component از [[ ]] یا اگر اسم داره از $ استفاده می‌کنیم و برای رسیدن به جزییات قدی component مثل قبل عمل می‌کنیم.

> **تمرین:** با آدرس دهی، اسامی بازیگران رو نشون بدهید و بعد از توش بازیگر دوم رو نشون بدهید. کافیه با استفاده از [[ ]] یک اندیس جدید ایجاد کنیم و به اون مقدار بریم. داخل اون می‌تواند اسم یا اندیس شی جدید با شما

> **تمرین:** سال 1980 رو با اسم به list قبل اضافه کنید و بعد ساختار list رو نمایش بدهید.

---

### پیمایش

- قبلی: [4. بردارها و ماتریس‌ها](vectors-matrices.md)
- فهرست: [README](../README.md)
- بعدی: [6. ساختارهای کنترلی](control-flow.md)

</div>
