USE [Metjeri]
GO
SET IDENTITY_INSERT [dbo].[Payment_Methods] ON 

INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (1, 1, N'Cash On Delivery', N'Cash On Delivery', 1)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (2, 2, N'Bank Transffer', N'Bank Transffer', 0)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (3, 3, N'Wallet', N'Wallet', 0)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (4, 4, N'PayPal', N'PayPal', 0)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (5, 5, N'Telr (Credit Card Payment)', N'Telr (Credit Card Payment)', 0)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (6, 6, N'N-Genius (Credit Card Payment)', N'N-Genius(Credit Card Payment)', 0)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (7, 7, N'PayTabs (Credit Card Payment)', N'PayTabs (Credit Card Payment)', 0)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (8, 8, N'PaytabsV2 (Credit Card Payment)', N'PaytabsV2 (Credit Card Payment)', 0)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (9, 9, N'Myfatoorah (Credit Card Payment)', N'Myfatoorah (Credit Card Payment)', 0)
INSERT [dbo].[Payment_Methods] ([serial], [payment_method_id], [payment_method], [payment_method_ar], [is_active]) VALUES (10, 10, N'CcAvenue (Credit card)', N'CcAvenue (Credit card)', 0)
SET IDENTITY_INSERT [dbo].[Payment_Methods] OFF
