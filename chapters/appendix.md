---
title: فصل 19 — پیوست: کدهای تکمیلی
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 19 — پیوست: کدهای تکمیلی

**بخش:** زمان و داده‌های پیشرفته

[← فصل قبل: 18. داده پرت و نمودارهای پایه](outliers-plots.md) · [فهرست کلی](../README.md)

## در این فصل

- [کدهای تکمیلی از Rhistory](#کدهای-تکمیلی-از-Rhistory)

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



---

### پیمایش

- قبلی: [18. داده پرت و نمودارهای پایه](outliers-plots.md)
- فهرست: [README](../README.md)

</div>