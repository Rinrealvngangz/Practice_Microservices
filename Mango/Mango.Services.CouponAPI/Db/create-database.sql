CREATE DATABASE Mango_Coupon1
GO

USE Mango_Coupon1;
GO

CREATE TABLE product (
                         CouponId INT NOT NULL IDENTITY,
                         CouponCode NVARCHAR(MAX) NOT NULL,
                         DiscountAmount FLOAT NOT NULL,
                         MinAmount FLOAT NOT NULL
);
GO
