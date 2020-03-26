CREATE TABLE dimension_contact_person (
    contact_person_code char(6)
    ,contact_person_name nvarchar(8)
    ,ss_code char(4)
    ,dealer_code char(6)
    primary key(contact_person_code,ss_code,dealer_code)
);