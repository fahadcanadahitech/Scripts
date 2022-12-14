

INSERT [dbo].[Documents] ([doc_id], [doc_title], [sub_title], [doc_date], [section], [is_section_homepage], [status], [author], [entry_date], [update_author], [update_date], [sid], [is_scrollbar], [page_title], [page_desc], [page_keywords], [album_id], [views], [last_view_date], [page_name], [section_name], [language_code], [typeof_url], [is_publish]) VALUES (4, N'contactus', N'contactus', CAST(N'2022-03-10T00:00:00.000' AS DateTime), N'0fd4b694-d994-4db7-be90-f34c7d0b6f72', N'T', 1, 0, CAST(N'2022-03-10T01:20:21.900' AS DateTime), 0, NULL, N'3a8695ef-550a-4991-9af6-3c97192306be', N'F', NULL, NULL, NULL, 0, 1, CAST(N'2022-04-20T02:02:48.720' AS DateTime), N'', N'contact-us', N'en', 1, 1)

INSERT [dbo].[Documents] ([doc_id], [doc_title], [sub_title], [doc_date], [section], [is_section_homepage], [status], [author], [entry_date], [update_author], [update_date], [sid], [is_scrollbar], [page_title], [page_desc], [page_keywords], [album_id], [views], [last_view_date], [page_name], [section_name], [language_code], [typeof_url], [is_publish]) VALUES (5, N'أتصل بنا', N'أتصل بنا', CAST(N'2022-03-10T00:00:00.000' AS DateTime), N'121caa23-2e98-4676-be30-efb5aee31c59', N'T', 1, 0, CAST(N'2022-03-10T01:24:01.973' AS DateTime), 0, NULL, N'02b6d731-01bc-47f4-803d-28d6acc1f36c', N'F', NULL, NULL, NULL, 0, NULL, NULL, N'', N'أتصل-بنا', N'ar', 1, 1)

INSERT [dbo].[Documents] ([doc_id], [doc_title], [sub_title], [doc_date], [section], [is_section_homepage], [status], [author], [entry_date], [update_author], [update_date], [sid], [is_scrollbar], [page_title], [page_desc], [page_keywords], [album_id], [views], [last_view_date], [page_name], [section_name], [language_code], [typeof_url], [is_publish]) VALUES (6, N'Home Page', N'Home Page', CAST(N'2022-03-10T00:00:00.000' AS DateTime), N'f641d777-8d6d-4484-b395-b31c0d6ffdea', N'T', 1, 0, CAST(N'2022-03-10T01:28:17.350' AS DateTime), 0, NULL, N'c6804679-08be-4629-9f0a-b9ab2b42cd52', N'F', N'Metjeri | The Best Retail Store in Dubai', N'Metjeri | The Best Retail Store in Dubai', N'Metjeri | The Best Retail Store in Dubai', 0, NULL, NULL, N'', N'home-page', N'en', 1, 1)
INSERT [dbo].[Documents] ([doc_id], [doc_title], [sub_title], [doc_date], [section], [is_section_homepage], [status], [author], [entry_date], [update_author], [update_date], [sid], [is_scrollbar], [page_title], [page_desc], [page_keywords], [album_id], [views], [last_view_date], [page_name], [section_name], [language_code], [typeof_url], [is_publish]) VALUES (7, N'الصفحة الرئيسية', N'الصفحة الرئيسية', CAST(N'2022-03-10T00:00:00.000' AS DateTime), N'62d4b978-2a9d-4e48-a234-e7c8aa993d1a', N'T', 1, 0, CAST(N'2022-03-10T01:30:17.490' AS DateTime), 0, NULL, N'b7ac939f-bce7-474f-ad86-bc58e8113c0a', N'F', N'متجري | افضل متجر متنوع في دبي الامارات', N'متجري | افضل متجر متنوع في دبي الامارات', N'متجري | افضل متجر متنوع في دبي الامارات', 0, NULL, NULL, N'', N'الصفحة-الرئيسية', N'ar', 1, 1)


SET IDENTITY_INSERT [dbo].[Document_Text] ON 

INSERT [dbo].[Document_Text] ([serial], [doc_id], [sid], [doc_text], [doc_formated_text]) VALUES (4, 4, N'3a8695ef-550a-4991-9af6-3c97192306be', N'', N'')
INSERT [dbo].[Document_Text] ([serial], [doc_id], [sid], [doc_text], [doc_formated_text]) VALUES (5, 5, N'02b6d731-01bc-47f4-803d-28d6acc1f36c', N'', N'')
INSERT [dbo].[Document_Text] ([serial], [doc_id], [sid], [doc_text], [doc_formated_text]) VALUES (6, 6, N'c6804679-08be-4629-9f0a-b9ab2b42cd52', N'', N'')
INSERT [dbo].[Document_Text] ([serial], [doc_id], [sid], [doc_text], [doc_formated_text]) VALUES (7, 7, N'b7ac939f-bce7-474f-ad86-bc58e8113c0a', N'', N'')

SET IDENTITY_INSERT [dbo].[Document_Text] OFF
INSERT [dbo].[Document_Status] ([status], [description]) VALUES (1, N'Visible')
INSERT [dbo].[Document_Status] ([status], [description]) VALUES (2, N'Hidden')
