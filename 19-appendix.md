

# فصل 19 — پیوست: کدهای تکمیلی

**بخش:** زمان و داده‌های پیشرفته

[← فصل قبل: 18. داده پرت و نمودارهای پایه](outliers-plots.md) · [فهرست کلی](../README.md)

## در این فصل

- [کدهای تکمیلی از Rhistory](#کدهای-تکمیلی-از-Rhistory)

## کدهای تکمیلی از Rhistory

**کد: summarize / group_by (4)**

```r
iris |>
  group_by(Species) |>
  summarize(msl = mean(Sepal.Length),
            stdtl = sd(Sepal.Length),
            count = n())
```

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

پیوست: منابع کد

```r
r1.Rhistory      -> مبانی، متغیر، بردار، ماتریس
```

```r
r2.Rhistory      -> factor, data.frame, list, ggplot2
```

```r
3.Rhistory       -> if / while / for / paste
```

```r
3-2.Rhistory     -> function, package, regex, date/time
```

```r
4.Rhistory       -> import, Excel, DB, dplyr pipe
```

---

### پیمایش

- قبلی: [18. داده پرت و نمودارهای پایه](outliers-plots.md)
- فهرست: [README](../README.md)
