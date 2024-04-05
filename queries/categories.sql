select distinct category as category
from { ref('products') }
order by 1 asc