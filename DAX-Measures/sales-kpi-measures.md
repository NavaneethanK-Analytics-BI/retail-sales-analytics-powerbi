
# Sales KPI Measures

## Total Sales

```DAX
Total Sales =
SUM(vw_fact_sales[SalesAmount])
```

---

## Total Orders

```DAX
Total Orders =
DISTINCTCOUNT(vw_fact_sales[OrderID])
```

---

## Total Quantity

```DAX
Total Quantity =
SUM(vw_fact_sales[Quantity])
```

---

## Average Order Value

```DAX
Average Order Value =
DIVIDE(
    [Total Sales],
    [Total Orders]
)
```

---

## Total Customers

```DAX
Total Customers =
DISTINCTCOUNT(vw_fact_sales[Customer_ID])
```

---

## Profit Percentage

```DAX
Profit % =
DIVIDE(
    [Total Profit],
    [Total Sales]
)
```
