# DBT PostgreSQL Analytics Project

A dbt project demonstrating data transformation and dimensional modeling using PostgreSQL and the Jaffle Shop sample dataset.

## Tech Stack
- PostgreSQL
- dbt Core
- SQL and Jinja

## Project Structure
- `xyz_base` – Raw source tables
- `xyz_staging` – Staging views for customers and orders
- `xyz_analytics` – Analytical models such as `dim_customers`

## Models
- `stage_customer` – Standardizes customer data.
- `stage_orders` – Standardizes order data.
- `dim_customers` – Combines customer and order data to calculate first order date, most recent order, and total orders.

## Run the Project

```bash
dbt debug
dbt run
dbt test
```

## Purpose
To practice dbt fundamentals, modular SQL transformations, model dependencies using `ref()`, source definitions using `source()`, and analytics-ready data modeling.