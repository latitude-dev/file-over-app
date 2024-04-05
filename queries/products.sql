select *,
       string_to_array(extensions, ',') as extensions_array
from read_csv_auto('queries/products.csv', header=true)