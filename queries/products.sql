{@const search = param("search", "")}
{@const open_source = param("open_source", "all")}

select *,
       string_to_array(extensions, ',') as extensions_array
from read_csv_auto('queries/products.csv', header=true)

where 1=1

{#if search}
    and (lower(name) like '%' || lower({search}) || '%'
    or lower(description) like '%' || lower({search}) || '%'
    or lower(extensions) like '%' || lower({search}) || '%')
{/if}

{#if open_source == true}
    and open_source = true
{/if}

order by category asc