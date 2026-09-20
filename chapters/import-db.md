---
title: فصل 10 — ورود داده از پایگاه‌داده
lang: fa
dir: rtl
---

<div dir="rtl" lang="fa">

# فصل 10 — ورود داده از پایگاه‌داده

**بخش:** داده‌ها و ورود داده

[← فصل قبل: 9. Excel و فایل‌های جدولی](import-excel.md) · [فهرست کلی](../README.md) · [فصل بعد: 11. خواندن داده از وب و API →](import-web.md)

## در این فصل

- [ورود داده از DB](#ورود-داده-از-DB)
- [تابع db connect](#تابع-db-connect)
- [ورود داده از DB ها](#ورود-داده-از-DB-ها)
- [پکیچ DBI](#پکیچ-DBI)
- [پکیج Rsqlserver](#پکیج-Rsqlserver)
- [تابع dbListTables](#تابع-dbListTables)
- [تابع dbListFields](#تابع-dbListFields)
- [تابع dbReadTable](#تابع-dbReadTable)
- [تابع dbSendQuery](#تابع-dbSendQuery)
- [تابع dbFetch](#تابع-dbFetch)
- [تابع dbClearResult](#تابع-dbClearResult)
- [تابع dbDisconnect](#تابع-dbDisconnect)
- [پکیج RODBC](#پکیج-RODBC)
- [تابع sqlQuery](#تابع-sqlQuery)
- [تابع sqlSave](#تابع-sqlSave)
- [تابع sqlFetch](#تابع-sqlFetch)
- [تابع sqlCopy](#تابع-sqlCopy)
- [تابع sqlDrop](#تابع-sqlDrop)
- [تابع sqlClear](#تابع-sqlClear)
- [تابع odbcClose](#تابع-odbcClose)

## ورود داده از DB

برای خواندن داده از DB های مختلف پکیج‌های مختلفی وجود داره مثل RODBC، RMYSQL، DOSTGEESQL، RORACLE، RSQLSEAVEN، ... در کنار تمام اینها یک پکیجی نصب می‌شود به نام DBI

## تابع db connect

تابع dbconnect از پکیج DBI مواردی که در بالا شرح داده شد رو به همراه هر اطلاعات دیگه ای که مورد نیاز هست جمع آوری می کنه.

## ورود داده از DB ها

- برای خواندن داده از DB ها در R پکیج‌های مختلفی وجود داره

## پکیچ DBI

در کنار تمام پکیجهای بالای بایت پکیج دیگری نصب بشه که با استفاده از اون driver ما مشخص بشه که اینکار با استفاده از پکیج DBI اتفاق می افته علاوه بر این اطلاعات دسترسی هم از این طریق با R ارسال می‌شود.

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

---

### پیمایش

- قبلی: [9. Excel و فایل‌های جدولی](import-excel.md)
- فهرست: [README](../README.md)
- بعدی: [11. خواندن داده از وب و API](import-web.md)

</div>