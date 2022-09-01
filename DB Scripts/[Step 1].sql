CREATE TABLE [dbo].[ActionDetails](
	[id] [int] NOT NULL,
	[title] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_ActionDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Advertise]    Script Date: 8/25/2022 4:02:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertise](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title_en] [nvarchar](500) NULL,
	[title_ar] [nvarchar](500) NULL,
	[desc_en] [nvarchar](max) NULL,
	[desc_ar] [nvarchar](max) NULL,
	[img_file] [nvarchar](50) NULL,
	[url_en] [nvarchar](1000) NULL,
	[url_ar] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Advertise] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Albums]    Script Date: 8/25/2022 4:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[album_title] [nvarchar](100) NOT NULL,
	[folder_name] [nvarchar](100) NOT NULL,
	[is_active] [smallint] NOT NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[App_Push_Notifications]    Script Date: 8/25/2022 4:02:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Push_Notifications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[notification_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[body] [nvarchar](100) NOT NULL,
	[return_notificationid] [nvarchar](100) NULL,
	[type] [nvarchar](100) NULL,
	[app_registration_id] [int] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NULL,
	[is_sent] [int] NOT NULL,
	[service_type] [int] NULL,
	[is_enabled] [int] NOT NULL,
	[lang] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[App_Registered_Devices]    Script Date: 8/25/2022 4:02:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Registered_Devices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[registeration_id] [int] NOT NULL,
	[device_id] [nvarchar](100) NOT NULL,
	[firebase_token] [nvarchar](250) NULL,
	[appcenter_token] [nvarchar](250) NULL,
	[entry_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[device_type] [nvarchar](100) NULL,
 CONSTRAINT [PK_App_Registered_Devices] PRIMARY KEY CLUSTERED 
(
	[registeration_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 8/25/2022 4:02:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[application_id] [uniqueidentifier] NOT NULL,
	[application_name] [nvarchar](100) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NOT NULL,
	[is_enabled] [int] NOT NULL,
	[description] [nvarchar](100) NOT NULL,
	[app_version] [nvarchar](50) NOT NULL,
	[android_version] [nvarchar](50) NULL,
	[android_is_mandatory] [int] NOT NULL,
	[mandatory_version] [nvarchar](50) NULL,
	[playstore_link] [nvarchar](max) NULL,
	[applestore_link] [nvarchar](max) NULL,
	[ios_version] [nvarchar](50) NOT NULL,
	[ios_is_mandatory] [int] NOT NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[application_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/25/2022 4:02:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/25/2022 4:02:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/25/2022 4:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/25/2022 4:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/25/2022 4:02:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[sid] [uniqueidentifier] NULL,
	[role_name] [nvarchar](50) NULL,
	[full_name_en] [nvarchar](50) NULL,
	[full_name_ar] [nvarchar](50) NULL,
	[first_name_en] [nvarchar](50) NULL,
	[first_name_ar] [nvarchar](50) NULL,
	[last_name_en] [nvarchar](50) NULL,
	[last_name_ar] [nvarchar](50) NULL,
	[facebook_id] [nvarchar](50) NULL,
	[address_en] [nvarchar](500) NULL,
	[address_ar] [nvarchar](500) NULL,
	[city] [nvarchar](50) NULL,
	[country_id] [int] NULL,
	[is_approved] [int] NOT NULL,
	[registered_email] [nvarchar](200) NULL,
	[alternate_email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[entry_date] [datetime] NOT NULL,
	[entry_user_id] [int] NULL,
	[entry_user] [uniqueidentifier] NULL,
	[update_date] [datetime] NULL,
	[update_user] [uniqueidentifier] NULL,
	[update_user_id] [int] NULL,
	[shipping_name] [nvarchar](1000) NULL,
	[shipping_firstname] [nvarchar](max) NULL,
	[shipping_lastname] [nvarchar](max) NULL,
	[shipping_address] [nvarchar](max) NULL,
	[shipping_city] [nvarchar](500) NULL,
	[shipping_country_id] [int] NULL,
	[is_facebook_login] [int] NULL,
	[isshipping_addresssame] [bit] NULL,
	[user_currency] [int] NULL,
	[is_google_user] [int] NULL,
	[google_user_id] [nvarchar](100) NULL,
	[is_data_completed] [int] NOT NULL,
	[google_account_pwd] [nvarchar](max) NULL,
	[is_mobile] [bit] NOT NULL,
	[is_mobile_email_verified] [bit] NOT NULL,
	[shipping_city_id] [int] NOT NULL,
	[is_guest] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner_Size]    Script Date: 8/25/2022 4:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner_Size](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[banner_size] [nvarchar](50) NULL,
 CONSTRAINT [PK_Banner_Size] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner_Zones]    Script Date: 8/25/2022 4:02:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner_Zones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zone_values] [int] NOT NULL,
 CONSTRAINT [PK_Banner_Zones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 8/25/2022 4:02:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[language_id] [int] NULL,
	[title] [nvarchar](100) NOT NULL,
	[description] [nvarchar](500) NOT NULL,
	[url] [nvarchar](100) NOT NULL,
	[size] [int] NOT NULL,
	[zone_id] [int] NOT NULL,
	[image_name] [nvarchar](50) NOT NULL,
	[sid] [uniqueidentifier] NULL,
	[entry_date] [datetime] NULL,
 CONSTRAINT [PK_Banners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cache]    Script Date: 8/25/2022 4:02:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cache](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cache_id] [int] NULL,
	[durationhome] [nvarchar](50) NULL,
	[durationinternal] [nvarchar](50) NULL,
	[homedbcache] [int] NULL,
	[internaldbcache] [int] NULL,
 CONSTRAINT [PK_Cache] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogue_Controls]    Script Date: 8/25/2022 4:02:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogue_Controls](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[control] [nvarchar](100) NULL,
 CONSTRAINT [PK_Catalogue_Controls] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogue_ItemDatasheet]    Script Date: 8/25/2022 4:02:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogue_ItemDatasheet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NULL,
	[datasheet_file] [nvarchar](50) NULL,
	[title_en] [nvarchar](500) NULL,
	[title_ar] [nvarchar](500) NULL,
	[entry_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogue_ItemImages]    Script Date: 8/25/2022 4:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogue_ItemImages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NULL,
	[is_default] [int] NULL,
	[title_en] [nvarchar](50) NULL,
	[title_ar] [nvarchar](50) NULL,
	[img_file] [nvarchar](50) NULL,
	[entry_date] [datetime] NULL,
	[item_order] [int] NOT NULL,
 CONSTRAINT [PK_Catalogue_ItemImages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogueActivityLog]    Script Date: 8/25/2022 4:02:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogueActivityLog](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[action] [int] NOT NULL,
	[section] [nvarchar](256) NOT NULL,
	[reff_table_name] [nvarchar](256) NOT NULL,
	[reff_table_id] [int] NOT NULL,
	[text] [nvarchar](max) NOT NULL,
	[entry_user] [uniqueidentifier] NOT NULL,
	[entry_date] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogues]    Script Date: 8/25/2022 4:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[catalogue_title_en] [nvarchar](500) NULL,
	[catalogue_title_ar] [nvarchar](500) NULL,
	[image_count] [int] NULL,
	[datasheet_count] [int] NULL,
	[category_style] [int] NULL,
	[levels] [int] NULL,
	[is_visible] [int] NULL,
	[banner_img] [nvarchar](100) NULL,
 CONSTRAINT [PK_Catalogues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogues_Category]    Script Date: 8/25/2022 4:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogues_Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[catalogue_id] [int] NOT NULL,
	[category_title_en] [nvarchar](500) NOT NULL,
	[category_title_ar] [nvarchar](500) NOT NULL,
	[category_desc_en] [nvarchar](max) NOT NULL,
	[category_desc_ar] [nvarchar](max) NOT NULL,
	[catupdateurl_en] [nvarchar](max) NOT NULL,
	[catupdateurl_ar] [nvarchar](max) NOT NULL,
	[menu_type] [int] NOT NULL,
	[logo_file] [nvarchar](50) NOT NULL,
	[banner_img] [nvarchar](50) NOT NULL,
	[parent_id] [int] NOT NULL,
	[position] [int] NOT NULL,
	[is_featured] [int] NULL,
 CONSTRAINT [PK_Catalogues_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogues_FieldsTemplate]    Script Date: 8/25/2022 4:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogues_FieldsTemplate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[catalogue_id] [int] NOT NULL,
	[control_id] [int] NOT NULL,
	[language_id] [int] NULL,
	[field_title] [nvarchar](500) NOT NULL,
	[label] [nvarchar](500) NOT NULL,
	[calling_text] [nvarchar](100) NOT NULL,
	[type] [nvarchar](100) NOT NULL,
	[default_value] [nvarchar](50) NULL,
	[is_required] [int] NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Catalogues_FieldsTemplate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogues_ItemFields]    Script Date: 8/25/2022 4:02:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogues_ItemFields](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NOT NULL,
	[field_id] [int] NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Catalogues_ItemFields] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogues_Items]    Script Date: 8/25/2022 4:02:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogues_Items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[catalogue_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[item_en] [nvarchar](500) NOT NULL,
	[item_ar] [nvarchar](500) NULL,
	[description_en] [nvarchar](max) NULL,
	[description_ar] [nvarchar](max) NULL,
	[updatedurl_en] [nvarchar](max) NOT NULL,
	[updatedurl_ar] [nvarchar](max) NOT NULL,
	[img_file] [nvarchar](50) NULL,
	[entry_date] [datetime] NOT NULL,
	[banner_img] [nvarchar](50) NULL,
	[item_order] [int] NULL,
	[is_featured] [int] NOT NULL,
	[itemviews] [int] NOT NULL,
	[is_visible] [int] NOT NULL,
	[youtube_url] [nvarchar](512) NULL,
 CONSTRAINT [PK_Catalogues_ItemsTable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Centralized_Url]    Script Date: 8/25/2022 4:02:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Centralized_Url](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tablename] [nvarchar](200) NOT NULL,
	[tabledata_id] [int] NOT NULL,
	[url_en] [nvarchar](max) NOT NULL,
	[url_ar] [nvarchar](max) NOT NULL,
	[physical_url] [nvarchar](max) NOT NULL,
	[auto_url] [nvarchar](max) NOT NULL,
	[friendly_url] [nvarchar](max) NOT NULL,
	[friendly_url_2] [nvarchar](max) NOT NULL,
	[entry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Centralized_Url] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 8/25/2022 4:02:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [int] NOT NULL,
	[city_name_en] [nvarchar](50) NOT NULL,
	[city_name_ar] [nvarchar](50) NOT NULL,
	[shipping_pricecity] [money] NOT NULL,
	[shipping_weight] [int] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 8/25/2022 4:02:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NOT NULL,
	[country_en] [varchar](255) NOT NULL,
	[country_ar] [nvarchar](100) NULL,
	[price] [money] NULL,
	[phone_code] [nvarchar](max) NULL,
	[iso_country_code] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupon_Profiles]    Script Date: 8/25/2022 4:02:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupon_Profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[coupon_id] [int] NULL,
	[profile_id] [nvarchar](128) NULL,
	[invoice_id] [int] NULL,
	[entry_date] [datetime] NULL,
 CONSTRAINT [PK_Coupon_Profiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 8/25/2022 4:02:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[currency] [nvarchar](512) NOT NULL,
	[name] [nvarchar](512) NOT NULL,
	[is_base_currency] [bit] NOT NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency_Converter]    Script Date: 8/25/2022 4:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency_Converter](
	[id] [int] NOT NULL,
	[currency_name_en] [nvarchar](50) NULL,
	[currency_name_ar] [nvarchar](50) NULL,
	[details_en] [nvarchar](150) NULL,
	[details_ar] [nvarchar](150) NULL,
	[rate] [money] NULL,
	[flag_icon] [nvarchar](50) NULL,
	[is_base_currency] [int] NOT NULL,
 CONSTRAINT [PK_Currency_Converter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document_History]    Script Date: 8/25/2022 4:02:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document_History](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doc_id] [int] NULL,
	[title] [nvarchar](500) NULL,
	[sub_title] [nvarchar](1000) NULL,
	[doc_html] [nvarchar](max) NULL,
	[doc_plaintext] [nvarchar](max) NULL,
	[doc_status] [int] NULL,
	[update_user] [nvarchar](128) NULL,
	[update_date] [datetime] NULL,
	[user_update] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Document_History] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document_Status]    Script Date: 8/25/2022 4:02:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document_Status](
	[status] [int] NOT NULL,
	[description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Document_Status] PRIMARY KEY CLUSTERED 
(
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document_Text]    Script Date: 8/25/2022 4:02:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document_Text](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[doc_id] [int] NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[doc_text] [ntext] NULL,
	[doc_formated_text] [ntext] NULL,
 CONSTRAINT [PK_Document_Text] PRIMARY KEY CLUSTERED 
(
	[serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Document_Text_Unique] UNIQUE NONCLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 8/25/2022 4:02:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[doc_id] [int] NOT NULL,
	[doc_title] [nvarchar](256) NOT NULL,
	[sub_title] [nvarchar](256) NULL,
	[doc_date] [datetime] NULL,
	[section] [uniqueidentifier] NOT NULL,
	[is_section_homepage] [char](1) NOT NULL,
	[status] [int] NOT NULL,
	[author] [int] NULL,
	[entry_date] [datetime] NULL,
	[update_author] [int] NULL,
	[update_date] [datetime] NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[is_scrollbar] [char](1) NULL,
	[page_title] [nvarchar](255) NULL,
	[page_desc] [nvarchar](1000) NULL,
	[page_keywords] [nvarchar](1000) NULL,
	[album_id] [int] NULL,
	[views] [int] NULL,
	[last_view_date] [datetime] NULL,
	[page_name] [nvarchar](255) NULL,
	[section_name] [nvarchar](255) NULL,
	[language_code] [nvarchar](2) NULL,
	[typeof_url] [int] NULL,
	[is_publish] [int] NULL,
 CONSTRAINT [PK_Documents_1] PRIMARY KEY CLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Document_Title_Unique] UNIQUE NONCLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Download_Category]    Script Date: 8/25/2022 4:02:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download_Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NULL,
	[section_id] [int] NULL,
	[category_en] [nvarchar](50) NULL,
	[category_ar] [nvarchar](50) NULL,
	[description_en] [nvarchar](1000) NULL,
	[description_ar] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Download_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Download_Files]    Script Date: 8/25/2022 4:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download_Files](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NULL,
	[category_id] [int] NULL,
	[title_en] [nvarchar](50) NULL,
	[title_ar] [nvarchar](50) NULL,
	[description_en] [nvarchar](500) NULL,
	[description_ar] [nvarchar](500) NULL,
	[file_name] [nvarchar](50) NULL,
	[upload_date] [datetime] NULL,
 CONSTRAINT [PK_Photo_Store] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Download_Section]    Script Date: 8/25/2022 4:02:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download_Section](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NULL,
	[section_en] [nvarchar](100) NULL,
	[section_ar] [nvarchar](100) NULL,
	[description_en] [nvarchar](1000) NULL,
	[description_ar] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Download_Section] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Error]    Script Date: 8/25/2022 4:02:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Error](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[error_id] [int] NOT NULL,
	[error_message] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faq]    Script Date: 8/25/2022 4:02:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faq](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[entry_date] [datetime] NULL,
	[language] [int] NULL,
 CONSTRAINT [PK_Faq] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 8/25/2022 4:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[column_id] [int] NOT NULL,
	[language] [int] NULL,
	[item] [nvarchar](100) NULL,
	[url] [nvarchar](256) NULL,
	[status] [int] NULL,
	[is_internal] [int] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer_Columns]    Script Date: 8/25/2022 4:02:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer_Columns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[column_title] [nvarchar](100) NULL,
	[language] [int] NULL,
	[url] [nvarchar](256) NULL,
 CONSTRAINT [PK_Footer_Columns] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gift_Coupons]    Script Date: 8/25/2022 4:02:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gift_Coupons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[order_id] [int] NULL,
	[order_sid] [uniqueidentifier] NULL,
	[profile_id] [nvarchar](128) NOT NULL,
	[profile_sid] [uniqueidentifier] NOT NULL,
	[gift_coupon_code] [nvarchar](200) NULL,
	[gift_amount] [money] NOT NULL,
	[giftamount_id] [int] NULL,
	[recipient_profile_id] [nvarchar](128) NOT NULL,
	[message] [nvarchar](2000) NULL,
	[gift_card_applied] [int] NOT NULL,
	[entry_user] [nvarchar](128) NULL,
	[entry_date] [datetime] NOT NULL,
	[update_user] [nvarchar](128) NULL,
	[update_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Gift_Coupons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gift_Coupons_Amounts]    Script Date: 8/25/2022 4:02:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gift_Coupons_Amounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [money] NOT NULL,
 CONSTRAINT [PK_Gift_Coupons_amount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 8/25/2022 4:02:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[historyid] [int] IDENTITY(1,1) NOT NULL,
	[history] [nvarchar](max) NOT NULL,
	[userid] [nvarchar](128) NOT NULL,
	[entrydate] [datetime] NOT NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[historyid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History_Log]    Script Date: 8/25/2022 4:02:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History_Log](
	[history_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[inventory_id] [int] NOT NULL,
	[option1_id] [int] NOT NULL,
	[option2_id] [int] NOT NULL,
	[color_id] [int] NOT NULL,
	[size_id] [int] NOT NULL,
	[product_name] [nvarchar](100) NOT NULL,
	[description_short] [nvarchar](max) NOT NULL,
	[sku_code] [nvarchar](250) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [money] NOT NULL,
	[old_price] [money] NOT NULL,
	[type_name] [nvarchar](250) NOT NULL,
	[size_name] [nvarchar](250) NOT NULL,
	[update_date] [datetime] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[entry_user_sid] [uniqueidentifier] NOT NULL,
	[profile_details] [nvarchar](max) NOT NULL,
	[action] [int] NOT NULL,
	[entry_user_id] [nvarchar](128) NULL,
 CONSTRAINT [PK_History_Log] PRIMARY KEY CLUSTERED 
(
	[history_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageAlbums]    Script Date: 8/25/2022 4:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageAlbums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[album_name_en] [nvarchar](50) NULL,
	[album_name_ar] [nvarchar](50) NULL,
	[album_description_en] [nvarchar](100) NULL,
	[album_description_ar] [nvarchar](100) NULL,
	[updatedurl_en] [nvarchar](max) NULL,
	[updatedurl_ar] [nvarchar](max) NULL,
	[is_published] [int] NULL,
 CONSTRAINT [PK_Image_Albums] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 8/25/2022 4:02:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title_en] [nvarchar](50) NULL,
	[title_ar] [nvarchar](50) NULL,
	[description_en] [nvarchar](100) NULL,
	[description_ar] [nvarchar](100) NULL,
	[file_name] [nvarchar](50) NULL,
	[sid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagesOfAlbum]    Script Date: 8/25/2022 4:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagesOfAlbum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[album_id] [int] NULL,
	[image_id] [int] NULL,
	[is_cover] [int] NOT NULL,
	[item_order] [int] NOT NULL,
 CONSTRAINT [PK_ImagesOfAlbum] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_images]    Script Date: 8/25/2022 4:02:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_images_id] [int] NOT NULL,
	[inventory_id] [int] NOT NULL,
	[color_id] [int] NOT NULL,
	[product_image] [nvarchar](50) NOT NULL,
	[entry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Inventory_images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 8/25/2022 4:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[invoice_id] [int] NOT NULL,
	[invoice_sid] [uniqueidentifier] NOT NULL,
	[profile_id] [nvarchar](128) NOT NULL,
	[profile_sid] [uniqueidentifier] NOT NULL,
	[order_id] [int] NOT NULL,
	[order_sid] [uniqueidentifier] NOT NULL,
	[coupon_id] [int] NULL,
	[gift_card_id] [int] NULL,
	[gift_card_amount] [money] NULL,
	[wallet_id] [int] NULL,
	[wallet_debit_amount] [money] NULL,
	[total] [money] NOT NULL,
	[total_discount] [money] NOT NULL,
	[shipping_method] [nvarchar](150) NOT NULL,
	[shipping_price] [money] NOT NULL,
	[coupon_discount_price] [money] NOT NULL,
	[other_costs] [money] NOT NULL,
	[other_costs_details] [nvarchar](250) NOT NULL,
	[original_grand_total] [money] NULL,
	[taxable_amount] [money] NOT NULL,
	[grand_total] [money] NOT NULL,
	[is_paid] [int] NOT NULL,
	[payment_method] [int] NOT NULL,
	[payment_date] [datetime] NULL,
	[shipping_address] [nvarchar](250) NULL,
	[shipping_country] [int] NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
	[entry_date_utc] [datetime] NULL,
	[update_date_utc] [datetime] NULL,
	[entry_profileid] [nvarchar](128) NULL,
	[entry_profile_id] [uniqueidentifier] NULL,
	[update_profileid] [nvarchar](128) NULL,
	[update_profile_id] [uniqueidentifier] NULL,
	[is_refund] [int] NOT NULL,
	[refund_amount] [money] NOT NULL,
	[is_reverse_serial] [int] NULL,
	[convertion_charge] [money] NOT NULL,
	[currency_id] [int] NOT NULL,
	[shipping_status_id] [int] NOT NULL,
	[shipping_company_id] [int] NULL,
	[tracking_no] [nvarchar](50) NOT NULL,
	[is_quantity_deducted] [int] NOT NULL,
	[is_email_sent] [int] NOT NULL,
	[related_invoice] [int] NULL,
	[related_order] [int] NULL,
	[is_tax] [int] NOT NULL,
	[vat_percentage] [int] NOT NULL,
	[vat_amount] [money] NOT NULL,
	[cash_on_delivery_amount] [money] NOT NULL,
	[is_cash_on_delivery] [int] NOT NULL,
	[is_mobile] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[invoice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_order_id] UNIQUE NONCLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 8/25/2022 4:02:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[language_id] [int] NOT NULL,
	[language_name] [nvarchar](100) NOT NULL,
	[language_shortname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Links_Mapping]    Script Date: 8/25/2022 4:03:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links_Mapping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[language] [int] NULL,
	[category_id] [int] NULL,
	[oldurl] [nvarchar](max) NULL,
	[newurl] [nvarchar](max) NULL,
	[is_querystring] [int] NULL,
	[querystring_name] [nvarchar](500) NULL,
	[querystring_value] [nvarchar](50) NULL,
	[is_redirecting] [int] NULL,
 CONSTRAINT [PK_Links_Mapping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Links_Mapping_Category]    Script Date: 8/25/2022 4:03:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links_Mapping_Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[language] [int] NULL,
	[category] [nvarchar](200) NULL,
 CONSTRAINT [PK_Links_Mapping_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 8/25/2022 4:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lat] [numeric](18, 6) NOT NULL,
	[lng] [numeric](18, 6) NOT NULL,
	[title_en] [nvarchar](256) NOT NULL,
	[title_ar] [nvarchar](256) NULL,
	[description_en] [nvarchar](1024) NULL,
	[description_ar] [nvarchar](1024) NULL,
	[logo_file] [nvarchar](50) NULL,
	[zoom_level] [int] NULL,
	[entry_date] [datetime] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu_Images]    Script Date: 8/25/2022 4:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu_Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[file_name] [nvarchar](50) NULL,
	[language] [int] NULL,
	[imglink] [nvarchar](max) NULL,
 CONSTRAINT [PK_Menu_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu_ItemType]    Script Date: 8/25/2022 4:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu_ItemType](
	[type] [int] NOT NULL,
	[desc] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Menu_ItemType] PRIMARY KEY CLUSTERED 
(
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 8/25/2022 4:03:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](255) NULL,
	[link] [nvarchar](1000) NOT NULL,
	[language] [int] NOT NULL,
	[menu_type] [int] NOT NULL,
	[parent_id] [int] NOT NULL,
	[position] [int] NOT NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsLetter]    Script Date: 8/25/2022 4:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsLetter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](150) NULL,
	[email] [nvarchar](50) NULL,
	[entry_date] [datetime] NULL,
 CONSTRAINT [PK_NewsLetter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newsletterdownload]    Script Date: 8/25/2022 4:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newsletterdownload](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[html_en] [nvarchar](max) NULL,
	[html_text_en] [nvarchar](max) NULL,
	[html_ar] [nvarchar](max) NULL,
	[html_text_ar] [nvarchar](max) NULL,
	[filename] [nvarchar](50) NULL,
	[entry_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[language] [int] NULL,
	[title] [nvarchar](500) NULL,
	[issueno] [nvarchar](50) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_Newsletterdownload] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Calculations]    Script Date: 8/25/2022 4:03:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Calculations](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[order_calculation_id] [int] NOT NULL,
	[order_calculation_sid] [uniqueidentifier] NOT NULL,
	[order_id] [int] NOT NULL,
	[order_sid] [uniqueidentifier] NOT NULL,
	[profile_id] [nvarchar](128) NOT NULL,
	[coupon_id] [int] NULL,
	[gift_card_id] [int] NULL,
	[gift_card_amount] [money] NULL,
	[wallet_id] [int] NULL,
	[wallet_debit_amount] [money] NULL,
	[total] [money] NOT NULL,
	[shipping_price] [money] NOT NULL,
	[coupon_discount_price] [money] NOT NULL,
	[taxable_amount] [money] NOT NULL,
	[payment_method] [int] NOT NULL,
	[grand_total] [money] NOT NULL,
	[is_paid] [int] NOT NULL,
	[payment_date] [datetime] NULL,
	[is_tax] [int] NOT NULL,
	[vat_percentage] [int] NOT NULL,
	[vat_amount] [money] NOT NULL,
	[is_refund] [int] NOT NULL,
	[refund_amount] [money] NOT NULL,
	[is_reverse_serial] [int] NULL,
	[convertion_charge] [money] NOT NULL,
	[currency_id] [int] NOT NULL,
	[shipping_status_id] [int] NOT NULL,
	[shipping_company_id] [int] NULL,
	[tracking_no] [nvarchar](50) NOT NULL,
	[is_email_sent] [int] NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
	[entry_profile_id] [nvarchar](128) NULL,
	[update_profile_id] [nvarchar](128) NULL,
	[cash_on_delivery_amount] [money] NOT NULL,
	[is_cash_on_delivery] [int] NOT NULL,
	[transaction_id] [nvarchar](128) NULL,
	[payment_gateway_order_id] [nvarchar](256) NULL,
	[payment_gateway_link] [nvarchar](256) NULL,
 CONSTRAINT [PK_Order_Calculations] PRIMARY KEY CLUSTERED 
(
	[order_calculation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Order_UniqueKey] UNIQUE NONCLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 8/25/2022 4:03:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[order_id] [int] NOT NULL,
	[order_sid] [uniqueidentifier] NOT NULL,
	[serial] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[item_sid] [uniqueidentifier] NOT NULL,
	[item_category_id] [int] NOT NULL,
	[item_unit_price] [money] NOT NULL,
	[quantity] [int] NOT NULL,
	[total_price] [money] NOT NULL,
	[discount_percentage] [float] NOT NULL,
	[discount] [money] NOT NULL,
	[grand_total] [money] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
	[inventory_id] [int] NOT NULL,
	[is_stockout] [int] NOT NULL,
	[is_reverse] [int] NOT NULL,
	[is_reverse_serial] [int] NOT NULL,
	[cancel_quantity] [int] NOT NULL,
	[product_details] [nvarchar](max) NULL,
	[additional_comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_History_Actions]    Script Date: 8/25/2022 4:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_History_Actions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action_id] [int] NOT NULL,
	[action_text] [nvarchar](128) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/25/2022 4:03:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[order_sid] [uniqueidentifier] NOT NULL,
	[profile_intid] [nvarchar](128) NULL,
	[profile_id] [uniqueidentifier] NOT NULL,
	[session_id] [uniqueidentifier] NULL,
	[total_price] [money] NOT NULL,
	[order_type] [int] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
	[entry_date_utc] [datetime] NULL,
	[update_date_utc] [datetime] NULL,
	[currency_id] [int] NOT NULL,
	[shipping_name] [nvarchar](max) NOT NULL,
	[shipping_firstname] [nvarchar](max) NOT NULL,
	[shipping_lastname] [nvarchar](max) NOT NULL,
	[shipping_address] [nvarchar](max) NOT NULL,
	[shipping_city] [nvarchar](500) NOT NULL,
	[alternate_email] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[shipping_country_id] [int] NULL,
	[is_profileid] [int] NOT NULL,
	[is_invoiced] [int] NOT NULL,
	[related_order] [int] NULL,
	[is_product] [int] NULL,
	[is_registered_user] [int] NULL,
	[is_confirmed] [int] NOT NULL,
	[is_return_completed] [int] NOT NULL,
	[confirmation_date] [datetime] NULL,
	[is_cancelled] [int] NOT NULL,
	[is_mobile] [int] NOT NULL,
	[shipping_city_id] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_History]    Script Date: 8/25/2022 4:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_History](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[description_short] [nvarchar](max) NOT NULL,
	[description_long] [nvarchar](max) NOT NULL,
	[before_change] [nvarchar](max) NOT NULL,
	[after_change] [nvarchar](max) NOT NULL,
	[action_int] [int] NOT NULL,
	[action_text] [nvarchar](256) NOT NULL,
	[entry_time] [datetime] NOT NULL,
	[entry_date_utc] [datetime] NULL,
	[action_user_sid] [nvarchar](256) NULL,
	[action_user_id] [nvarchar](128) NULL,
 CONSTRAINT [PK_Orders_History] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Methods]    Script Date: 8/25/2022 4:03:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Methods](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[payment_method_id] [int] NOT NULL,
	[payment_method] [nvarchar](256) NOT NULL,
	[payment_method_ar] [nvarchar](250) NULL,
	[is_active] [int] NOT NULL,
 CONSTRAINT [PK_Payment_Methods] PRIMARY KEY CLUSTERED 
(
	[payment_method_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Methods_CountryWise]    Script Date: 8/25/2022 4:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Methods_CountryWise](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[payment_method_id] [int] NOT NULL,
	[country_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Policies]    Script Date: 8/25/2022 4:03:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Policies](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[title_en] [nvarchar](100) NOT NULL,
	[title_ar] [nvarchar](100) NOT NULL,
	[description_en] [nvarchar](max) NOT NULL,
	[description_ar] [nvarchar](max) NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[entry_user] [nvarchar](128) NOT NULL,
	[update_date] [datetime] NULL,
	[update_user] [nvarchar](128) NULL,
 CONSTRAINT [PK_Payment_Policies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo_Scroller]    Script Date: 8/25/2022 4:03:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo_Scroller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title_en] [nvarchar](50) NULL,
	[title_ar] [nvarchar](50) NULL,
	[description_en] [nvarchar](100) NULL,
	[description_ar] [nvarchar](100) NULL,
	[width] [nvarchar](10) NULL,
	[height] [nvarchar](10) NULL,
	[file_name] [nvarchar](50) NULL,
	[url_en] [nvarchar](max) NULL,
	[url_ar] [nvarchar](max) NULL,
	[item_order] [int] NOT NULL,
 CONSTRAINT [PK_PhotoScroller] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoSlider_Albums]    Script Date: 8/25/2022 4:03:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoSlider_Albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[album_name_en] [nvarchar](50) NULL,
	[album_name_ar] [nvarchar](50) NULL,
	[album_description_en] [nvarchar](100) NULL,
	[album_description_ar] [nvarchar](100) NULL,
	[language] [int] NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_PhotoSlider_Albums] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoSlider_Images]    Script Date: 8/25/2022 4:03:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoSlider_Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[album_id] [int] NOT NULL,
	[title_en] [nvarchar](50) NULL,
	[title_ar] [nvarchar](50) NULL,
	[description_en] [nvarchar](100) NULL,
	[description_ar] [nvarchar](100) NULL,
	[width] [nvarchar](10) NULL,
	[height] [nvarchar](10) NULL,
	[file_name] [nvarchar](50) NULL,
	[url] [nvarchar](1000) NULL,
	[item_order] [int] NOT NULL,
	[video_url] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_PhotoSlider_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poll_Answers]    Script Date: 8/25/2022 4:03:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poll_Answers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[qid] [int] NULL,
	[answer_text_en] [nvarchar](500) NULL,
	[answer_text_ar] [nvarchar](500) NULL,
	[answer_count] [int] NULL,
 CONSTRAINT [PK_tblQuesAns] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poll_Questions]    Script Date: 8/25/2022 4:03:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poll_Questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[title_en] [nvarchar](500) NULL,
	[title_ar] [nvarchar](500) NULL,
	[language] [int] NULL,
	[is_active] [bit] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NULL,
	[expiry_date] [datetime] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_Poll_Questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poll_Results]    Script Date: 8/25/2022 4:03:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poll_Results](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[poll_id] [int] NULL,
	[answer_id] [int] NULL,
	[user_ip] [nvarchar](500) NULL,
	[entry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Poll_Results] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Brands]    Script Date: 8/25/2022 4:03:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title_en] [nvarchar](500) NOT NULL,
	[title_ar] [nvarchar](500) NOT NULL,
	[description_en] [nvarchar](max) NOT NULL,
	[description_ar] [nvarchar](max) NOT NULL,
	[fabric_en] [nvarchar](100) NOT NULL,
	[fabric_ar] [nvarchar](100) NOT NULL,
	[file_name] [nvarchar](50) NOT NULL,
	[is_homepage] [int] NOT NULL,
 CONSTRAINT [PK_Product_Brands] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Category]    Script Date: 8/25/2022 4:03:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Category](
	[id] [int] NOT NULL,
	[parent_id] [int] NOT NULL,
	[category_en] [nvarchar](200) NOT NULL,
	[category_ar] [nvarchar](200) NOT NULL,
	[description_en] [nvarchar](max) NOT NULL,
	[description_ar] [nvarchar](max) NOT NULL,
	[banner_img] [nvarchar](50) NOT NULL,
	[categoryurl_en] [nvarchar](500) NOT NULL,
	[categoryurl_ar] [nvarchar](500) NOT NULL,
	[logo_file] [nvarchar](max) NOT NULL,
	[category_is_enable] [int] NOT NULL,
	[is_system] [int] NOT NULL,
 CONSTRAINT [PK_product_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Color]    Script Date: 8/25/2022 4:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Color](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[color_title_en] [nvarchar](256) NOT NULL,
	[color_title_ar] [nvarchar](256) NOT NULL,
	[bt_code] [nvarchar](50) NOT NULL,
	[color_icon] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product_Color] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Document]    Script Date: 8/25/2022 4:03:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Document](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[datasheet_file] [nvarchar](50) NULL,
	[title_en] [nvarchar](500) NULL,
	[title_ar] [nvarchar](500) NULL,
	[entry_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Images]    Script Date: 8/25/2022 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[is_default] [int] NOT NULL,
	[title_en] [nvarchar](50) NOT NULL,
	[title_ar] [nvarchar](50) NOT NULL,
	[img_file] [nvarchar](50) NOT NULL,
	[entry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_product_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Inventory]    Script Date: 8/25/2022 4:03:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Inventory](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[price] [money] NOT NULL,
	[old_price] [money] NOT NULL,
	[quantity] [float] NOT NULL,
	[option1_id] [int] NOT NULL,
	[option2_id] [int] NOT NULL,
	[sku_code] [nvarchar](256) NOT NULL,
	[product_image] [nvarchar](50) NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
	[update_user_id] [nvarchar](128) NULL,
	[entry_user_id] [nvarchar](128) NULL,
 CONSTRAINT [PK_Products_Inventory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Options]    Script Date: 8/25/2022 4:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Options](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[option_text] [nvarchar](50) NOT NULL,
	[option_text_ar] [nvarchar](50) NOT NULL,
	[option_id] [int] NOT NULL,
	[option_value] [nvarchar](50) NOT NULL,
	[option_value_ar] [nvarchar](50) NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_Product_Options] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Review]    Script Date: 8/25/2022 4:03:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Review](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[review_id] [int] NOT NULL,
	[review_sid] [nvarchar](128) NOT NULL,
	[user_id] [nvarchar](128) NOT NULL,
	[product_id] [int] NOT NULL,
	[review_description] [nvarchar](512) NOT NULL,
	[rating] [int] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NULL,
	[is_enable] [int] NOT NULL,
 CONSTRAINT [PK_Product_Review] PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Size]    Script Date: 8/25/2022 4:03:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Size](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[size_title_en] [nvarchar](500) NOT NULL,
	[size_title_ar] [nvarchar](500) NOT NULL,
	[bt_code_size] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product_Size] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Specification]    Script Date: 8/25/2022 4:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Specification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[main_title_en] [nvarchar](max) NOT NULL,
	[main_title_ar] [nvarchar](max) NOT NULL,
	[spec_description_en] [nvarchar](max) NOT NULL,
	[spec_description_ar] [nvarchar](max) NOT NULL,
	[entry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Product_Specification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Sub_Category]    Script Date: 8/25/2022 4:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Sub_Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[sub_category_en] [nvarchar](500) NOT NULL,
	[sub_category_ar] [nvarchar](500) NOT NULL,
	[description_en] [nvarchar](max) NOT NULL,
	[description_ar] [nvarchar](max) NOT NULL,
	[logo_file] [nvarchar](50) NOT NULL,
	[banner_img] [nvarchar](50) NOT NULL,
	[subcategoryurl_en] [nvarchar](1000) NOT NULL,
	[subcategoryurl_ar] [nvarchar](1000) NOT NULL,
	[subcategory_is_enable] [int] NOT NULL,
 CONSTRAINT [PK_product_Sub_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Sub_Specification]    Script Date: 8/25/2022 4:03:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Sub_Specification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_specification_id] [int] NOT NULL,
	[sub_title_en] [nvarchar](1000) NOT NULL,
	[sub_title_ar] [nvarchar](1000) NOT NULL,
	[sub_description_en] [nvarchar](max) NOT NULL,
	[sub_description_ar] [nvarchar](max) NOT NULL,
	[entry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Product_Sub_Specification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Title]    Script Date: 8/25/2022 4:03:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Title](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[title_en] [nvarchar](1000) NOT NULL,
	[title_ar] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Product_Title] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/25/2022 4:03:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[category_id] [int] NULL,
	[sub_category_id] [int] NOT NULL,
	[product_name_en] [nvarchar](300) NOT NULL,
	[product_name_ar] [nvarchar](300) NULL,
	[description_en] [nvarchar](max) NULL,
	[desctext_en] [nvarchar](max) NULL,
	[description_ar] [nvarchar](max) NULL,
	[desctext_ar] [nvarchar](max) NULL,
	[faq_id] [int] NULL,
	[weight] [int] NULL,
	[paymentpolicy_id] [int] NULL,
	[img_file] [nvarchar](50) NULL,
	[is_featured] [int] NULL,
	[item_order] [int] NULL,
	[is_sold] [int] NULL,
	[entry_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[user_updated] [uniqueidentifier] NOT NULL,
	[user_entered] [uniqueidentifier] NOT NULL,
	[is_delete] [int] NULL,
	[is_visible] [int] NULL,
	[brand_id] [int] NULL,
	[producturl_en] [nvarchar](max) NULL,
	[producturl_ar] [nvarchar](max) NULL,
	[is_offer] [nvarchar](max) NULL,
	[shipping_policy_id] [int] NULL,
	[warranty_policy_id] [int] NULL,
	[is_complete] [int] NOT NULL,
	[is_options_available] [int] NOT NULL,
	[is_richtext_editor] [int] NOT NULL,
	[is_notify_outofstock] [int] NOT NULL,
	[meta_title_en] [nvarchar](max) NOT NULL,
	[meta_title_ar] [nvarchar](max) NOT NULL,
	[meta_description_en] [nvarchar](max) NOT NULL,
	[meta_description_ar] [nvarchar](max) NOT NULL,
	[meta_keyword_en] [nvarchar](max) NOT NULL,
	[meta_keyword_ar] [nvarchar](max) NOT NULL,
	[video_url] [nvarchar](max) NULL,
	[review_count] [int] NOT NULL,
	[average_rating] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Activity_Log]    Script Date: 8/25/2022 4:03:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Activity_Log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action] [int] NOT NULL,
	[section] [nvarchar](256) NOT NULL,
	[reff_table_name] [nvarchar](256) NOT NULL,
	[reff_table_id] [int] NOT NULL,
	[text] [nvarchar](max) NOT NULL,
	[entry_user] [uniqueidentifier] NOT NULL,
	[entry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Products_Activity_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScrollBar]    Script Date: 8/25/2022 4:03:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScrollBar](
	[id] [int] NOT NULL,
	[doc_id] [uniqueidentifier] NOT NULL,
	[doc_desc] [nvarchar](256) NOT NULL,
	[language] [int] NOT NULL,
 CONSTRAINT [PK_ScrollBar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ScrollBarUnique] UNIQUE NONCLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section_Flash]    Script Date: 8/25/2022 4:03:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section_Flash](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[section_id] [int] NULL,
	[file_path] [nvarchar](50) NULL,
 CONSTRAINT [PK_Section_Flash] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section_Types]    Script Date: 8/25/2022 4:03:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section_Types](
	[Type_id] [int] NOT NULL,
	[Type_desc] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Section_Type] PRIMARY KEY CLUSTERED 
(
	[Type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sections]    Script Date: 8/25/2022 4:03:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sections](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[section_desc] [nvarchar](100) NOT NULL,
	[language] [int] NOT NULL,
	[is_navigator] [char](1) NOT NULL,
	[is_visible] [char](1) NOT NULL,
	[is_system] [char](1) NOT NULL,
	[is_deletable] [char](1) NOT NULL,
	[is_singlepage] [char](1) NOT NULL,
	[is_editable] [char](1) NOT NULL,
	[is_title_editable] [char](1) NOT NULL,
	[url] [nvarchar](100) NULL,
	[home_doc] [uniqueidentifier] NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[serial] [int] NOT NULL,
	[is_slider] [int] NULL,
	[slider_id] [int] NULL,
	[master_page] [nvarchar](256) NULL,
	[parent_section] [uniqueidentifier] NULL,
	[parent_id] [int] NULL,
	[section_image] [nvarchar](50) NULL,
	[position] [int] NOT NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Sections_Desc_Unique] UNIQUE NONCLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_Charges]    Script Date: 8/25/2022 4:03:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_Charges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[no_of_halfkg] [int] NOT NULL,
 CONSTRAINT [PK_Shipping_Charges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_Cities_Prices]    Script Date: 8/25/2022 4:03:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_Cities_Prices](
	[id] [int] NOT NULL,
	[city_name_en] [nvarchar](256) NOT NULL,
	[city_name_ar] [nvarchar](256) NOT NULL,
	[country_id] [int] NOT NULL,
	[first_half_prices] [money] NOT NULL,
	[each_additional_half_prices] [money] NOT NULL,
	[is_offers] [int] NOT NULL,
	[is_tax] [int] NOT NULL,
	[vat_percentage] [int] NOT NULL,
	[from_date] [datetime] NULL,
	[to_date] [datetime] NULL,
	[offer_amounts] [money] NOT NULL,
	[is_cash_on_delivery] [int] NOT NULL,
	[cash_on_delivery_charge] [money] NOT NULL,
	[is_banktransfer] [int] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[is_flat_rate] [int] NOT NULL,
	[flat_rate_amount] [money] NOT NULL,
 CONSTRAINT [PK_Shipping_Cities_Prices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_Companies]    Script Date: 8/25/2022 4:03:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_Companies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[company_en] [nvarchar](500) NOT NULL,
	[company_ar] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Shipping_Companies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_Country_Prices]    Script Date: 8/25/2022 4:03:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_Country_Prices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [int] NOT NULL,
	[first_half_prices] [money] NOT NULL,
	[each_additional_half_prices] [money] NOT NULL,
	[is_offers] [int] NOT NULL,
	[is_tax] [int] NOT NULL,
	[vat_percentage] [int] NOT NULL,
	[from_date] [datetime] NULL,
	[to_date] [datetime] NULL,
	[offer_amounts] [money] NOT NULL,
	[is_cash_on_delivery] [int] NOT NULL,
	[cash_on_delivery_amount] [money] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[is_banktransfer] [int] NOT NULL,
	[is_cities] [int] NOT NULL,
 CONSTRAINT [PK_Shipping_Country_Prices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_Coupon_offers]    Script Date: 8/25/2022 4:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_Coupon_offers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [int] NOT NULL,
	[coupon_code] [nvarchar](200) NOT NULL,
	[terms_and_conditions_en] [nvarchar](max) NULL,
	[terms_and_conditions_ar] [nvarchar](max) NULL,
	[minimum_purchase_amount] [money] NOT NULL,
	[from_date] [datetime] NULL,
	[to_date] [datetime] NULL,
	[is_offer_amount_or_percentage] [int] NOT NULL,
	[is_manual_or_automatic_offer] [int] NULL,
	[offer_in_amount] [money] NOT NULL,
	[offer_in_percentage] [int] NOT NULL,
	[entry_date] [datetime] NULL,
	[is_all_countries] [int] NOT NULL,
 CONSTRAINT [PK_Shipping_Coupon_offers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_Policies]    Script Date: 8/25/2022 4:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_Policies](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[title_en] [nvarchar](100) NOT NULL,
	[title_ar] [nvarchar](100) NOT NULL,
	[description_en] [nvarchar](max) NOT NULL,
	[description_ar] [nvarchar](max) NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[entry_user] [nvarchar](128) NOT NULL,
	[update_date] [datetime] NULL,
	[update_user] [nvarchar](128) NULL,
 CONSTRAINT [PK_Shipping_Policies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_Status]    Script Date: 8/25/2022 4:03:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status_en] [nvarchar](500) NOT NULL,
	[status_ar] [nvarchar](500) NOT NULL,
	[is_system] [int] NOT NULL,
 CONSTRAINT [PK_Shipping_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteVisitors]    Script Date: 8/25/2022 4:03:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteVisitors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[day] [date] NOT NULL,
	[visitors_count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specifications]    Script Date: 8/25/2022 4:03:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specifications](
	[spec_id] [int] IDENTITY(1,1) NOT NULL,
	[spec_title_en] [nvarchar](50) NOT NULL,
	[spec_title_ar] [nvarchar](50) NOT NULL,
	[spec_desc_en] [nvarchar](512) NULL,
	[spec_desc_ar] [nvarchar](512) NULL,
 CONSTRAINT [PK_Specifications] PRIMARY KEY CLUSTERED 
(
	[spec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemParameters]    Script Date: 8/25/2022 4:03:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameters](
	[parameter_id] [int] NOT NULL,
	[header_id] [int] NOT NULL,
	[parameter_name] [nvarchar](50) NOT NULL,
	[parameter_value] [nvarchar](1024) NOT NULL,
	[data_type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SystemParameters] PRIMARY KEY CLUSTERED 
(
	[parameter_id] ASC,
	[header_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemParameters_Headers]    Script Date: 8/25/2022 4:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameters_Headers](
	[header_id] [int] NOT NULL,
	[header] [nvarchar](100) NOT NULL,
	[desciption] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_SystemParameters_Headers] PRIMARY KEY CLUSTERED 
(
	[header_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonial]    Script Date: 8/25/2022 4:03:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonial](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[testimonial_en] [nvarchar](250) NULL,
	[testimonial_ar] [nvarchar](250) NULL,
	[name_en] [nvarchar](150) NULL,
	[name_ar] [nvarchar](150) NULL,
	[city_en] [nvarchar](50) NULL,
	[city_ar] [nvarchar](50) NULL,
	[countryid] [int] NULL,
	[entrydate] [datetime] NULL,
	[lastviewid] [nvarchar](50) NULL,
	[filename] [nvarchar](50) NULL,
 CONSTRAINT [PK_Testimonial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Themes]    Script Date: 8/25/2022 4:03:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Themes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[color_id] [int] NULL,
	[title] [nvarchar](512) NOT NULL,
	[folder_name] [nvarchar](512) NULL,
	[is_selected] [bit] NOT NULL,
 CONSTRAINT [PK_Themes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThumbNails]    Script Date: 8/25/2022 4:03:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThumbNails](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[doc_id] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ThumbNails] PRIMARY KEY CLUSTERED 
(
	[serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ThumbNails] UNIQUE NONCLUSTERED 
(
	[doc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction_Details]    Script Date: 8/25/2022 4:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[invoice_id] [int] NOT NULL,
	[invoice_sid] [uniqueidentifier] NOT NULL,
	[access_code] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[eci] [nvarchar](100) NOT NULL,
	[card_number] [nvarchar](100) NOT NULL,
	[fort_id] [nvarchar](500) NOT NULL,
	[response_code] [nvarchar](50) NOT NULL,
	[customer_name] [nvarchar](200) NOT NULL,
	[customer_email] [nvarchar](200) NOT NULL,
	[customer_ip] [nvarchar](100) NOT NULL,
	[currency] [nvarchar](500) NOT NULL,
	[merchant_reference] [nvarchar](100) NOT NULL,
	[amount] [money] NOT NULL,
	[response_message] [nvarchar](100) NOT NULL,
	[command] [nvarchar](100) NOT NULL,
	[payment_option] [nvarchar](100) NOT NULL,
	[language] [nvarchar](5) NOT NULL,
	[expiry_date] [nvarchar](10) NOT NULL,
	[authorization_code] [nvarchar](50) NOT NULL,
	[merchant_identifier] [nvarchar](50) NOT NULL,
	[signature] [nvarchar](100) NOT NULL,
	[reference_status] [int] NOT NULL,
	[entry_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Transaction_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions_Log]    Script Date: 8/25/2022 4:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions_Log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[invoice_id] [int] NOT NULL,
	[description_short] [nvarchar](max) NOT NULL,
	[description_long] [nvarchar](max) NOT NULL,
	[total_amount] [money] NULL,
	[method_of_payment] [int] NULL,
	[is_paid] [int] NULL,
	[before_change] [nvarchar](max) NOT NULL,
	[after_change] [nvarchar](max) NULL,
	[action_int] [int] NOT NULL,
	[action_text] [nvarchar](256) NOT NULL,
	[entry_time] [datetime] NOT NULL,
	[action_user_sid] [uniqueidentifier] NULL,
	[action_user_id] [nvarchar](128) NULL,
	[profile_details] [nvarchar](max) NULL,
 CONSTRAINT [PK_Transactions_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Ratings]    Script Date: 8/25/2022 4:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[profile_id] [nvarchar](128) NOT NULL,
	[rating] [int] NOT NULL,
	[entry_time] [datetime] NOT NULL,
 CONSTRAINT [PK_User_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Types]    Script Date: 8/25/2022 4:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_type] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacancies]    Script Date: 8/25/2022 4:03:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacancies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NOT NULL,
	[lang_id] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[education] [nvarchar](4000) NULL,
	[qualification] [nvarchar](4000) NULL,
	[others] [nvarchar](4000) NULL,
	[entrydate] [datetime] NULL,
 CONSTRAINT [PK_Vacancies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Album]    Script Date: 8/25/2022 4:03:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NULL,
	[album_name_en] [nvarchar](100) NULL,
	[album_name_ar] [nvarchar](100) NULL,
	[album_desc_en] [nvarchar](500) NULL,
	[album_desc_ar] [nvarchar](500) NULL,
	[updatedurl_en] [nvarchar](max) NULL,
	[updatedurl_ar] [nvarchar](max) NULL,
	[is_published] [int] NULL,
	[entry_date] [datetime] NULL,
 CONSTRAINT [PK_Video_Album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Files]    Script Date: 8/25/2022 4:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Files](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title_en] [nvarchar](200) NULL,
	[title_ar] [nvarchar](200) NULL,
	[description_en] [nvarchar](max) NULL,
	[description_ar] [nvarchar](max) NULL,
	[file_name] [nvarchar](50) NULL,
	[album_id] [int] NULL,
	[entry_date] [datetime] NULL,
	[is_uploaded] [int] NULL,
	[embed_video_text] [nvarchar](max) NULL,
	[default_pic] [nvarchar](max) NULL,
	[item_order] [int] NOT NULL,
 CONSTRAINT [PK_Video_Files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video_Images]    Script Date: 8/25/2022 4:03:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video_Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[video_id] [int] NULL,
	[is_default] [int] NULL,
	[title_en] [nvarchar](50) NULL,
	[title_ar] [nvarchar](50) NULL,
	[img_file] [nvarchar](50) NULL,
	[entry_date] [datetime] NULL,
 CONSTRAINT [PK_Video_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wallet]    Script Date: 8/25/2022 4:03:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wallet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sid] [uniqueidentifier] NULL,
	[profile_id] [nvarchar](128) NOT NULL,
	[credit_amount_id] [int] NULL,
	[credit_amount] [money] NOT NULL,
	[debit_amount] [money] NOT NULL,
	[balance] [money] NOT NULL,
	[entry_user] [nvarchar](128) NULL,
	[entry_date] [datetime] NOT NULL,
	[update_user] [nvarchar](128) NULL,
	[update_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Wallet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wallet_History]    Script Date: 8/25/2022 4:03:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wallet_History](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_id] [nvarchar](128) NOT NULL,
	[profile_sid] [uniqueidentifier] NOT NULL,
	[action] [nvarchar](1000) NULL,
	[credit_amount] [money] NOT NULL,
	[debit_amount] [money] NOT NULL,
	[balance] [money] NOT NULL,
	[description] [nvarchar](4000) NULL,
	[giftcoupon_id] [int] NULL,
	[giftcoupon_sid] [uniqueidentifier] NULL,
	[invoice_id] [int] NULL,
	[invoice_sid] [uniqueidentifier] NULL,
	[entry_date] [datetime] NOT NULL,
	[profile_details] [nvarchar](max) NULL,
 CONSTRAINT [PK_Wallet_History] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warranty_Policies]    Script Date: 8/25/2022 4:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warranty_Policies](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[title_en] [nvarchar](100) NOT NULL,
	[title_ar] [nvarchar](100) NOT NULL,
	[description_en] [nvarchar](max) NOT NULL,
	[description_ar] [nvarchar](max) NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[entry_user] [nvarchar](128) NOT NULL,
	[update_date] [datetime] NULL,
	[update_user] [nvarchar](128) NULL,
 CONSTRAINT [PK_Warranty_Policies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[weather]    Script Date: 8/25/2022 4:03:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[weather](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imgcode] [varchar](150) NULL,
	[temp] [varchar](150) NULL,
	[city_en] [nvarchar](50) NULL,
	[city_ar] [nvarchar](50) NULL,
	[description_en] [nvarchar](100) NULL,
	[description_ar] [nvarchar](100) NULL,
	[entrytime] [datetime] NULL,
 CONSTRAINT [PK_weather] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishList]    Script Date: 8/25/2022 4:03:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishList](
	[serial] [int] IDENTITY(1,1) NOT NULL,
	[wishlist_id] [int] NOT NULL,
	[profile_sid] [uniqueidentifier] NOT NULL,
	[item_sid] [uniqueidentifier] NOT NULL,
	[entry_date] [datetime] NOT NULL,
	[update_date] [datetime] NOT NULL,
	[wishlist_sid] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Albums] ADD  CONSTRAINT [DF_Albums_is_active]  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_notification_id]  DEFAULT ((0)) FOR [notification_id]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_name]  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_title]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_body]  DEFAULT ('') FOR [body]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_return_notificationid]  DEFAULT ('') FOR [return_notificationid]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_type]  DEFAULT ('') FOR [type]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_app_registration_id]  DEFAULT ((0)) FOR [app_registration_id]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_is_sent]  DEFAULT ((0)) FOR [is_sent]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_service_type]  DEFAULT ((0)) FOR [service_type]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_is_enabled]  DEFAULT ((1)) FOR [is_enabled]
GO
ALTER TABLE [dbo].[App_Push_Notifications] ADD  CONSTRAINT [DF_App_Push_Notifications_lang]  DEFAULT ((0)) FOR [lang]
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [df_enalrd]  DEFAULT ((0)) FOR [is_enabled]
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [df_vesion]  DEFAULT ((0)) FOR [app_version]
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF_Application_android_version]  DEFAULT ((1.0)) FOR [android_version]
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF_Application_is_mandatory]  DEFAULT ((0)) FOR [android_is_mandatory]
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF_Application_ios_version]  DEFAULT ((1.0)) FOR [ios_version]
GO
ALTER TABLE [dbo].[Application] ADD  CONSTRAINT [DF_Application_ios_is_mandatory]  DEFAULT ((0)) FOR [ios_is_mandatory]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_is_approved]  DEFAULT ((1)) FOR [is_approved]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_is_google_user]  DEFAULT ((0)) FOR [is_google_user]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_is_data_completed]  DEFAULT ((1)) FOR [is_data_completed]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_google_account_pwd]  DEFAULT ((123321)) FOR [google_account_pwd]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_is_mobile]  DEFAULT ((0)) FOR [is_mobile]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_is_mobile_email_verified]  DEFAULT ((0)) FOR [is_mobile_email_verified]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_shipping_city_id]  DEFAULT ((0)) FOR [shipping_city_id]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_is_guest]  DEFAULT ((0)) FOR [is_guest]
GO
ALTER TABLE [dbo].[Banners] ADD  CONSTRAINT [DF_Banners_title]  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[Banners] ADD  CONSTRAINT [DF_Banners_description]  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[Banners] ADD  CONSTRAINT [DF_Banners_url]  DEFAULT ('') FOR [url]
GO
ALTER TABLE [dbo].[Banners] ADD  CONSTRAINT [DF_Banners_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Catalogue_ItemDatasheet] ADD  CONSTRAINT [DF_Catalogue_ItemDatasheet_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Catalogue_ItemImages] ADD  CONSTRAINT [DF_Catalogue_ItemImages_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Catalogue_ItemImages] ADD  CONSTRAINT [DF_Catalogue_ItemImages_item_order]  DEFAULT ((0)) FOR [item_order]
GO
ALTER TABLE [dbo].[CatalogueActivityLog] ADD  CONSTRAINT [DF_CatalogueActivityLog_action]  DEFAULT ((0)) FOR [action]
GO
ALTER TABLE [dbo].[CatalogueActivityLog] ADD  CONSTRAINT [DF_CatalogueActivityLog_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Catalogues] ADD  CONSTRAINT [DF_Catalogues_is_visible]  DEFAULT ((1)) FOR [is_visible]
GO
ALTER TABLE [dbo].[Catalogues_Category] ADD  CONSTRAINT [DF_Catalogues_Category_catupdateurl_en]  DEFAULT ('') FOR [catupdateurl_en]
GO
ALTER TABLE [dbo].[Catalogues_Category] ADD  CONSTRAINT [DF_Catalogues_Category_catupdateurl_ar]  DEFAULT ('') FOR [catupdateurl_ar]
GO
ALTER TABLE [dbo].[Catalogues_Category] ADD  CONSTRAINT [DF_Catalogues_Category_position]  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate] ADD  CONSTRAINT [DF_Catalogues_FieldsTemplate_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate] ADD  CONSTRAINT [DF_Catalogues_FieldsTemplate_label]  DEFAULT ('') FOR [label]
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate] ADD  CONSTRAINT [DF_Catalogues_FieldsTemplate_calling_text]  DEFAULT ('') FOR [calling_text]
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate] ADD  CONSTRAINT [DF_Catalogues_FieldsTemplate_is_required]  DEFAULT ((0)) FOR [is_required]
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate] ADD  CONSTRAINT [DF_Catalogues_FieldsTemplate_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Catalogues_ItemFields] ADD  CONSTRAINT [DF_Catalogues_ItemFields_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Catalogues_Items] ADD  CONSTRAINT [DF_Catalogues_ItemsTable_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Catalogues_Items] ADD  CONSTRAINT [DF_Catalogues_Items_url_en]  DEFAULT ('') FOR [updatedurl_en]
GO
ALTER TABLE [dbo].[Catalogues_Items] ADD  CONSTRAINT [DF_Catalogues_Items_url_ar]  DEFAULT ('') FOR [updatedurl_ar]
GO
ALTER TABLE [dbo].[Catalogues_Items] ADD  CONSTRAINT [DF_Catalogues_ItemsTable_enter_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Catalogues_Items] ADD  CONSTRAINT [DF_Catalogues_Items_is_featured]  DEFAULT ((0)) FOR [is_featured]
GO
ALTER TABLE [dbo].[Catalogues_Items] ADD  CONSTRAINT [DF_Catalogues_ItemsTable_itemviews]  DEFAULT ((0)) FOR [itemviews]
GO
ALTER TABLE [dbo].[Catalogues_Items] ADD  CONSTRAINT [DF_Catalogues_ItemsTable_is_visible]  DEFAULT ((1)) FOR [is_visible]
GO
ALTER TABLE [dbo].[Centralized_Url] ADD  CONSTRAINT [DF_Centralized_Url_url_en]  DEFAULT ('') FOR [url_en]
GO
ALTER TABLE [dbo].[Centralized_Url] ADD  CONSTRAINT [DF_Centralized_Url_url_ar]  DEFAULT ('') FOR [url_ar]
GO
ALTER TABLE [dbo].[Centralized_Url] ADD  CONSTRAINT [DF_Centralized_Url_physical_url]  DEFAULT ('') FOR [physical_url]
GO
ALTER TABLE [dbo].[Centralized_Url] ADD  CONSTRAINT [DF_Centralized_Url_auto_url]  DEFAULT ('') FOR [auto_url]
GO
ALTER TABLE [dbo].[Centralized_Url] ADD  CONSTRAINT [DF_Centralized_Url_friendly_url]  DEFAULT ('') FOR [friendly_url]
GO
ALTER TABLE [dbo].[Centralized_Url] ADD  CONSTRAINT [DF_Centralized_Url_friendly_url_2]  DEFAULT ('') FOR [friendly_url_2]
GO
ALTER TABLE [dbo].[Centralized_Url] ADD  CONSTRAINT [DF_Centralized_Url_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Cities] ADD  CONSTRAINT [DF_Cities_country_id]  DEFAULT ((0)) FOR [country_id]
GO
ALTER TABLE [dbo].[Cities] ADD  CONSTRAINT [DF_Cities_shipping_pricecity]  DEFAULT ((0)) FOR [shipping_pricecity]
GO
ALTER TABLE [dbo].[Cities] ADD  CONSTRAINT [DF_Cities_shipping_weight]  DEFAULT ((0)) FOR [shipping_weight]
GO
ALTER TABLE [dbo].[Coupon_Profiles] ADD  CONSTRAINT [DF_Coupon_Profiles_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [DF_Currency_is_base_currency]  DEFAULT ((0)) FOR [is_base_currency]
GO
ALTER TABLE [dbo].[Currency_Converter] ADD  CONSTRAINT [DF_Currency_Converter_id]  DEFAULT ((0)) FOR [id]
GO
ALTER TABLE [dbo].[Currency_Converter] ADD  CONSTRAINT [DF_Currency_Converter_is_base_currency]  DEFAULT ((0)) FOR [is_base_currency]
GO
ALTER TABLE [dbo].[Document_History] ADD  CONSTRAINT [DF_Document_History_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_is_section_homepage]  DEFAULT ('F') FOR [is_section_homepage]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_update_author]  DEFAULT ((0)) FOR [update_author]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_doc_id]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_is_scrollbar]  DEFAULT ('F') FOR [is_scrollbar]
GO
ALTER TABLE [dbo].[Documents] ADD  CONSTRAINT [DF_Documents_is_publish]  DEFAULT ((1)) FOR [is_publish]
GO
ALTER TABLE [dbo].[Download_Category] ADD  CONSTRAINT [DF_Download_Category_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Download_Files] ADD  CONSTRAINT [DF_Download_Files_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Download_Files] ADD  CONSTRAINT [DF_Download_Files_upload_date]  DEFAULT (getdate()) FOR [upload_date]
GO
ALTER TABLE [dbo].[Download_Section] ADD  CONSTRAINT [DF_Download_Section_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Faq] ADD  CONSTRAINT [DF_Faq_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Faq] ADD  CONSTRAINT [DF_Faq_language]  DEFAULT ((1)) FOR [language]
GO
ALTER TABLE [dbo].[Footer] ADD  CONSTRAINT [DF_Footer_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Footer] ADD  CONSTRAINT [DF_Footer_is_internal]  DEFAULT ((1)) FOR [is_internal]
GO
ALTER TABLE [dbo].[Gift_Coupons] ADD  CONSTRAINT [DF_Gift_Coupons_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Gift_Coupons] ADD  CONSTRAINT [DF_Gift_Coupons_gift_amount]  DEFAULT ((0.00)) FOR [gift_amount]
GO
ALTER TABLE [dbo].[Gift_Coupons] ADD  CONSTRAINT [DF_IGift_Coupons_gift_card_applied]  DEFAULT ((0)) FOR [gift_card_applied]
GO
ALTER TABLE [dbo].[Gift_Coupons] ADD  CONSTRAINT [DF_Gift_Coupons_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Gift_Coupons] ADD  CONSTRAINT [DF_Gift_Coupons_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Gift_Coupons_Amounts] ADD  CONSTRAINT [DF_Gift_Coupons_Amounts_amount]  DEFAULT ((0)) FOR [amount]
GO
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_history]  DEFAULT ('') FOR [history]
GO
ALTER TABLE [dbo].[History] ADD  CONSTRAINT [DF_History_entrydate]  DEFAULT (getdate()) FOR [entrydate]
GO
ALTER TABLE [dbo].[History_Log] ADD  CONSTRAINT [DF_History_Log_option1_id]  DEFAULT ((0)) FOR [option1_id]
GO
ALTER TABLE [dbo].[History_Log] ADD  CONSTRAINT [DF_History_Log_option2_id]  DEFAULT ((0)) FOR [option2_id]
GO
ALTER TABLE [dbo].[History_Log] ADD  CONSTRAINT [DF_History_Log_color_id]  DEFAULT ((0)) FOR [color_id]
GO
ALTER TABLE [dbo].[History_Log] ADD  CONSTRAINT [DF_History_Log_size_id]  DEFAULT ((0)) FOR [size_id]
GO
ALTER TABLE [dbo].[History_Log] ADD  CONSTRAINT [DF_History_Log_description_short]  DEFAULT ('') FOR [description_short]
GO
ALTER TABLE [dbo].[History_Log] ADD  CONSTRAINT [DF_History_Log_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Images] ADD  CONSTRAINT [DF_Images_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[ImagesOfAlbum] ADD  CONSTRAINT [DF_ImagesOfAlbum_is_cover]  DEFAULT ((0)) FOR [is_cover]
GO
ALTER TABLE [dbo].[ImagesOfAlbum] ADD  CONSTRAINT [DF_ImagesOfAlbum_item_order]  DEFAULT ((0)) FOR [item_order]
GO
ALTER TABLE [dbo].[Inventory_images] ADD  CONSTRAINT [DF_Inventory_images_color_id]  DEFAULT ((0)) FOR [color_id]
GO
ALTER TABLE [dbo].[Inventory_images] ADD  CONSTRAINT [DF_Inventory_images_product_image]  DEFAULT ('') FOR [product_image]
GO
ALTER TABLE [dbo].[Inventory_images] ADD  CONSTRAINT [DF_Inventory_images_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_invoice_id]  DEFAULT ((0)) FOR [invoice_id]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoices_gift_card_id]  DEFAULT ((0)) FOR [gift_card_id]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_total]  DEFAULT ((0.00)) FOR [total]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_total_discount]  DEFAULT ((0.00)) FOR [total_discount]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_shipping_method]  DEFAULT ('') FOR [shipping_method]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_shipping_price]  DEFAULT ((0)) FOR [shipping_price]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_coupon_discount_price]  DEFAULT ((0)) FOR [coupon_discount_price]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_other_costs]  DEFAULT ((0)) FOR [other_costs]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_other_costs_details]  DEFAULT ('') FOR [other_costs_details]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_original_grand_total]  DEFAULT ((0)) FOR [original_grand_total]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_taxable_amount]  DEFAULT ((0)) FOR [taxable_amount]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_grand_total]  DEFAULT ((0)) FOR [grand_total]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoices_entry_date_utc]  DEFAULT (getutcdate()) FOR [entry_date_utc]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoices_update_date_utc]  DEFAULT (getutcdate()) FOR [update_date_utc]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_is_refund]  DEFAULT ((0)) FOR [is_refund]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_refund_amount]  DEFAULT ((0)) FOR [refund_amount]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_is_reverse_serial]  DEFAULT ((0)) FOR [is_reverse_serial]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_convertion_charge]  DEFAULT ((0)) FOR [convertion_charge]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_currency_id]  DEFAULT ((2)) FOR [currency_id]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_shipping_status_id]  DEFAULT ((1)) FOR [shipping_status_id]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_tracking_no]  DEFAULT ('') FOR [tracking_no]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_is_quantity_deducted]  DEFAULT ((0)) FOR [is_quantity_deducted]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_is_email_sent]  DEFAULT ((0)) FOR [is_email_sent]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_is_tax]  DEFAULT ((0)) FOR [is_tax]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_vat_percentage]  DEFAULT ((0)) FOR [vat_percentage]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoice_vat_amount]  DEFAULT ((0)) FOR [vat_amount]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoices_cash_on_delivery_amount]  DEFAULT ((0)) FOR [cash_on_delivery_amount]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoices_is_cash_on_delivery]  DEFAULT ((0)) FOR [is_cash_on_delivery]
GO
ALTER TABLE [dbo].[Invoices] ADD  CONSTRAINT [DF_Invoices_is_mobile]  DEFAULT ((0)) FOR [is_mobile]
GO
ALTER TABLE [dbo].[Links_Mapping] ADD  CONSTRAINT [DF_Links_Mapping_is_querystring]  DEFAULT ((0)) FOR [is_querystring]
GO
ALTER TABLE [dbo].[Links_Mapping] ADD  CONSTRAINT [DF_Links_Mapping_is_redirecting]  DEFAULT ((0)) FOR [is_redirecting]
GO
ALTER TABLE [dbo].[Locations] ADD  CONSTRAINT [DF_Locations_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Menu_Images] ADD  CONSTRAINT [DF_Menu_Images_language]  DEFAULT ((1)) FOR [language]
GO
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [DF_Menus_parent_id]  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[Menus] ADD  CONSTRAINT [DF_Menus_position]  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[NewsLetter] ADD  CONSTRAINT [DF_NewsLetter_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Newsletterdownload] ADD  CONSTRAINT [DF_Newsletterdownload_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Newsletterdownload] ADD  CONSTRAINT [DF_Newsletterdownload_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_order_id]  DEFAULT ((0)) FOR [order_calculation_id]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_gift_card_id]  DEFAULT ((0)) FOR [gift_card_id]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_total]  DEFAULT ((0.00)) FOR [total]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_coupon_discount_price]  DEFAULT ((0)) FOR [coupon_discount_price]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_taxable_amount]  DEFAULT ((0)) FOR [taxable_amount]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_grand_total]  DEFAULT ((0)) FOR [grand_total]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_is_paid]  DEFAULT ((0)) FOR [is_paid]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_is_tax]  DEFAULT ((0)) FOR [is_tax]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_vat_percentage]  DEFAULT ((0)) FOR [vat_percentage]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_vat_amount]  DEFAULT ((0)) FOR [vat_amount]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_is_refund]  DEFAULT ((0)) FOR [is_refund]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_refund_amount]  DEFAULT ((0)) FOR [refund_amount]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_is_reverse_serial]  DEFAULT ((0)) FOR [is_reverse_serial]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_convertion_charge]  DEFAULT ((0)) FOR [convertion_charge]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_currency_id]  DEFAULT ((2)) FOR [currency_id]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_shipping_status_id]  DEFAULT ((1)) FOR [shipping_status_id]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_tracking_no]  DEFAULT ('') FOR [tracking_no]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_is_email_sent]  DEFAULT ((0)) FOR [is_email_sent]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_cash_on_delivery_amount]  DEFAULT ((0)) FOR [cash_on_delivery_amount]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_is_cash_on_delivery]  DEFAULT ((0)) FOR [is_cash_on_delivery]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_transaction_id]  DEFAULT ((0)) FOR [transaction_id]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_payment_gateway_order_id]  DEFAULT ('') FOR [payment_gateway_order_id]
GO
ALTER TABLE [dbo].[Order_Calculations] ADD  CONSTRAINT [DF_Order_Calculations_payment_gateway_link]  DEFAULT ('') FOR [payment_gateway_link]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_discount_percentage]  DEFAULT ((0)) FOR [discount_percentage]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_discount]  DEFAULT ((0.00)) FOR [discount]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_is_stockout]  DEFAULT ((0)) FOR [is_stockout]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_is_reverse]  DEFAULT ((0)) FOR [is_reverse]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_is_reverse_serial]  DEFAULT ((0)) FOR [is_reverse_serial]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_cancel_quantity]  DEFAULT ((0)) FOR [cancel_quantity]
GO
ALTER TABLE [dbo].[Order_Details] ADD  CONSTRAINT [DF_Order_Details_product_details]  DEFAULT ('') FOR [product_details]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_order_id]  DEFAULT ((0)) FOR [order_id]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_total_price]  DEFAULT ((0)) FOR [total_price]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_order_type]  DEFAULT ((0)) FOR [order_type]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_entry_date_utc]  DEFAULT (getutcdate()) FOR [entry_date_utc]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_update_date_utc]  DEFAULT (getutcdate()) FOR [update_date_utc]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_currency_id]  DEFAULT ((2)) FOR [currency_id]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_shipping_name]  DEFAULT ('') FOR [shipping_name]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_shipping_firstname]  DEFAULT ('') FOR [shipping_firstname]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_shipping_lastname]  DEFAULT ('') FOR [shipping_lastname]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_shipping_address]  DEFAULT ('') FOR [shipping_address]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_shipping_city]  DEFAULT ('') FOR [shipping_city]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_alternate_email]  DEFAULT ('') FOR [alternate_email]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_phone2]  DEFAULT ('') FOR [phone]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_is_profileid]  DEFAULT ((0)) FOR [is_profileid]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_is_invoiced]  DEFAULT ((0)) FOR [is_invoiced]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Order_is_product]  DEFAULT ((1)) FOR [is_product]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_is_confirmed]  DEFAULT ((0)) FOR [is_confirmed]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_is_return_completed_1]  DEFAULT ((0)) FOR [is_return_completed]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_is_cancelled]  DEFAULT ((0)) FOR [is_cancelled]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_is_mobile]  DEFAULT ((0)) FOR [is_mobile]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_shipping_city_id]  DEFAULT ((0)) FOR [shipping_city_id]
GO
ALTER TABLE [dbo].[Orders_History] ADD  CONSTRAINT [DF_Orders_History_entry_time]  DEFAULT (getdate()) FOR [entry_time]
GO
ALTER TABLE [dbo].[Orders_History] ADD  CONSTRAINT [DF_Orders_History_entry_date_utc]  DEFAULT (getutcdate()) FOR [entry_date_utc]
GO
ALTER TABLE [dbo].[Payment_Methods] ADD  CONSTRAINT [DF_Payment_Methods_is_active]  DEFAULT ((0)) FOR [is_active]
GO
ALTER TABLE [dbo].[Photo_Scroller] ADD  CONSTRAINT [DF_Photo_Scroller_item_order]  DEFAULT ((0)) FOR [item_order]
GO
ALTER TABLE [dbo].[PhotoSlider_Images] ADD  CONSTRAINT [DF_PhotoSlider_Images_item_order]  DEFAULT ((0)) FOR [item_order]
GO
ALTER TABLE [dbo].[PhotoSlider_Images] ADD  CONSTRAINT [DF_PhotoSlider_Images_video_url]  DEFAULT (N'#') FOR [video_url]
GO
ALTER TABLE [dbo].[Poll_Answers] ADD  CONSTRAINT [DF_Poll_Answers_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Poll_Answers] ADD  CONSTRAINT [DF_Poll_Answers_answer_count]  DEFAULT ((0)) FOR [answer_count]
GO
ALTER TABLE [dbo].[Poll_Questions] ADD  CONSTRAINT [DF_Poll_Questions_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Poll_Questions] ADD  CONSTRAINT [DF_Poll_Questions_is_active]  DEFAULT ((0)) FOR [is_active]
GO
ALTER TABLE [dbo].[Poll_Questions] ADD  CONSTRAINT [DF_Poll_Questions_enter_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Poll_Questions] ADD  CONSTRAINT [DF_Poll_Questions_total]  DEFAULT ((0)) FOR [total]
GO
ALTER TABLE [dbo].[Poll_Results] ADD  CONSTRAINT [DF_Poll_Results_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Product_Brands] ADD  CONSTRAINT [DF_Product_Brands_title_ar]  DEFAULT ('') FOR [title_ar]
GO
ALTER TABLE [dbo].[Product_Brands] ADD  CONSTRAINT [DF_Product_Brands_description_ar]  DEFAULT ('') FOR [description_ar]
GO
ALTER TABLE [dbo].[Product_Brands] ADD  CONSTRAINT [DF_Product_Brands_fabric_en]  DEFAULT ('') FOR [fabric_en]
GO
ALTER TABLE [dbo].[Product_Brands] ADD  CONSTRAINT [DF_Product_Brands_fabric_ar]  DEFAULT ('') FOR [fabric_ar]
GO
ALTER TABLE [dbo].[Product_Brands] ADD  CONSTRAINT [DF_Product_Brands_file_name]  DEFAULT ('') FOR [file_name]
GO
ALTER TABLE [dbo].[Product_Brands] ADD  CONSTRAINT [DF_Product_Brands_is_homepage]  DEFAULT ((0)) FOR [is_homepage]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_id]  DEFAULT ((0)) FOR [id]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_parent_id]  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_category_ar]  DEFAULT ('') FOR [category_ar]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_banner_img]  DEFAULT ('') FOR [banner_img]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_categoryurl_en]  DEFAULT ('') FOR [categoryurl_en]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_categoryurl_ar]  DEFAULT ('') FOR [categoryurl_ar]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_logo_file]  DEFAULT ('') FOR [logo_file]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_category_is_enable]  DEFAULT ((1)) FOR [category_is_enable]
GO
ALTER TABLE [dbo].[Product_Category] ADD  CONSTRAINT [DF_Product_Category_is_system]  DEFAULT ((0)) FOR [is_system]
GO
ALTER TABLE [dbo].[Product_Color] ADD  CONSTRAINT [DF_Product_Color_color_title_ar]  DEFAULT ('') FOR [color_title_ar]
GO
ALTER TABLE [dbo].[Product_Color] ADD  CONSTRAINT [DF_Product_Color_bt_code]  DEFAULT ('') FOR [bt_code]
GO
ALTER TABLE [dbo].[Product_Color] ADD  CONSTRAINT [DF_Product_Color_color_icon]  DEFAULT ('') FOR [color_icon]
GO
ALTER TABLE [dbo].[Product_Document] ADD  CONSTRAINT [DF_Product_Datasheet_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Product_Images] ADD  CONSTRAINT [DF_Product_Images_is_default]  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[Product_Images] ADD  CONSTRAINT [DF_product_Images_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Product_Options] ADD  CONSTRAINT [DF_Product_Options_option_text_ar]  DEFAULT (N'.') FOR [option_text_ar]
GO
ALTER TABLE [dbo].[Product_Options] ADD  CONSTRAINT [DF_Product_Options_option_value_ar]  DEFAULT (N'.') FOR [option_value_ar]
GO
ALTER TABLE [dbo].[Product_Review] ADD  CONSTRAINT [DF_Product_Review_review_sid]  DEFAULT (newid()) FOR [review_sid]
GO
ALTER TABLE [dbo].[Product_Review] ADD  CONSTRAINT [DF_Product_Review_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Product_Review] ADD  CONSTRAINT [DF_Product_Review_is_enable]  DEFAULT ((1)) FOR [is_enable]
GO
ALTER TABLE [dbo].[Product_Size] ADD  CONSTRAINT [DF_Product_Size_size_title_ar]  DEFAULT ('') FOR [size_title_ar]
GO
ALTER TABLE [dbo].[Product_Size] ADD  CONSTRAINT [DF_Product_Size_bt_code_size]  DEFAULT ('') FOR [bt_code_size]
GO
ALTER TABLE [dbo].[Product_Specification] ADD  CONSTRAINT [DF_Product_Specification_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Product_Sub_Category] ADD  CONSTRAINT [DF_Product_Sub_Category_sub_category_ar]  DEFAULT ('') FOR [sub_category_ar]
GO
ALTER TABLE [dbo].[Product_Sub_Category] ADD  CONSTRAINT [DF_Product_Sub_Category_description_ar]  DEFAULT ('') FOR [description_ar]
GO
ALTER TABLE [dbo].[Product_Sub_Category] ADD  CONSTRAINT [DF_Product_Sub_Category_logo_file]  DEFAULT ('') FOR [logo_file]
GO
ALTER TABLE [dbo].[Product_Sub_Category] ADD  CONSTRAINT [DF_Product_Sub_Category_banner_img]  DEFAULT ('') FOR [banner_img]
GO
ALTER TABLE [dbo].[Product_Sub_Category] ADD  CONSTRAINT [DF_Product_Sub_Category_subcategory_is_enable]  DEFAULT ((1)) FOR [subcategory_is_enable]
GO
ALTER TABLE [dbo].[Product_Sub_Specification] ADD  CONSTRAINT [DF_Product_Sub_Specification_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Product_Title] ADD  CONSTRAINT [DF_Product_Title_title_ar]  DEFAULT ('') FOR [title_ar]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_products_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_faq_id]  DEFAULT ((0)) FOR [faq_id]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_paymentpolicy_id]  DEFAULT ((0)) FOR [paymentpolicy_id]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_products_enter_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_shipping_policy_id]  DEFAULT ((0)) FOR [shipping_policy_id]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_warranty_policy_id]  DEFAULT ((0)) FOR [warranty_policy_id]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_is_complete]  DEFAULT ((0)) FOR [is_complete]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_is_options_available]  DEFAULT ((0)) FOR [is_options_available]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_is_richtext_editor]  DEFAULT ((0)) FOR [is_richtext_editor]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_is_notify_outofstock]  DEFAULT ((0)) FOR [is_notify_outofstock]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_meta_title_en]  DEFAULT ('-') FOR [meta_title_en]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_meta_title_ar]  DEFAULT ('-') FOR [meta_title_ar]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_meta_description_en]  DEFAULT ('-') FOR [meta_description_en]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_meta_description_ar]  DEFAULT ('-') FOR [meta_description_ar]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_meta_keyword_en]  DEFAULT ('-') FOR [meta_keyword_en]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_meta_keyword_ar]  DEFAULT ('-') FOR [meta_keyword_ar]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_review_count]  DEFAULT ((0)) FOR [review_count]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_rating]  DEFAULT ((0)) FOR [average_rating]
GO
ALTER TABLE [dbo].[Products_Activity_Log] ADD  CONSTRAINT [DF_Products_Activity_Log_action]  DEFAULT ((0)) FOR [action]
GO
ALTER TABLE [dbo].[Products_Activity_Log] ADD  CONSTRAINT [DF_Products_Activity_Log_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[ScrollBar] ADD  CONSTRAINT [DF_ScrollBar_language]  DEFAULT ((1)) FOR [language]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_is_navigator]  DEFAULT ('T') FOR [is_navigator]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_is_visible]  DEFAULT ('T') FOR [is_visible]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_is_system]  DEFAULT ('F') FOR [is_system]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_is_deletable]  DEFAULT ('T') FOR [is_deletable]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_is_singlepage]  DEFAULT ('F') FOR [is_singlepage]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_is_editable]  DEFAULT ('T') FOR [is_editable]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_is_title_editable]  DEFAULT ('T') FOR [is_title_editable]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_serial]  DEFAULT ((0)) FOR [serial]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_is_slider]  DEFAULT ((0)) FOR [is_slider]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_parent_id]  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_section_image]  DEFAULT ('') FOR [section_image]
GO
ALTER TABLE [dbo].[Sections] ADD  CONSTRAINT [DF_Sections_position]  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_id]  DEFAULT ((0)) FOR [id]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_country_id]  DEFAULT ((0)) FOR [country_id]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_first_half_prices]  DEFAULT ((0)) FOR [first_half_prices]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_each_additional_half_prices]  DEFAULT ((0)) FOR [each_additional_half_prices]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_is_offers]  DEFAULT ((0)) FOR [is_offers]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_is_tax]  DEFAULT ((0)) FOR [is_tax]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_vat_percentage]  DEFAULT ((0)) FOR [vat_percentage]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_offer_amounts]  DEFAULT ((0)) FOR [offer_amounts]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_is_cash_on_delivery]  DEFAULT ((0)) FOR [is_cash_on_delivery]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_cash_on_delivery_charge]  DEFAULT ((0)) FOR [cash_on_delivery_charge]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_is_banktransfer]  DEFAULT ((0)) FOR [is_banktransfer]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_is_flat_rate]  DEFAULT ((0)) FOR [is_flat_rate]
GO
ALTER TABLE [dbo].[Shipping_Cities_Prices] ADD  CONSTRAINT [DF_Shipping_Cities_Prices_flat_rate]  DEFAULT ((0)) FOR [flat_rate_amount]
GO
ALTER TABLE [dbo].[Shipping_Companies] ADD  CONSTRAINT [DF_Table1_company]  DEFAULT ('') FOR [company_en]
GO
ALTER TABLE [dbo].[Shipping_Companies] ADD  CONSTRAINT [DF_Shipping_Companies_company_ar]  DEFAULT ('') FOR [company_ar]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_first_half_price]  DEFAULT ((0)) FOR [first_half_prices]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_each_additional_half_price]  DEFAULT ((0)) FOR [each_additional_half_prices]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_is_offer]  DEFAULT ((0)) FOR [is_offers]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_is_tax]  DEFAULT ((0)) FOR [is_tax]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_vat_percentage]  DEFAULT ((0)) FOR [vat_percentage]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_offer_amount]  DEFAULT ((0)) FOR [offer_amounts]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_is_cash_on_delivery]  DEFAULT ((0)) FOR [is_cash_on_delivery]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_cash_on_delivery_amount]  DEFAULT ((0)) FOR [cash_on_delivery_amount]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_is_banktransfer]  DEFAULT ((0)) FOR [is_banktransfer]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] ADD  CONSTRAINT [DF_Shipping_Country_Prices_is_cities]  DEFAULT ((0)) FOR [is_cities]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_country_id]  DEFAULT ((0)) FOR [country_id]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_terms_and_conditions_en]  DEFAULT ('') FOR [terms_and_conditions_en]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_terms_and_conditions_ar]  DEFAULT ('') FOR [terms_and_conditions_ar]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_minimum_purchase_amount]  DEFAULT ((0)) FOR [minimum_purchase_amount]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Table_1_is_offer]  DEFAULT ((0)) FOR [is_offer_amount_or_percentage]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_is_manual_offer]  DEFAULT ((0)) FOR [is_manual_or_automatic_offer]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_offer_amount]  DEFAULT ((0)) FOR [offer_in_amount]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_offer_in_percentage]  DEFAULT ((0)) FOR [offer_in_percentage]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Shipping_Coupon_offers] ADD  CONSTRAINT [DF_Shipping_Coupon_offers_is_all_countries]  DEFAULT ((0)) FOR [is_all_countries]
GO
ALTER TABLE [dbo].[Shipping_Status] ADD  CONSTRAINT [DF_Shipping_Status_status]  DEFAULT ('') FOR [status_en]
GO
ALTER TABLE [dbo].[Shipping_Status] ADD  CONSTRAINT [DF_Shipping_Status_status_ar]  DEFAULT ('') FOR [status_ar]
GO
ALTER TABLE [dbo].[Shipping_Status] ADD  CONSTRAINT [DF_Shipping_Status_is_system]  DEFAULT ((0)) FOR [is_system]
GO
ALTER TABLE [dbo].[SiteVisitors] ADD  CONSTRAINT [DF_SiteVisitors_day]  DEFAULT (getdate()) FOR [day]
GO
ALTER TABLE [dbo].[SiteVisitors] ADD  CONSTRAINT [DF_SiteVisitors_visitors_count]  DEFAULT ((0)) FOR [visitors_count]
GO
ALTER TABLE [dbo].[Themes] ADD  CONSTRAINT [DF_Themes_color_id]  DEFAULT ((0)) FOR [color_id]
GO
ALTER TABLE [dbo].[Themes] ADD  CONSTRAINT [DF_Themes_is_selected]  DEFAULT ((0)) FOR [is_selected]
GO
ALTER TABLE [dbo].[Transaction_Details] ADD  CONSTRAINT [DF_Transaction_Details_reference_status]  DEFAULT ((0)) FOR [reference_status]
GO
ALTER TABLE [dbo].[Transaction_Details] ADD  CONSTRAINT [DF_Transaction_Details_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Transactions_Log] ADD  CONSTRAINT [DF_Transactions_Log_before_change]  DEFAULT ('') FOR [before_change]
GO
ALTER TABLE [dbo].[Transactions_Log] ADD  CONSTRAINT [DF_Transactions_Log_after_change]  DEFAULT ('') FOR [after_change]
GO
ALTER TABLE [dbo].[Transactions_Log] ADD  CONSTRAINT [DF_Transactions_Log_entry_time]  DEFAULT (getdate()) FOR [entry_time]
GO
ALTER TABLE [dbo].[Transactions_Log] ADD  CONSTRAINT [DF_Transactions_Log_action_user_id]  DEFAULT ((0)) FOR [action_user_id]
GO
ALTER TABLE [dbo].[User_Ratings] ADD  CONSTRAINT [DF_User_Ratings_entry_time]  DEFAULT (getdate()) FOR [entry_time]
GO
ALTER TABLE [dbo].[Video_Album] ADD  CONSTRAINT [DF_Video_Album_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Video_Album] ADD  CONSTRAINT [DF_Video_Album_is_published]  DEFAULT ((0)) FOR [is_published]
GO
ALTER TABLE [dbo].[Video_Album] ADD  CONSTRAINT [DF_Video_Album_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Video_Files] ADD  CONSTRAINT [DF_Video_Files_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Video_Files] ADD  CONSTRAINT [DF_Video_Files_item_order]  DEFAULT ((0)) FOR [item_order]
GO
ALTER TABLE [dbo].[Video_Images] ADD  CONSTRAINT [DF_Video_Images_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Wallet] ADD  CONSTRAINT [DF_Wallet_sid]  DEFAULT (newid()) FOR [sid]
GO
ALTER TABLE [dbo].[Wallet] ADD  CONSTRAINT [DF_Wallet_credit_amount]  DEFAULT ((0)) FOR [credit_amount]
GO
ALTER TABLE [dbo].[Wallet] ADD  CONSTRAINT [DF_Wallet_debit_amount]  DEFAULT ((0)) FOR [debit_amount]
GO
ALTER TABLE [dbo].[Wallet] ADD  CONSTRAINT [DF_Wallet_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[Wallet] ADD  CONSTRAINT [DF_Wallet_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[Wallet] ADD  CONSTRAINT [DF_Wallet_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Wallet_History] ADD  CONSTRAINT [DF_Wallet_History_credit_amount]  DEFAULT ((0)) FOR [credit_amount]
GO
ALTER TABLE [dbo].[Wallet_History] ADD  CONSTRAINT [DF_Wallet_History_debit_amount]  DEFAULT ((0)) FOR [debit_amount]
GO
ALTER TABLE [dbo].[Wallet_History] ADD  CONSTRAINT [DF_Wallet_History_balance]  DEFAULT ((0)) FOR [balance]
GO
ALTER TABLE [dbo].[Wallet_History] ADD  CONSTRAINT [DF_Wallet_History_entry_date]  DEFAULT (getdate()) FOR [entry_date]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Banners]  WITH CHECK ADD  CONSTRAINT [FK_Banners_Banner_Zones] FOREIGN KEY([zone_id])
REFERENCES [dbo].[Banner_Zones] ([id])
GO
ALTER TABLE [dbo].[Banners] CHECK CONSTRAINT [FK_Banners_Banner_Zones]
GO
ALTER TABLE [dbo].[Catalogue_ItemDatasheet]  WITH CHECK ADD  CONSTRAINT [FK_Catalogue_ItemDatasheet_Catalogue] FOREIGN KEY([item_id])
REFERENCES [dbo].[Catalogues_Items] ([id])
GO
ALTER TABLE [dbo].[Catalogue_ItemDatasheet] CHECK CONSTRAINT [FK_Catalogue_ItemDatasheet_Catalogue]
GO
ALTER TABLE [dbo].[Catalogue_ItemImages]  WITH CHECK ADD  CONSTRAINT [FK_Catalogue_ItemImages_Catalogue] FOREIGN KEY([item_id])
REFERENCES [dbo].[Catalogues_Items] ([id])
GO
ALTER TABLE [dbo].[Catalogue_ItemImages] CHECK CONSTRAINT [FK_Catalogue_ItemImages_Catalogue]
GO
ALTER TABLE [dbo].[Catalogues_Category]  WITH CHECK ADD  CONSTRAINT [FK_Catalogues_Category_Catalogues] FOREIGN KEY([catalogue_id])
REFERENCES [dbo].[Catalogues] ([id])
GO
ALTER TABLE [dbo].[Catalogues_Category] CHECK CONSTRAINT [FK_Catalogues_Category_Catalogues]
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_Catalogues_FieldsTemplate_Catalogue_Controls] FOREIGN KEY([control_id])
REFERENCES [dbo].[Catalogue_Controls] ([id])
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate] CHECK CONSTRAINT [FK_Catalogues_FieldsTemplate_Catalogue_Controls]
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_Catalogues_FieldsTemplate_Catalogues] FOREIGN KEY([catalogue_id])
REFERENCES [dbo].[Catalogues] ([id])
GO
ALTER TABLE [dbo].[Catalogues_FieldsTemplate] CHECK CONSTRAINT [FK_Catalogues_FieldsTemplate_Catalogues]
GO
ALTER TABLE [dbo].[Catalogues_ItemFields]  WITH CHECK ADD  CONSTRAINT [FK_Catalogues_ItemFields_Catalogues_FieldsTemplate] FOREIGN KEY([field_id])
REFERENCES [dbo].[Catalogues_FieldsTemplate] ([id])
GO
ALTER TABLE [dbo].[Catalogues_ItemFields] CHECK CONSTRAINT [FK_Catalogues_ItemFields_Catalogues_FieldsTemplate]
GO
ALTER TABLE [dbo].[Catalogues_ItemFields]  WITH CHECK ADD  CONSTRAINT [FK_Catalogues_ItemFields_Catalogues_Items] FOREIGN KEY([item_id])
REFERENCES [dbo].[Catalogues_Items] ([id])
GO
ALTER TABLE [dbo].[Catalogues_ItemFields] CHECK CONSTRAINT [FK_Catalogues_ItemFields_Catalogues_Items]
GO
ALTER TABLE [dbo].[Catalogues_Items]  WITH CHECK ADD  CONSTRAINT [FK_Catalogues_ItemsTable_Catalogues] FOREIGN KEY([catalogue_id])
REFERENCES [dbo].[Catalogues] ([id])
GO
ALTER TABLE [dbo].[Catalogues_Items] CHECK CONSTRAINT [FK_Catalogues_ItemsTable_Catalogues]
GO
ALTER TABLE [dbo].[Catalogues_Items]  WITH CHECK ADD  CONSTRAINT [FK_Catalogues_ItemsTable_Catalogues_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Catalogues_Category] ([id])
GO
ALTER TABLE [dbo].[Catalogues_Items] CHECK CONSTRAINT [FK_Catalogues_ItemsTable_Catalogues_Category]
GO
ALTER TABLE [dbo].[Coupon_Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Coupon_Profiles_Shipping_Coupon_offers] FOREIGN KEY([coupon_id])
REFERENCES [dbo].[Shipping_Coupon_offers] ([id])
GO
ALTER TABLE [dbo].[Coupon_Profiles] CHECK CONSTRAINT [FK_Coupon_Profiles_Shipping_Coupon_offers]
GO
ALTER TABLE [dbo].[Document_History]  WITH CHECK ADD  CONSTRAINT [FK_Document_History_Documents] FOREIGN KEY([doc_id])
REFERENCES [dbo].[Documents] ([doc_id])
GO
ALTER TABLE [dbo].[Document_History] CHECK CONSTRAINT [FK_Document_History_Documents]
GO
ALTER TABLE [dbo].[Document_History]  WITH CHECK ADD  CONSTRAINT [FK_Document_History_Profiles] FOREIGN KEY([update_user])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Document_History] CHECK CONSTRAINT [FK_Document_History_Profiles]
GO
ALTER TABLE [dbo].[Document_Text]  WITH CHECK ADD  CONSTRAINT [FK_Document_Text_Documents] FOREIGN KEY([doc_id])
REFERENCES [dbo].[Documents] ([doc_id])
GO
ALTER TABLE [dbo].[Document_Text] CHECK CONSTRAINT [FK_Document_Text_Documents]
GO
ALTER TABLE [dbo].[Download_Category]  WITH CHECK ADD  CONSTRAINT [FK_Download_Category_Download_Section] FOREIGN KEY([section_id])
REFERENCES [dbo].[Download_Section] ([id])
GO
ALTER TABLE [dbo].[Download_Category] CHECK CONSTRAINT [FK_Download_Category_Download_Section]
GO
ALTER TABLE [dbo].[Download_Files]  WITH CHECK ADD  CONSTRAINT [FK_Download_Files_Download_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Download_Category] ([id])
GO
ALTER TABLE [dbo].[Download_Files] CHECK CONSTRAINT [FK_Download_Files_Download_Category]
GO
ALTER TABLE [dbo].[Footer]  WITH CHECK ADD  CONSTRAINT [FK_Footer_Footer_Columns] FOREIGN KEY([column_id])
REFERENCES [dbo].[Footer_Columns] ([id])
GO
ALTER TABLE [dbo].[Footer] CHECK CONSTRAINT [FK_Footer_Footer_Columns]
GO
ALTER TABLE [dbo].[Footer]  WITH CHECK ADD  CONSTRAINT [FK_Footer_Languages] FOREIGN KEY([language])
REFERENCES [dbo].[Languages] ([language_id])
GO
ALTER TABLE [dbo].[Footer] CHECK CONSTRAINT [FK_Footer_Languages]
GO
ALTER TABLE [dbo].[Footer_Columns]  WITH CHECK ADD  CONSTRAINT [FK_Footer_Columns_Languages] FOREIGN KEY([language])
REFERENCES [dbo].[Languages] ([language_id])
GO
ALTER TABLE [dbo].[Footer_Columns] CHECK CONSTRAINT [FK_Footer_Columns_Languages]
GO
ALTER TABLE [dbo].[Gift_Coupons]  WITH CHECK ADD  CONSTRAINT [FK_Gift_Coupons_GiftCoupon] FOREIGN KEY([id])
REFERENCES [dbo].[Gift_Coupons] ([id])
GO
ALTER TABLE [dbo].[Gift_Coupons] CHECK CONSTRAINT [FK_Gift_Coupons_GiftCoupon]
GO
ALTER TABLE [dbo].[Gift_Coupons]  WITH CHECK ADD  CONSTRAINT [FK_Gift_Coupons_Profiles] FOREIGN KEY([profile_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Gift_Coupons] CHECK CONSTRAINT [FK_Gift_Coupons_Profiles]
GO
ALTER TABLE [dbo].[Gift_Coupons]  WITH CHECK ADD  CONSTRAINT [FK_Gift_Coupons_Profiles1] FOREIGN KEY([update_user])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Gift_Coupons] CHECK CONSTRAINT [FK_Gift_Coupons_Profiles1]
GO
ALTER TABLE [dbo].[Gift_Coupons]  WITH CHECK ADD  CONSTRAINT [FK_Gift_Coupons_Profiles2] FOREIGN KEY([recipient_profile_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Gift_Coupons] CHECK CONSTRAINT [FK_Gift_Coupons_Profiles2]
GO
ALTER TABLE [dbo].[History_Log]  WITH CHECK ADD  CONSTRAINT [FK_History_Log_AspNetUsers] FOREIGN KEY([entry_user_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[History_Log] CHECK CONSTRAINT [FK_History_Log_AspNetUsers]
GO
ALTER TABLE [dbo].[ImagesOfAlbum]  WITH CHECK ADD  CONSTRAINT [FK_ImagesOfAlbum_ImageAlbums] FOREIGN KEY([album_id])
REFERENCES [dbo].[ImageAlbums] ([id])
GO
ALTER TABLE [dbo].[ImagesOfAlbum] CHECK CONSTRAINT [FK_ImagesOfAlbum_ImageAlbums]
GO
ALTER TABLE [dbo].[ImagesOfAlbum]  WITH CHECK ADD  CONSTRAINT [FK_ImagesOfAlbum_Images] FOREIGN KEY([image_id])
REFERENCES [dbo].[Images] ([id])
GO
ALTER TABLE [dbo].[ImagesOfAlbum] CHECK CONSTRAINT [FK_ImagesOfAlbum_Images]
GO
ALTER TABLE [dbo].[Inventory_images]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_images_Product_Images] FOREIGN KEY([product_images_id])
REFERENCES [dbo].[Product_Images] ([id])
GO
ALTER TABLE [dbo].[Inventory_images] CHECK CONSTRAINT [FK_Inventory_images_Product_Images]
GO
ALTER TABLE [dbo].[Inventory_images]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_images_Product_Inventory] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Inventory_images] CHECK CONSTRAINT [FK_Inventory_images_Product_Inventory]
GO
ALTER TABLE [dbo].[Inventory_images]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_images_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Inventory_images] CHECK CONSTRAINT [FK_Inventory_images_Products]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Invoice] FOREIGN KEY([related_invoice])
REFERENCES [dbo].[Invoices] ([invoice_id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoice_Invoice]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoice_Order]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Order1] FOREIGN KEY([related_order])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoice_Order1]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Wallet] FOREIGN KEY([wallet_id])
REFERENCES [dbo].[Wallet] ([id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoice_Wallet]
GO
ALTER TABLE [dbo].[Links_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Links_Mapping_Links_Mapping_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Links_Mapping_Category] ([id])
GO
ALTER TABLE [dbo].[Links_Mapping] CHECK CONSTRAINT [FK_Links_Mapping_Links_Mapping_Category]
GO
ALTER TABLE [dbo].[Menu_Images]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Images_Menus] FOREIGN KEY([parent_id])
REFERENCES [dbo].[Menus] ([id])
GO
ALTER TABLE [dbo].[Menu_Images] CHECK CONSTRAINT [FK_Menu_Images_Menus]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Order]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Order_Details] FOREIGN KEY([id])
REFERENCES [dbo].[Order_Details] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Order_Details]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([item_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers] FOREIGN KEY([profile_intid])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_AspNetUsers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order] FOREIGN KEY([related_order])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Order]
GO
ALTER TABLE [dbo].[Orders_History]  WITH CHECK ADD  CONSTRAINT [FK_Orders_History_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Orders_History] CHECK CONSTRAINT [FK_Orders_History_Order]
GO
ALTER TABLE [dbo].[Payment_Methods_CountryWise]  WITH CHECK ADD  CONSTRAINT [FK_paymentmethod] FOREIGN KEY([payment_method_id])
REFERENCES [dbo].[Payment_Methods] ([payment_method_id])
GO
ALTER TABLE [dbo].[Payment_Methods_CountryWise] CHECK CONSTRAINT [FK_paymentmethod]
GO
ALTER TABLE [dbo].[Payment_Methods_CountryWise]  WITH CHECK ADD  CONSTRAINT [FK_paymentmethodcountry] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([country_id])
GO
ALTER TABLE [dbo].[Payment_Methods_CountryWise] CHECK CONSTRAINT [FK_paymentmethodcountry]
GO
ALTER TABLE [dbo].[PhotoSlider_Images]  WITH CHECK ADD  CONSTRAINT [FK_PhotoSlider_Images_PhotoSlider_Albums] FOREIGN KEY([album_id])
REFERENCES [dbo].[PhotoSlider_Albums] ([id])
GO
ALTER TABLE [dbo].[PhotoSlider_Images] CHECK CONSTRAINT [FK_PhotoSlider_Images_PhotoSlider_Albums]
GO
ALTER TABLE [dbo].[Poll_Answers]  WITH CHECK ADD  CONSTRAINT [FK_Poll_Answers_Poll_Questions] FOREIGN KEY([qid])
REFERENCES [dbo].[Poll_Questions] ([id])
GO
ALTER TABLE [dbo].[Poll_Answers] CHECK CONSTRAINT [FK_Poll_Answers_Poll_Questions]
GO
ALTER TABLE [dbo].[Poll_Results]  WITH CHECK ADD  CONSTRAINT [FK_Poll_Results_Poll_Questions] FOREIGN KEY([poll_id])
REFERENCES [dbo].[Poll_Questions] ([id])
GO
ALTER TABLE [dbo].[Poll_Results] CHECK CONSTRAINT [FK_Poll_Results_Poll_Questions]
GO
ALTER TABLE [dbo].[Product_Document]  WITH CHECK ADD  CONSTRAINT [FK_Product_Datasheet_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Product_Document] CHECK CONSTRAINT [FK_Product_Datasheet_Products]
GO
ALTER TABLE [dbo].[Product_Images]  WITH CHECK ADD  CONSTRAINT [FK_product_Images_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Product_Images] CHECK CONSTRAINT [FK_product_Images_products]
GO
ALTER TABLE [dbo].[Product_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Product_Inventory_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Product_Inventory] CHECK CONSTRAINT [FK_Product_Inventory_Products]
GO
ALTER TABLE [dbo].[Product_Review]  WITH CHECK ADD  CONSTRAINT [FK_Product_Review_AspNetUsers] FOREIGN KEY([user_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Product_Review] CHECK CONSTRAINT [FK_Product_Review_AspNetUsers]
GO
ALTER TABLE [dbo].[Product_Review]  WITH CHECK ADD  CONSTRAINT [FK_Product_Review_Product_Review] FOREIGN KEY([review_id])
REFERENCES [dbo].[Product_Review] ([review_id])
GO
ALTER TABLE [dbo].[Product_Review] CHECK CONSTRAINT [FK_Product_Review_Product_Review]
GO
ALTER TABLE [dbo].[Product_Review]  WITH CHECK ADD  CONSTRAINT [FK_Product_Review_Product_Review1] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Product_Review] CHECK CONSTRAINT [FK_Product_Review_Product_Review1]
GO
ALTER TABLE [dbo].[Product_Specification]  WITH CHECK ADD  CONSTRAINT [FK_Product_Specification_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Product_Specification] CHECK CONSTRAINT [FK_Product_Specification_Products]
GO
ALTER TABLE [dbo].[Product_Sub_Category]  WITH CHECK ADD  CONSTRAINT [FK_Product_Sub_Category_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Product_Category] ([id])
GO
ALTER TABLE [dbo].[Product_Sub_Category] CHECK CONSTRAINT [FK_Product_Sub_Category_Product_Category]
GO
ALTER TABLE [dbo].[Product_Sub_Specification]  WITH CHECK ADD  CONSTRAINT [FK_Product_Sub_Specification_Product_Specification] FOREIGN KEY([product_specification_id])
REFERENCES [dbo].[Product_Specification] ([id])
GO
ALTER TABLE [dbo].[Product_Sub_Specification] CHECK CONSTRAINT [FK_Product_Sub_Specification_Product_Specification]
GO
ALTER TABLE [dbo].[Product_Sub_Specification]  WITH CHECK ADD  CONSTRAINT [FK_Product_Sub_Specification_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Product_Sub_Specification] CHECK CONSTRAINT [FK_Product_Sub_Specification_Products]
GO
ALTER TABLE [dbo].[Product_Title]  WITH CHECK ADD  CONSTRAINT [FK_Product_Title_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Product_Title] CHECK CONSTRAINT [FK_Product_Title_Products]
GO
ALTER TABLE [dbo].[Sections]  WITH NOCHECK ADD  CONSTRAINT [FK_Sections_Languages] FOREIGN KEY([language])
REFERENCES [dbo].[Languages] ([language_id])
GO
ALTER TABLE [dbo].[Sections] CHECK CONSTRAINT [FK_Sections_Languages]
GO
ALTER TABLE [dbo].[Shipping_Country_Prices]  WITH CHECK ADD  CONSTRAINT [FK_Shipping_Country_Prices_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([country_id])
GO
ALTER TABLE [dbo].[Shipping_Country_Prices] CHECK CONSTRAINT [FK_Shipping_Country_Prices_Country]
GO
ALTER TABLE [dbo].[Testimonial]  WITH CHECK ADD  CONSTRAINT [FK_Testimonial_Testimonial] FOREIGN KEY([countryid])
REFERENCES [dbo].[Country] ([country_id])
GO
ALTER TABLE [dbo].[Testimonial] CHECK CONSTRAINT [FK_Testimonial_Testimonial]
GO
ALTER TABLE [dbo].[Transaction_Details]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Details_Invoice] FOREIGN KEY([invoice_id])
REFERENCES [dbo].[Invoices] ([invoice_id])
GO
ALTER TABLE [dbo].[Transaction_Details] CHECK CONSTRAINT [FK_Transaction_Details_Invoice]
GO
ALTER TABLE [dbo].[Transactions_Log]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Log_Invoice] FOREIGN KEY([invoice_id])
REFERENCES [dbo].[Invoices] ([invoice_id])
GO
ALTER TABLE [dbo].[Transactions_Log] CHECK CONSTRAINT [FK_Transactions_Log_Invoice]
GO
ALTER TABLE [dbo].[Transactions_Log]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Log_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Transactions_Log] CHECK CONSTRAINT [FK_Transactions_Log_Order]
GO
ALTER TABLE [dbo].[User_Ratings]  WITH CHECK ADD  CONSTRAINT [FK_User_Ratings_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[User_Ratings] CHECK CONSTRAINT [FK_User_Ratings_Products]
GO
ALTER TABLE [dbo].[Video_Files]  WITH CHECK ADD  CONSTRAINT [FK_Video_Files_Video_Album] FOREIGN KEY([album_id])
REFERENCES [dbo].[Video_Album] ([id])
GO
ALTER TABLE [dbo].[Video_Files] CHECK CONSTRAINT [FK_Video_Files_Video_Album]
GO
ALTER TABLE [dbo].[Video_Images]  WITH CHECK ADD  CONSTRAINT [FK_Video_Images_Video_Files] FOREIGN KEY([video_id])
REFERENCES [dbo].[Video_Files] ([id])
GO
ALTER TABLE [dbo].[Video_Images] CHECK CONSTRAINT [FK_Video_Images_Video_Files]
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD  CONSTRAINT [FK_Wallet_Gift_Coupons_Amounts] FOREIGN KEY([credit_amount_id])
REFERENCES [dbo].[Gift_Coupons_Amounts] ([id])
GO
ALTER TABLE [dbo].[Wallet] CHECK CONSTRAINT [FK_Wallet_Gift_Coupons_Amounts]
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD  CONSTRAINT [FK_Wallet_Profiles] FOREIGN KEY([profile_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Wallet] CHECK CONSTRAINT [FK_Wallet_Profiles]
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD  CONSTRAINT [FK_Wallet_Profiles1] FOREIGN KEY([entry_user])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Wallet] CHECK CONSTRAINT [FK_Wallet_Profiles1]
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD  CONSTRAINT [FK_Wallet_Profiles2] FOREIGN KEY([update_user])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Wallet] CHECK CONSTRAINT [FK_Wallet_Profiles2]
GO
ALTER TABLE [dbo].[Wallet_History]  WITH CHECK ADD  CONSTRAINT [FK_Wallet_History_GiftCoupon] FOREIGN KEY([giftcoupon_id])
REFERENCES [dbo].[Gift_Coupons] ([id])
GO
ALTER TABLE [dbo].[Wallet_History] CHECK CONSTRAINT [FK_Wallet_History_GiftCoupon]
GO
ALTER TABLE [dbo].[Wallet_History]  WITH CHECK ADD  CONSTRAINT [FK_Wallet_History_Invoice] FOREIGN KEY([invoice_id])
REFERENCES [dbo].[Invoices] ([invoice_id])
GO
ALTER TABLE [dbo].[Wallet_History] CHECK CONSTRAINT [FK_Wallet_History_Invoice]
GO




