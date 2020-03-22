select
    sum(
        case
            year_month
            when '202001' then + isnull(product_quantity14, 0) + isnull(product_quantity15, 0) + isnull(product_quantity16, 0) + isnull(product_quantity17, 0) + isnull(product_quantity18, 0) + isnull(product_quantity19, 0) + isnull(product_quantity20, 0) + isnull(product_quantity21, 0) + isnull(product_quantity22, 0) + isnull(product_quantity23, 0) + isnull(product_quantity24, 0) + isnull(product_quantity25, 0) + isnull(product_quantity26, 0) + isnull(product_quantity27, 0) + isnull(product_quantity28, 0) + isnull(product_quantity29, 0) + isnull(product_quantity30, 0) + isnull(product_quantity31, 0)
            when '202012' then isnull(product_quantity00, 0) + isnull(product_quantity01, 0) + isnull(product_quantity02, 0) + isnull(product_quantity03, 0) + isnull(product_quantity04, 0) + isnull(product_quantity05, 0) + isnull(product_quantity06, 0) + isnull(product_quantity07, 0) + isnull(product_quantity08, 0) + isnull(product_quantity09, 0) + isnull(product_quantity10, 0) + isnull(product_quantity11, 0) + isnull(product_quantity12, 0) + isnull(product_quantity13, 0) + isnull(product_quantity14, 0) + isnull(product_quantity15, 0) + isnull(product_quantity16, 0)
            else isnull(product_quantity00, 0) + isnull(product_quantity01, 0) + isnull(product_quantity02, 0) + isnull(product_quantity03, 0) + isnull(product_quantity04, 0) + isnull(product_quantity05, 0) + isnull(product_quantity06, 0) + isnull(product_quantity07, 0) + isnull(product_quantity08, 0) + isnull(product_quantity09, 0) + isnull(product_quantity10, 0) + isnull(product_quantity11, 0) + isnull(product_quantity12, 0) + isnull(product_quantity13, 0) + isnull(product_quantity14, 0) + isnull(product_quantity15, 0) + isnull(product_quantity16, 0) + isnull(product_quantity17, 0) + isnull(product_quantity18, 0) + isnull(product_quantity19, 0) + isnull(product_quantity20, 0) + isnull(product_quantity21, 0) + isnull(product_quantity22, 0) + isnull(product_quantity23, 0) + isnull(product_quantity24, 0) + isnull(product_quantity25, 0) + isnull(product_quantity26, 0) + isnull(product_quantity27, 0) + isnull(product_quantity28, 0) + isnull(product_quantity29, 0) + isnull(product_quantity30, 0) + isnull(product_quantity31, 0)
        end
    ) as total_product_sales
from
    test_fact
where
    year_month between '202001'
    and '202012';

select * from 
test_fact;

select * from sys.columns where object_id = object_id('test_fact')

ALTER TABLE test_fact
ADD product_no CHAR(2) default '01';

ALTER TABLE test_fact
ALTER COLUMN product_code char(6);

ALTER TABLE test_fact DROP COLUMN product_no

EXEC sp_rename 'test_fact.product_code','変更する列名','COLUMN'