USE [Users]
GO
/****** Object:  Table [dbo].[CustomerLogin]    Script Date: 14-12-2019 13:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerLogin](
	[Username] [nvarchar](30) NOT NULL,
	[UserPassword] [nvarchar](30) NOT NULL,
	[Ename] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 14-12-2019 13:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[First_name] [nvarchar](50) NOT NULL,
	[Last_name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NULL,
	[StudentGender] [nvarchar](50) NULL,
	[Enrolled] [bit] NULL,
	[StudentImage] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[Customer_View]    Script Date: 14-12-2019 13:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[Customer_View]
as

select * from customers C left join  CustomerLogin CL on C.First_name =CL.Username
GO
/****** Object:  Table [dbo].[userproduct]    Script Date: 14-12-2019 13:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userproduct](
	[pid] [int] NOT NULL,
	[pname] [varchar](100) NULL,
	[qty] [int] NULL,
	[price] [int] NULL,
 CONSTRAINT [pk_pid] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_data]    Script Date: 14-12-2019 13:35:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Customer_data](@name NVARCHAR(50), @Lname NVARCHAR(50),@email NVARCHAR(50),@City NVARCHAR(50),@Gender nvarchar(50) null, @StudentGender nvarchar(50) null,@Enrolled bit null, @StudentImage varbinary null)
AS 

 insert into customers values (@name,@Lname,@email,@City,@Gender, @StudentGender,@Enrolled, @StudentImage)


  
GO
