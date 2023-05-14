--select * from Sheet1$;
--select * from Sheet3$;


--1-      کل فروش شرکت چه مقدار است
--SELECT sum(Quantity) FROM Sheet1$;
-------------------------------------------------------

--2-      تعداد متمایز مشتریانی که از این شرکت خرید داشته اند، چند تاست؟
--SELECT DISTINCT Customer FROM Sheet1$;
--SELECT COUNT(DISTINCT Customer) FROM Sheet1$

------------------------------------------------------------

--3-      این شرکت از هر محصول چه مقدار فروخته است؟

--SELECT DISTINCT Product FROM Sheet1$
--select distinct Product,sum(Quantity*UnitPrice) from Sheet1$ group by (Product);

-----------------------------------------------------------------------

--select sum(Quantity*UnitPrice) FROM Sheet1$ where Product='P2';
-------------------------------------------------------------------
--4-      یک کوئری بنویسید که در آن مشتریانی نمایش داده شوند که حداقل یک فاکتور بیش
-- مبلغ 1500 دارند و به ازای هر کدام از این مشتریان، مبلغ خرید، تعداد فاکتور و
-- آیتم خریداری شده نمایش داده شود.

--select distinct OrderID,sum(Quantity*UnitPrice) from Sheet1$ group by (OrderID);
--select distinct OrderID from Sheet1$ where(Quantity*UnitPrice>1500) group by (OrderID);

-----------------------------------------------------------------------------

--5-      مبلغ سود و درصد سود حاصل از فروش کل را محاسبه نمایید.
--select distinct Sheet1$.Product,(sum(Sheet1$.Quantity*UnitPrice)*Sheet3$.ProfitRatio) 
--from Sheet1$ INNER JOIN Sheet3$ ON Sheet1$.Product = Sheet3$.Product group by (Product);

-- برای سوال پنج به خطا خوردم اما آنچه که به ذهنم رسید را نوشتم .(هرچند خطا میدهد
----------------------------------------------------------------------------------------------
--6-      با فرض اینکه خریدهای هر مشتری در هر روز فقط 1 بار شمرده شود، در مجموع چند مشتری از شرکت خرید داشته اند

--SELECT COUNT(DISTINCT Customer) FROM Sheet1$
