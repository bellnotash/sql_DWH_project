/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    Tập lệnh này tạo một cơ sở dữ liệu mới có tên 'DataWareHouse' sau khi kiểm tra xem nó đã tồn tại hay chưa.
    Nếu cơ sở dữ liệu tồn tại, nó sẽ bị xóa và được tạo lại. Ngoài ra, tập lệnh thiết lập ba sơ đồ
    trong cơ sở dữ liệu: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Chạy tập lệnh này sẽ xóa toàn bộ cơ sở dữ liệu 'DataWareHouse' (nếu có).
    Tất cả dữ liệu trong cơ sở dữ liệu sẽ bị xóa vĩnh viễn. Hãy thận trọng khi thực hiện
    và đảm bảo bạn đã sao lưu đúng cách trước khi chạy tập lệnh này.
*/

USE master;
GO

-- Drop and recreate the 'DataWareHouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
BEGIN
    ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWareHouse;
END;
GO

-- Create the 'DataWareHouse' database
CREATE DATABASE DataWareHouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
