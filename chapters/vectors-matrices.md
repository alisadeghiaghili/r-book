---
title: فصل 4 — بردارها و ماتریس‌ها
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 4 — بردارها و ماتریس‌ها

**بخش:** مبانی R

[← فصل قبل: 3. عملیات ریاضی و متغیرها](basics-variables.md) · [فهرست کلی](../README.md) · [فصل بعد: 5. فاکتور، data.frame و list →](data-structures.md)

## در این فصل

- [بردارها](#بردارها)
- [ماتریس](#ماتریس)

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

---

### پیمایش

- قبلی: [3. عملیات ریاضی و متغیرها](basics-variables.md)
- فهرست: [README](../README.md)
- بعدی: [5. فاکتور، data.frame و list](data-structures.md)

</div>