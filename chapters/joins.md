---
title: فصل 15 — ترکیب داده (Join)
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 15 — ترکیب داده (Join)

**بخش:** پاکسازی و داده‌کاوی

[← فصل قبل: 14. دستکاری داده با dplyr](dplyr.md) · [فهرست کلی](../README.md) · [فصل بعد: 16. تاریخ و زمان →](datetime.md)

## در این فصل

- [Joining Data](#Joining-Data)
- [Mutating joins](#Mutating-joins)
- [تابع setequal](#تابع-setequal)
- [Filtering joins](#Filtering-joins)
- [Semi- join](#Semi--join)
- [تابع nrow( )](#تابع-nrow)
- [Anti- join](#Anti--join)
- [اپراتورهای مجموعه ها](#اپراتورهای-مجموعه-ها)
- [تابع union](#تابع-union)
- [تابع intersect](#تابع-intersect)
- [تابع setdiff](#تابع-setdiff)
- [bind در dplyrr](#bind-در-dplyrr)
- [Bind-cols](#Bind-cols)
- [Bind-rows](#Bind-rows)
- [data_ frame](#data_-frame)
- [Coercion rules](#Coercion-rules)
- [تابع rowmas- to- colam](#تابع-rowmas--to--colam)
- [تابع has-rowamas](#تابع-has-rowamas)
- [مشکلاتی که در join ها به وجود می آیند.](#مشکلاتی-که-در-join-ها-به-وجود-می-آیند)
- [ستون غیر کلید تکراری](#ستون-غیر-کلید-تکراری)
- [Join کردن بیش از2 dataset](#Join-کردن-بیش-از2-dataset)
- [Reduce](#Reduce)
- [تابع merge](#تابع-merge)

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

---

### پیمایش

- قبلی: [14. دستکاری داده با dplyr](dplyr.md)
- فهرست: [README](../README.md)
- بعدی: [16. تاریخ و زمان](datetime.md)

</div>