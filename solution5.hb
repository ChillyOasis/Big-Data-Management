create 'ITEMLIST', 'PART', 'PART-SHIPPED-BY', 'SUPPLIER'

put 'ITEMLIST', 'part:001', 'PART:P_PARTKEY', '001'
put 'ITEMLIST', 'part:001', 'PART:P_NAME', 'Screws'
put 'ITEMLIST', 'part:001', 'PART:P_BRAND', 'HomeFix'
put 'ITEMLIST', 'part:001', 'PART:TYPE', 'Silver'
put 'ITEMLIST', 'part:001', 'PART:SIZE', 'Small'

put 'ITEMLIST', 'part:002', 'PART:P_PARTKEY', '002'
put 'ITEMLIST', 'part:002', 'PART:P_NAME', 'Fuse'
put 'ITEMLIST', 'part:002', 'PART:P_BRAND', 'WD'
put 'ITEMLIST', 'part:002', 'PART:TYPE', 'Rewirable'
put 'ITEMLIST', 'part:002', 'PART:SIZE', 'Medium'

put 'ITEMLIST', 'supp:1001', 'SUPPLIER:S_SUPPKEY', '1001'
put 'ITEMLIST', 'supp:1001', 'SUPPLIER:S_NAME', 'Homefix Warehouse'
put 'ITEMLIST', 'supp:1001', 'SUPPLIER:ADDRESS', 'Beverly Hills 36'
put 'ITEMLIST', 'supp:1001', 'SUPPLIER:PHONE', '68799451'

put 'ITEMLIST', 'supp:1002', 'SUPPLIER:S_SUPPKEY', '1002'
put 'ITEMLIST', 'supp:1002', 'SUPPLIER:S_NAME', 'Lionel Parts'
put 'ITEMLIST', 'supp:1002', 'SUPPLIER:ADDRESS', 'Animal Crossings 78'
put 'ITEMLIST', 'supp:1002', 'SUPPLIER:PHONE', '65552190'

put 'ITEMLIST', 'shipped:001|1001|1', 'PART-SHIPPED-BY:PS_AVALIQTY', '500'
put 'ITEMLIST', 'shipped:001|1001|1', 'PART-SHIPPED-BY:PS_SUPPLYCOST', '500'
put 'ITEMLIST', 'shipped:001|1001|1', 'PART:P_PARTKEY', '001'
put 'ITEMLIST', 'shipped:001|1001|1', 'SUPPLIER:S_SUPPKEY', '1001'

put 'ITEMLIST', 'shipped:001|1002|2', 'PART-SHIPPED-BY:PS_AVALIQTY', '1000'
put 'ITEMLIST', 'shipped:001|1002|2', 'PART-SHIPPED-BY:PS_SUPPLYCOST', '1000'
put 'ITEMLIST', 'shipped:001|1002|2', 'PART:P_PARTKEY', '001'
put 'ITEMLIST', 'shipped:001|1002|2', 'SUPPLIER:S_SUPPKEY', '1002'

put 'ITEMLIST', 'shipped:002|1002|3', 'PART-SHIPPED-BY:PS_AVALIQTY', '250'
put 'ITEMLIST', 'shipped:002|1002|3', 'PART-SHIPPED-BY:PS_SUPPLYCOST', '1000'
put 'ITEMLIST', 'shipped:002|1002|3', 'PART:P_PARTKEY', '002'
put 'ITEMLIST', 'shipped:002|1002|3', 'SUPPLIER:S_SUPPKEY', '1002'

scan 'ITEMLIST'
