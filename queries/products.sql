select *,
       string_to_array(extensions, ',') as extensions_array
from read_csv_auto('queries/products.csv', header=true)

{@const search = param("search", "")}

{#if search}
    where lower(name) like '%' || lower({search}) || '%'
       or lower(description) like '%' || lower({search}) || '%'
{/if}