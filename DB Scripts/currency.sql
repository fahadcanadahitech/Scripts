USE [Metjeri]
GO
SET IDENTITY_INSERT [dbo].[Currency] ON 

INSERT [dbo].[Currency] ([id], [currency], [name], [is_base_currency]) VALUES (1, N'AED', N'UAE Dirhams', 1)
INSERT [dbo].[Currency] ([id], [currency], [name], [is_base_currency]) VALUES (2, N'USD', N'US Dollars', 0)
SET IDENTITY_INSERT [dbo].[Currency] OFF
