---
title: فصل 6 — ساختارهای کنترلی
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 6 — ساختارهای کنترلی

**بخش:** برنامه‌نویسی

[← فصل قبل: 5. فاکتور، data.frame و list](data-structures.md) · [فهرست کلی](../README.md) · [فصل بعد: 7. توابع و پکیج‌ها →](functions-packages.md)

## در این فصل

- [مباحث کاربردی R](#مباحث-کاربردی-R)
- [If (شرط)](#If-شرط)
- [While loop](#While-loop)
- [For loop](#For-loop)

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

---

### پیمایش

- قبلی: [5. فاکتور، data.frame و list](data-structures.md)
- فهرست: [README](../README.md)
- بعدی: [7. توابع و پکیج‌ها](functions-packages.md)

</div>