CREATE TABLE dimension_product (
    product_code char(6)
    ,packing_code char(3)
    ,summary_no char(2)
    ,summary_bracket char(2)
    ,product_name nvarchar(8)
    primary key(product_code,packing_code,summary_no,summary_bracket)
);