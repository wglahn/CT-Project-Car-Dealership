CREATE OR REPLACE FUNCTION total_sales() 
RETURNS NUMERIC
AS 
$$
    DECLARE a_sum NUMERIC;
BEGIN
    SELECT SUM(price) INTO a_sum FROM purchase_invoice;   
    RETURN a_sum;                                                       
END;
$$ 
LANGUAGE plpgsql;

SELECT total_sales();


CREATE OR REPLACE FUNCTION total_services()
RETURNS NUMERIC
AS
$$
    DECLARE a_sum NUMERIC;
BEGIN
    SELECT SUM(amount) INTO a_sum FROM service_invoice;
    RETURN a_sum;
END;
$$
LANGUAGE plpgsql;

SELECT total_services()
