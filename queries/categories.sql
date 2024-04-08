select distinct category as category
from read_csv_auto('queries/products.csv', header=true)
order by 1 asc