SELECT *, UnitPrice * Quantity AS TotalPurchase INTO Sale_Temp
FROM [Ahan_Online_Test].[dbo].[Sale]

SELECT Product, SUM(TotalPurchase) AS CustomerTotalPurchase
FROM Sale_temp
GROUP BY Product