DELIMITER $$

CREATE PROCEDURE bronze_load_bronze()
BEGIN
    DECLARE start_time DATETIME;
    DECLARE end_time DATETIME;
    DECLARE batch_start_time DATETIME;
    DECLARE batch_end_time DATETIME;
    
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Error handling block
        SELECT '==========================================';
        SELECT 'ERROR OCCURRED DURING LOADING BRONZE LAYER';
        SELECT 'Error Message: ', MESSAGE_TEXT;
        SELECT '==========================================';
    END;
    
    SET batch_start_time = NOW();
    SELECT '================================================';
    SELECT 'Loading Bronze Layer';
    SELECT '================================================';
    
    -- Loading CRM Tables
    SELECT '------------------------------------------------';
    SELECT 'Loading CRM Tables';
    SELECT '------------------------------------------------';
    
    -- Loading crm_cust_info
    SET start_time = NOW();
    SELECT '>> Truncating Table: bronze.crm_cust_info';
    TRUNCATE TABLE bronze.crm_cust_info;
    SELECT '>> Inserting Data Into: bronze.crm_cust_info';
    LOAD DATA INFILE '/path/to/your/dataset/source_crm/cust_info.csv'
    INTO TABLE bronze.crm_cust_info
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    SET end_time = NOW();
    SELECT '>> Load Duration: ', TIMESTAMPDIFF(SECOND, start_time, end_time), ' seconds';
    SELECT '-------------';
    
    -- Loading crm_prd_info
    SET start_time = NOW();
    SELECT '>> Truncating Table: bronze.crm_prd_info';
    TRUNCATE TABLE bronze.crm_prd_info;
    SELECT '>> Inserting Data Into: bronze.crm_prd_info';
    LOAD DATA INFILE '/path/to/your/dataset/source_crm/prd_info.csv'
    INTO TABLE bronze.crm_prd_info
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    SET end_time = NOW();
    SELECT '>> Load Duration: ', TIMESTAMPDIFF(SECOND, start_time, end_time), ' seconds';
    SELECT '-------------';
    
    -- Loading crm_sales_details
    SET start_time = NOW();
    SELECT '>> Truncating Table: bronze.crm_sales_details';
    TRUNCATE TABLE bronze.crm_sales_details;
    SELECT '>> Inserting Data Into: bronze.crm_sales_details';
    LOAD DATA INFILE '/path/to/your/dataset/source_crm/sales_details.csv'
    INTO TABLE bronze.crm_sales_details
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    SET end_time = NOW();
    SELECT '>> Load Duration: ', TIMESTAMPDIFF(SECOND, start_time, end_time), ' seconds';
    SELECT '-------------';
    
    -- Loading ERP Tables
    SELECT '------------------------------------------------';
    SELECT 'Loading ERP Tables';
    SELECT '------------------------------------------------';
    
    -- Loading erp_loc_a101
    SET start_time = NOW();
    SELECT '>> Truncating Table: bronze.erp_loc_a101';
    TRUNCATE TABLE bronze.erp_loc_a101;
    SELECT '>> Inserting Data Into: bronze.erp_loc_a101';
    LOAD DATA INFILE '/path/to/your/dataset/source_erp/loc_a101.csv'
    INTO TABLE bronze.erp_loc_a101
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    SET end_time = NOW();
    SELECT '>> Load Duration: ', TIMESTAMPDIFF(SECOND, start_time, end_time), ' seconds';
    SELECT '-------------';
    
    -- Loading erp_cust_az12
    SET start_time = NOW();
    SELECT '>> Truncating Table: bronze.erp_cust_az12';
    TRUNCATE TABLE bronze.erp_cust_az12;
    SELECT '>> Inserting Data Into: bronze.erp_cust_az12';
    LOAD DATA INFILE '/path/to/your/dataset/source_erp/cust_az12.csv'
    INTO TABLE bronze.erp_cust_az12
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    SET end_time = NOW();
    SELECT '>> Load Duration: ', TIMESTAMPDIFF(SECOND, start_time, end_time), ' seconds';
    SELECT '-------------';
    
    -- Loading erp_px_cat_g1v2
    SET start_time = NOW();
    SELECT '>> Truncating Table: bronze.erp_px_cat_g1v2';
    TRUNCATE TABLE bronze.erp_px_cat_g1v2;
    SELECT '>> Inserting Data Into: bronze.erp_px_cat_g1v2';
    LOAD DATA INFILE '/path/to/your/dataset/source_erp/px_cat_g1v2.csv'
    INTO TABLE bronze.erp_px_cat_g1v2
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS;
    SET end_time = NOW();
    SELECT '>> Load Duration: ', TIMESTAMPDIFF(SECOND, start_time, end_time), ' seconds';
    SELECT '-------------';

    SET batch_end_time = NOW();
    SELECT '==========================================';
    SELECT 'Loading Bronze Layer is Completed';
    SELECT '   - Total Load Duration: ', TIMESTAMPDIFF(SECOND, batch_start_time, batch_end_time), ' seconds';
    SELECT '==========================================';
END$$

DELIMITER ;
