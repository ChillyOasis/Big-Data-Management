CREATE EXTERNAL TABLE PS_PART_SHIPPED(
P_PARTKEY VARCHAR(10),
S_SUPPKEY VARCHAR(10),
PS_AVAILQTY DECIMAL(15),
PS_SUPPLYCOST DECIMAL (8, 2),
PS_COMMENT VARCHAR(100))
row format delimited fields terminated by '|'  stored as textfile location '/user/bigdata/partsuppD';

CREATE EXTERNAL TABLE P_PART(
P_PARTKEY VARCHAR(10),
P_NAME VARCHAR(60),
P_MFGR VARCHAR(25),
P_BRAND VARCHAR(25),
P_TYPE VARCHAR(50),
P_SIZE DECIMAL(2),
P_CONTAINER VARCHAR(30),
P_RETAILPRICE DECIMAL(6,2),
P_COMMENT VARCHAR(100))
row format delimited fields terminated by '|'  stored as textfile location '/user/bigdata/partD';

CREATE EXTERNAL TABLE S_SUPPLIER(
S_SUPPKEY VARCHAR(10),
S_NAME VARCHAR(30),
S_ADDRESS VARCHAR(60),
S_PHONE VARCHAR(20),
S_ACCTBAL DECIMAL(10,2),
S_COMMENT VARCHAR(100))
row format delimited fields terminated by '|'  stored as textfile location '/user/bigdata/supplierD';

