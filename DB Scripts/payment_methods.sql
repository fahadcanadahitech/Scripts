USE [Metjeri]
GO

INSERT INTO [dbo].[Payment_Methods]
           ([payment_method_id]
           ,[payment_method]
           ,[payment_method_ar]
           ,[is_active])
     VALUES
           (<payment_method_id, int,>
           ,<payment_method, nvarchar(256),>
           ,<payment_method_ar, nvarchar(250),>
           ,<is_active, int,>)
GO

