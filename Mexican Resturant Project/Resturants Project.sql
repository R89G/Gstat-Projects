
--Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types

USE master
GO

DROP DATABASE IF EXISTS [Resturants]
GO


CREATE DATABASE [Resturants];
GO

USE [Resturants]
GO

/****** Object:  Table [dbo].[consumer_preferences]    Script Date: 22/11/2021 12:59:27 ******/
CREATE TABLE [dbo].[consumer_preferences](
	[index] [bigint] NULL,
	[Consumer_ID] [varchar](max) NULL,
	[Preferred_Cuisine] [varchar](max) NULL
) 
GO
/****** Object:  Table [dbo].[consumers]    Script Date: 22/11/2021 12:59:27 ******/

CREATE TABLE [dbo].[consumers](
	[index] [bigint] NULL,
	[Consumer_ID] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Smoker] [varchar](max) NULL,
	[Drink_Level] [varchar](max) NULL,
	[Transportation_Method] [varchar](max) NULL,
	[Marital_Status] [varchar](max) NULL,
	[Children] [varchar](max) NULL,
	[Age] [bigint] NULL,
	[Occupation] [varchar](max) NULL,
	[Budget] [varchar](max) NULL
)
GO
/****** Object:  Table [dbo].[data_dictionary]    Script Date: 22/11/2021 12:59:27 ******/
CREATE TABLE [dbo].[data_dictionary](
	[index] [bigint] NULL,
	[Table] [varchar](max) NULL,
	[Field] [varchar](max) NULL,
	[Description] [varchar](max) NULL
)
GO
/****** Object:  Table [dbo].[ratings]    Script Date: 22/11/2021 12:59:27 ******/
CREATE TABLE [dbo].[ratings](
	[index] [bigint] NULL,
	[Consumer_ID] [varchar](max) NULL,
	[Restaurant_ID] [bigint] NULL,
	[Overall_Rating] [bigint] NULL,
	[Food_Rating] [bigint] NULL,
	[Service_Rating] [bigint] NULL
) 
GO
/****** Object:  Table [dbo].[restaurant_cuisines]    Script Date: 22/11/2021 12:59:27 ******/
CREATE TABLE [dbo].[restaurant_cuisines](
	[index] [bigint] NULL,
	[Restaurant_ID] [bigint] NULL,
	[Cuisine] [varchar](max) NULL
) 
GO
/****** Object:  Table [dbo].[restaurants]    Script Date: 22/11/2021 12:59:27 ******/
CREATE TABLE [dbo].[restaurants](
	[index] [bigint] NULL,
	[Restaurant_ID] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[City] [varchar](max) NULL,
	[State] [varchar](max) NULL,
	[Country] [varchar](max) NULL,
	[Zip_Code] [float] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Alcohol_Service] [varchar](max) NULL,
	[Smoking_Allowed] [varchar](max) NULL,
	[Price] [varchar](max) NULL,
	[Franchise] [varchar](max) NULL,
	[Area] [varchar](max) NULL,
	[Parking] [varchar](max) NULL
)
GO

INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (0, N'U1001', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (1, N'U1002', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (2, N'U1003', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (3, N'U1004', N'Bakery')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (4, N'U1004', N'Breakfast')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (5, N'U1004', N'Japanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (6, N'U1004', N'Contemporary')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (7, N'U1004', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (8, N'U1004', N'Bagels')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (9, N'U1004', N'Coffee Shop')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (10, N'U1004', N'Continental')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (11, N'U1004', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (12, N'U1005', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (13, N'U1006', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (14, N'U1007', N'Family')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (15, N'U1008', N'Coffee Shop')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (16, N'U1008', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (17, N'U1008', N'Juice')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (18, N'U1008', N'Hawaiian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (19, N'U1008', N'Hot Dogs')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (20, N'U1008', N'Latin American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (21, N'U1008', N'Korean')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (22, N'U1008', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (23, N'U1008', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (24, N'U1008', N'Italian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (25, N'U1009', N'Diner')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (26, N'U1009', N'Fast Food')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (27, N'U1009', N'Family')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (28, N'U1009', N'Coffee Shop')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (29, N'U1009', N'Deli')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (30, N'U1009', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (31, N'U1009', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (32, N'U1010', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (33, N'U1011', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (34, N'U1012', N'Latin American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (35, N'U1013', N'Japanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (36, N'U1014', N'Japanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (37, N'U1014', N'Fast Food')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (38, N'U1015', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (39, N'U1016', N'Coffee Shop')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (40, N'U1016', N'Contemporary')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (41, N'U1016', N'Regional')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (42, N'U1016', N'Fusion')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (43, N'U1016', N'Japanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (44, N'U1016', N'Portuguese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (45, N'U1016', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (46, N'U1016', N'Indian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (47, N'U1016', N'Eastern European')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (48, N'U1016', N'Lebanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (49, N'U1016', N'Moroccan')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (50, N'U1016', N'Barbecue')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (51, N'U1016', N'Polynesian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (52, N'U1016', N'Polish')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (53, N'U1017', N'Chinese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (54, N'U1018', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (55, N'U1019', N'Family')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (56, N'U1020', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (57, N'U1021', N'Pizzeria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (58, N'U1021', N'Regional')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (59, N'U1021', N'Chinese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (60, N'U1021', N'Burgers')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (61, N'U1022', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (62, N'U1023', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (63, N'U1024', N'Afghan')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (64, N'U1025', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (65, N'U1026', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (66, N'U1027', N'Family')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (67, N'U1028', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (68, N'U1029', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (69, N'U1030', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (70, N'U1031', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (71, N'U1032', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (72, N'U1033', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (73, N'U1034', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (74, N'U1035', N'Family')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (75, N'U1036', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (76, N'U1037', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (77, N'U1038', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (78, N'U1039', N'Regional')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (79, N'U1040', N'Pizzeria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (80, N'U1041', N'Contemporary')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (81, N'U1042', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (82, N'U1043', N'Latin American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (83, N'U1044', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (84, N'U1045', N'Middle Eastern')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (85, N'U1045', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (86, N'U1045', N'Mongolian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (87, N'U1045', N'Moroccan')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (88, N'U1046', N'Bar')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (89, N'U1047', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (90, N'U1048', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (91, N'U1049', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (92, N'U1050', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (93, N'U1051', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (94, N'U1052', N'Bakery')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (95, N'U1053', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (96, N'U1054', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (97, N'U1055', N'Breakfast')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (98, N'U1056', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (99, N'U1057', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (100, N'U1058', N'Cuban')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (101, N'U1059', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (102, N'U1060', N'Burgers')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (103, N'U1060', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (104, N'U1060', N'Pizzeria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (105, N'U1060', N'Juice')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (106, N'U1060', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (107, N'U1060', N'Tex Mex')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (108, N'U1060', N'Spanish')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (109, N'U1060', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (110, N'U1060', N'Fast Food')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (111, N'U1060', N'Coffee Shop')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (112, N'U1060', N'Soup')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (113, N'U1060', N'Hot Dogs')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (114, N'U1060', N'Italian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (115, N'U1061', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (116, N'U1062', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (117, N'U1063', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (118, N'U1064', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (119, N'U1065', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (120, N'U1066', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (121, N'U1067', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (122, N'U1068', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (123, N'U1069', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (124, N'U1070', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (125, N'U1071', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (126, N'U1072', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (127, N'U1073', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (128, N'U1074', N'Sushi')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (129, N'U1075', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (130, N'U1076', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (131, N'U1077', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (132, N'U1078', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (133, N'U1079', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (134, N'U1080', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (135, N'U1081', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (136, N'U1082', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (137, N'U1083', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (138, N'U1084', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (139, N'U1085', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (140, N'U1086', N'Italian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (141, N'U1087', N'Chinese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (142, N'U1088', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (143, N'U1089', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (144, N'U1090', N'Tex Mex')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (145, N'U1091', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (146, N'U1091', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (147, N'U1092', N'Game')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (148, N'U1093', N'Japanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (149, N'U1094', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (150, N'U1095', N'Italian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (151, N'U1096', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (152, N'U1097', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (153, N'U1098', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (154, N'U1099', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (155, N'U1100', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (156, N'U1101', N'Chinese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (157, N'U1101', N'Italian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (158, N'U1101', N'Doughnuts')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (159, N'U1101', N'Afghan')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (160, N'U1101', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (161, N'U1101', N'Burgers')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (162, N'U1101', N'Latin American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (163, N'U1101', N'Contemporary')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (164, N'U1101', N'Coffee Shop')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (165, N'U1101', N'Family')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (166, N'U1101', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (167, N'U1101', N'Bar')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (168, N'U1101', N'Australian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (169, N'U1101', N'Hot Dogs')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (170, N'U1101', N'Diner')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (171, N'U1102', N'Pizzeria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (172, N'U1103', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (173, N'U1104', N'Italian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (174, N'U1105', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (175, N'U1106', N'Barbecue')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (176, N'U1107', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (177, N'U1108', N'Coffee Shop')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (178, N'U1108', N'Sushi')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (179, N'U1108', N'Latin American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (180, N'U1108', N'Deli')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (181, N'U1108', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (182, N'U1108', N'Hot Dogs')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (183, N'U1108', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (184, N'U1108', N'Fast Food')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (185, N'U1108', N'Burgers')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (186, N'U1108', N'Asian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (187, N'U1108', N'Pizzeria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (188, N'U1108', N'Chinese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (189, N'U1108', N'Ice Cream')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (190, N'U1108', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (191, N'U1108', N'Japanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (192, N'U1108', N'Game')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (193, N'U1108', N'Family')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (194, N'U1108', N'Seafood')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (195, N'U1109', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (196, N'U1110', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (197, N'U1111', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (198, N'U1112', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (199, N'U1113', N'Burgers')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (200, N'U1114', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (201, N'U1115', N'Regional')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (202, N'U1116', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (203, N'U1117', N'Turkish')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (204, N'U1118', N'Pizzeria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (205, N'U1119', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (206, N'U1120', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (207, N'U1121', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (208, N'U1122', N'Afghan')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (209, N'U1123', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (210, N'U1124', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (211, N'U1125', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (212, N'U1126', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (213, N'U1127', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (214, N'U1128', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (215, N'U1128', N'Hot Dogs')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (216, N'U1128', N'Pizzeria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (217, N'U1128', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (218, N'U1129', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (219, N'U1130', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (220, N'U1131', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (221, N'U1132', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (222, N'U1133', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (223, N'U1134', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (224, N'U1135', N'Organic')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (225, N'U1135', N'Steaks')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (226, N'U1135', N'Middle Eastern')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (227, N'U1135', N'Mediterranean')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (228, N'U1135', N'British')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (229, N'U1135', N'Austrian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (230, N'U1135', N'Israeli')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (231, N'U1135', N'Doughnuts')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (232, N'U1135', N'Pizzeria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (233, N'U1135', N'Seafood')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (234, N'U1135', N'Fast Food')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (235, N'U1135', N'Moroccan')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (236, N'U1135', N'Hot Dogs')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (237, N'U1135', N'Russian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (238, N'U1135', N'Malaysian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (239, N'U1135', N'Burgers')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (240, N'U1135', N'Fusion')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (241, N'U1135', N'Korean')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (242, N'U1135', N'Japanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (243, N'U1135', N'Vegetarian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (244, N'U1135', N'Turkish')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (245, N'U1135', N'Peruvian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (246, N'U1135', N'Juice')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (247, N'U1135', N'Tapas')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (248, N'U1135', N'Eclectic')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (249, N'U1135', N'African')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (250, N'U1135', N'Basque')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (251, N'U1135', N'Canadian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (252, N'U1135', N'Afghan')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (253, N'U1135', N'Diner')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (254, N'U1135', N'Irish')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (255, N'U1135', N'Sushi')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (256, N'U1135', N'Polynesian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (257, N'U1135', N'Bagels')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (258, N'U1135', N'Tex Mex')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (259, N'U1135', N'Cuban')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (260, N'U1135', N'Southwestern')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (261, N'U1135', N'Coffee Shop')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (262, N'U1135', N'Continental')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (263, N'U1135', N'Family')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (264, N'U1135', N'Indian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (265, N'U1135', N'Tea House')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (266, N'U1135', N'International')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (267, N'U1135', N'Pacific')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (268, N'U1135', N'Australian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (269, N'U1135', N'German')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (270, N'U1135', N'Regional')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (271, N'U1135', N'Spanish')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (272, N'U1135', N'Persian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (273, N'U1135', N'Ethiopian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (274, N'U1135', N'Romanian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (275, N'U1135', N'Cambodian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (276, N'U1135', N'Pacific')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (277, N'U1135', N'Tunisian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (278, N'U1135', N'Filipino')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (279, N'U1135', N'Dim Sum')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (280, N'U1135', N'Breakfast')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (281, N'U1135', N'Contemporary')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (282, N'U1135', N'Greek')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (283, N'U1135', N'Thai')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (284, N'U1135', N'Swiss')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (285, N'U1135', N'Bar')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (286, N'U1135', N'Soup')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (287, N'U1135', N'American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (288, N'U1135', N'Mongolian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (289, N'U1135', N'Cajun')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (290, N'U1135', N'Armenian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (291, N'U1135', N'Indigenous')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (292, N'U1135', N'Brewery')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (293, N'U1135', N'Hawaiian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (294, N'U1135', N'Cafeteria')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (295, N'U1135', N'Lebanese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (296, N'U1135', N'Chinese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (297, N'U1135', N'Portuguese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (298, N'U1135', N'Caribbean')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (299, N'U1135', N'Indonesian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (300, N'U1135', N'Hungarian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (301, N'U1135', N'Bakery')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (302, N'U1135', N'Dutch')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (303, N'U1135', N'Deli')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (304, N'U1135', N'Kosher')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (305, N'U1135', N'Fine_Dining')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (306, N'U1135', N'Jamaican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (307, N'U1135', N'Tibetan')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (308, N'U1135', N'Latin American')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (309, N'U1135', N'Asian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (310, N'U1135', N'Eastern European')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (311, N'U1135', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (312, N'U1135', N'Burmese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (313, N'U1135', N'California')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (314, N'U1135', N'Game')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (315, N'U1135', N'Italian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (316, N'U1135', N'Scandinavian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (317, N'U1135', N'Chilean')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (318, N'U1135', N'Polish')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (319, N'U1135', N'North African')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (320, N'U1135', N'Asian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (321, N'U1135', N'Vietnamese')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (322, N'U1135', N'Barbecue')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (323, N'U1135', N'French')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (324, N'U1135', N'Brazilian')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (325, N'U1135', N'Southern')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (326, N'U1135', N'Ice Cream')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (327, N'U1136', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (328, N'U1137', N'Mexican')
GO
INSERT [dbo].[consumer_preferences] ([index], [Consumer_ID], [Preferred_Cuisine]) VALUES (329, N'U1138', N'Pizzeria')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (0, N'U1001', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.139997, -100.978803, N'No', N'Abstemious', N'On Foot', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (1, N'U1002', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.150087, -100.983325, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (2, N'U1003', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.119847, -100.946527, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (3, N'U1004', N'Cuernavaca', N'Morelos', N'Mexico', 18.867, -99.183, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 72, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (4, N'U1005', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.183477, -100.959891, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 20, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (5, N'U1006', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.15, -100.983, N'Yes', N'Social Drinker', N'Car', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (6, N'U1007', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.118464, -100.938256, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (7, N'U1008', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.122989, -100.923811, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (8, N'U1009', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.159427, -100.990448, N'No', N'Abstemious', N'On Foot', N'Single', N'Kids', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (9, N'U1010', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.190889, -100.998669, N'No', N'Social Drinker', N'Car', N'Married', N'Kids', 25, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (10, N'U1011', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.724972, -99.152856, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (11, N'U1012', N'Cuernavaca', N'Morelos', N'Mexico', 18.813348, -99.243697, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 24, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (12, N'U1013', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.174624, -100.993873, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 30, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (13, N'U1014', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.751607, -99.170108, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (14, N'U1015', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.12676, -100.905209, N'Yes', N'Social Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (15, N'U1016', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.156247, -100.977402, N'No', N'Casual Drinker', N'On Foot', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (16, N'U1017', N'Cuernavaca', N'Morelos', N'Mexico', 18.952615, -99.201616, N'No', N'Casual Drinker', N'Public', N'Single', NULL, 21, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (17, N'U1018', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.190949, -100.917902, N'Yes', N'Casual Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (18, N'U1019', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.153385, -100.975294, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (19, N'U1020', N'Cuernavaca', N'Morelos', N'Mexico', 18.878189, -99.222969, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 30, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (20, N'U1021', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.730569, -99.171883, N'No', N'Social Drinker', N'Car', N'Single', N'Dependent', 28, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (21, N'U1022', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.146708, -100.964355, N'No', N'Casual Drinker', N'Car', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (22, N'U1023', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.752943, -99.166589, N'No', N'Casual Drinker', N'Car', N'Single', N'Independent', 24, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (23, N'U1024', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.154021, -100.976028, NULL, N'Abstemious', NULL, NULL, NULL, 82, NULL, NULL)
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (24, N'U1025', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.125603, -100.907844, N'No', N'Social Drinker', N'Public', N'Single', NULL, 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (25, N'U1026', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.733, -99.133, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (26, N'U1027', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.16515, -100.987015, N'Yes', N'Social Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (27, N'U1028', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.752874, -99.169242, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (28, N'U1029', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.151796, -100.989075, N'Yes', N'Casual Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (29, N'U1030', N'Cuernavaca', N'Morelos', N'Mexico', 18.844818, -99.182758, N'No', N'Casual Drinker', N'On Foot', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (30, N'U1031', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.735698, -99.159851, N'No', N'Abstemious', NULL, N'Married', N'Kids', 20, N'Unemployed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (31, N'U1032', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.169184, -100.986843, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (32, N'U1033', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.15, -100.983, N'No', N'Social Drinker', N'On Foot', N'Single', NULL, 21, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (33, N'U1034', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.137178, -101.013169, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (34, N'U1035', N'Cuernavaca', N'Morelos', N'Mexico', 18.839671, -99.223897, N'Yes', N'Casual Drinker', N'Car', N'Single', N'Independent', 27, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (35, N'U1036', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.160572, -100.989418, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (36, N'U1037', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.15031, -100.900536, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (37, N'U1038', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.125786, -100.943705, N'Yes', N'Social Drinker', N'Public', N'Single', N'Independent', 82, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (38, N'U1039', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.738067, -99.139906, N'No', N'Social Drinker', NULL, N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (39, N'U1040', N'Cuernavaca', N'Morelos', N'Mexico', 18.895187, -99.18039, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 18, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (40, N'U1041', N'Cuernavaca', N'Morelos', N'Mexico', 18.935191, -99.23624, N'No', N'Abstemious', N'On Foot', N'Single', N'Independent', 27, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (41, N'U1042', N'Cuernavaca', N'Morelos', N'Mexico', 18.925773, -99.219589, N'No', N'Abstemious', N'Car', N'Single', N'Independent', 69, N'Student', N'High')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (42, N'U1043', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.77103, -99.167082, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (43, N'U1044', N'Cuernavaca', N'Morelos', N'Mexico', 18.95298, -99.260789, N'Yes', N'Social Drinker', N'Car', N'Married', N'Kids', 43, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (44, N'U1045', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.156724, -100.984268, N'No', N'Casual Drinker', N'Car', N'Single', N'Independent', 21, N'Student', N'High')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (45, N'U1046', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.144415, -100.933097, N'No', N'Social Drinker', N'Car', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (46, N'U1047', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.142429, -100.949147, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 20, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (47, N'U1048', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.142208, -101.022785, N'Yes', N'Casual Drinker', N'Public', N'Single', N'Independent', 24, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (48, N'U1049', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.15, -100.983, N'No', N'Casual Drinker', N'Public', N'Single', NULL, 21, N'Student', NULL)
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (49, N'U1050', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.758815, -99.171216, N'No', N'Social Drinker', N'Car', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (50, N'U1051', N'Cuernavaca', N'Morelos', N'Mexico', 18.877719, -99.22299, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 33, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (51, N'U1052', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.138055, -100.936005, N'Yes', N'Social Drinker', N'On Foot', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (52, N'U1053', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.175833, -100.986671, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (53, N'U1054', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.150683, -100.975342, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 20, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (54, N'U1055', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.143289, -100.987683, N'No', N'Abstemious', N'Car', N'Married', N'Dependent', 60, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (55, N'U1056', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.168997, -100.974376, N'No', N'Social Drinker', N'On Foot', N'Single', N'Independent', 82, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (56, N'U1057', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.196624, -100.91217, N'Yes', N'Casual Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (57, N'U1058', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.205802, -100.986081, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 21, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (58, N'U1059', N'Jiutepec', N'Morelos', N'Mexico', 18.988278, -99.097023, N'No', N'Abstemious', N'On Foot', N'Single', N'Independent', 25, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (59, N'U1060', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.715238, -99.158864, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (60, N'U1061', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.140388, -100.937321, N'No', N'Social Drinker', N'Car', N'Single', N'Independent', 22, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (61, N'U1062', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.195826, -101.006317, N'No', N'Casual Drinker', N'Car', N'Single', N'Independent', 27, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (62, N'U1063', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.745096, -99.164357, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 24, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (63, N'U1064', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.139511, -100.957002, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (64, N'U1065', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.733665, -99.105617, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (65, N'U1066', N'Jiutepec', N'Morelos', N'Mexico', 18.890695, -99.157104, N'No', N'Abstemious', N'Public', N'Single', NULL, 26, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (66, N'U1067', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.752269, -99.168605, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 25, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (67, N'U1068', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.752269, -99.168605, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 24, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (68, N'U1069', N'Jiutepec', N'Morelos', N'Mexico', 19.347641, -99.130229, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 29, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (69, N'U1070', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.753237, -99.166868, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (70, N'U1071', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.154339, -100.975342, N'No', N'Abstemious', N'Car', N'Single', N'Independent', 82, N'Student', N'High')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (71, N'U1072', N'Cuernavaca', N'Morelos', N'Mexico', 18.86826, -99.212033, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 28, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (72, N'U1073', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.15, -100.983, N'No', N'Abstemious', N'Car', N'Single', N'Kids', 23, N'Unemployed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (73, N'U1074', N'Cuernavaca', N'Morelos', N'Mexico', 18.917, -99.25, N'Yes', N'Casual Drinker', N'Car', N'Single', N'Kids', 45, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (74, N'U1075', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.167575, -100.960364, N'No', N'Casual Drinker', N'Car', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (75, N'U1076', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.156469, -100.98554, N'No', N'Social Drinker', N'Public', N'Married', N'Kids', 25, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (76, N'U1077', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.156469, -100.98554, N'No', N'Social Drinker', N'Public', N'Married', N'Kids', 25, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (77, N'U1078', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.172109, -100.963199, N'Yes', N'Social Drinker', N'Car', N'Single', N'Independent', 29, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (78, N'U1079', N'Cuernavaca', N'Morelos', N'Mexico', 18.917, -99.25, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 20, NULL, N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (79, N'U1080', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.743793, -99.163397, N'Yes', N'Social Drinker', N'Car', N'Single', N'Independent', 25, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (80, N'U1081', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.207749, -100.942383, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (81, N'U1082', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.753061, -99.166095, N'Yes', N'Abstemious', N'Public', N'Single', NULL, 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (82, N'U1083', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.13392, -101.028373, N'No', N'Abstemious', NULL, NULL, NULL, 31, NULL, NULL)
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (83, N'U1084', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.172524, -101.005758, N'Yes', N'Casual Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (84, N'U1085', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.196787, -100.936335, N'No', N'Abstemious', N'Car', N'Single', N'Independent', 24, N'Student', NULL)
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (85, N'U1086', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.157281, -100.98444, N'No', N'Social Drinker', N'Car', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (86, N'U1087', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.753336, -99.167984, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (87, N'U1088', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.142748, -100.940664, N'No', N'Social Drinker', N'On Foot', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (88, N'U1089', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.162562, -100.99313, N'Yes', N'Casual Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (89, N'U1090', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.158473, -100.984268, N'No', N'Social Drinker', N'Car', N'Single', N'Independent', 24, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (90, N'U1091', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.154677, -100.949013, N'No', N'Casual Drinker', N'Car', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (91, N'U1092', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.125365, -100.947888, N'No', N'Abstemious', N'Public', N'Single', N'Dependent', 22, NULL, N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (92, N'U1093', N'Cuernavaca', N'Morelos', N'Mexico', 18.871654, -99.183251, N'Yes', N'Casual Drinker', N'Car', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (93, N'U1094', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.73944, -99.160548, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (94, N'U1095', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.179865, -101.018547, N'No', N'Abstemious', N'Public', N'Married', N'Independent', 26, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (95, N'U1096', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.1455, -100.939593, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (96, N'U1097', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.145471, -100.939588, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (97, N'U1098', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.182571, -100.963232, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (98, N'U1099', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.184862, -100.970535, N'Yes', N'Social Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'High')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (99, N'U1100', N'Jiutepec', N'Morelos', N'Mexico', 18.879729, -99.067106, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (100, N'U1101', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.150891, -100.974891, N'No', N'Casual Drinker', N'Car', N'Single', N'Independent', 24, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (101, N'U1102', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.137131, -100.941151, N'No', N'Social Drinker', N'On Foot', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (102, N'U1103', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.752265, -99.16859, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (103, N'U1104', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.149005, -100.978153, N'Yes', N'Social Drinker', N'Car', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (104, N'U1105', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.120019, -100.950991, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (105, N'U1106', N'Cuernavaca', N'Morelos', N'Mexico', 18.927072, -99.173584, N'No', N'Casual Drinker', N'Car', N'Single', N'Independent', 82, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (106, N'U1107', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.742409, -99.171889, N'No', N'Abstemious', N'Car', N'Single', N'Independent', 23, NULL, N'High')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (107, N'U1108', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.143524, -100.987562, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 29, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (108, N'U1109', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.303308, -101.05468, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (109, N'U1110', N'Cuernavaca', N'Morelos', N'Mexico', 18.871678, -99.183263, N'No', N'Abstemious', N'Car', N'Single', N'Independent', 19, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (110, N'U1111', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.143078, -100.908523, N'Yes', N'Casual Drinker', N'Car', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (111, N'U1112', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.143078, -100.908523, N'Yes', N'Casual Drinker', N'Car', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (112, N'U1113', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.137343, -100.913935, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (113, N'U1114', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.177726, -101.014094, N'No', N'Abstemious', N'On Foot', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (114, N'U1115', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.138127, -100.920512, N'Yes', N'Social Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (115, N'U1116', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.156469, -100.98554, N'No', N'Social Drinker', N'Public', N'Married', N'Kids', 25, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (116, N'U1117', N'Cuernavaca', N'Morelos', N'Mexico', 18.875641, -99.220737, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 30, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (117, N'U1118', N'Cuernavaca', N'Morelos', N'Mexico', 18.940062, -99.228172, N'Yes', N'Casual Drinker', N'Public', N'Single', N'Independent', 25, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (118, N'U1119', N'Cuernavaca', N'Morelos', N'Mexico', 18.96479, -99.260017, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 20, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (119, N'U1120', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.121857, -100.904279, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 82, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (120, N'U1121', N'Cuernavaca', N'Morelos', N'Mexico', 18.871674, -99.183253, N'No', N'Social Drinker', N'Public', N'Married', N'Independent', 25, N'Employed', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (121, N'U1122', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.169601, -100.991821, NULL, N'Abstemious', NULL, NULL, NULL, 82, NULL, NULL)
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (122, N'U1123', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.753112, -99.168567, N'No', N'Abstemious', NULL, N'Single', N'Independent', 25, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (123, N'U1124', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.137072, -100.918865, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (124, N'U1125', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.19204, -100.956935, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (125, N'U1126', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.15421, -100.942233, N'No', N'Casual Drinker', N'On Foot', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (126, N'U1127', N'Cuernavaca', N'Morelos', N'Mexico', 18.943935, -99.206532, N'No', N'Abstemious', N'Public', N'Single', N'Independent', 20, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (127, N'U1128', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.187236, -100.994213, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 26, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (128, N'U1129', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.728798, -99.134047, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (129, N'U1130', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 23.733, -99.133, NULL, N'Abstemious', NULL, NULL, NULL, 23, NULL, NULL)
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (130, N'U1131', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.138245, -100.910948, N'Yes', N'Social Drinker', N'Car', N'Married', N'Kids', 22, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (131, N'U1132', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.15, -100.983, N'No', N'Casual Drinker', N'Public', N'Single', NULL, 21, N'Student', NULL)
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (132, N'U1133', N'Jiutepec', N'Morelos', N'Mexico', 18.886698, -99.114979, N'No', N'Abstemious', N'Car', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (133, N'U1134', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.149654, -100.99861, N'No', N'Casual Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (134, N'U1135', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.170396, -100.949936, N'No', N'Casual Drinker', N'On Foot', N'Single', N'Kids', 24, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (135, N'U1136', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.149607, -100.997235, N'Yes', N'Social Drinker', N'Car', N'Single', N'Independent', 22, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (136, N'U1137', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.144803, -100.944623, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 23, N'Student', N'Low')
GO
INSERT [dbo].[consumers] ([index], [Consumer_ID], [City], [State], [Country], [Latitude], [Longitude], [Smoker], [Drink_Level], [Transportation_Method], [Marital_Status], [Children], [Age], [Occupation], [Budget]) VALUES (137, N'U1138', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 22.152884, -100.939663, N'No', N'Social Drinker', N'Public', N'Single', N'Independent', 21, N'Student', N'Medium')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (0, N'Consumers', N'Consumer_ID', N'Unique identifier for each consumer')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (1, NULL, N'City', N'City where the consumer lives')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (2, NULL, N'State', N'State where the consumer lives')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (3, NULL, N'Country', N'Country where the consumer lives')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (4, NULL, N'Latitude', N'Latitude where the consumer lives')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (5, NULL, N'Longitude', N'Longitude where the consumer lives')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (6, NULL, N'Smoker', N'Whether the consumer smokes or not')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (7, NULL, N'Drink_Level', N'Whether the consumer is an abstemious, causal, or social drinker')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (8, NULL, N'Transportation_Method', N'Whether the consumer transports on foot, by public transport, or by car')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (9, NULL, N'Marital_Status', N'The consumer''s marital status (single or married)')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (10, NULL, N'Children', N'Whether the consumer has dependent/independent children or kids')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (11, NULL, N'Age', N'The consumer''s age')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (12, NULL, N'Occupation', N'The consumer''s occupation (student, employed, or unemployed)')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (13, NULL, N'Budget', N'The consumer''s budget (low, medium, high)')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (14, N'Consumer_Preferences', N'Preferred_Cuisine', N'Types of food the consumer prefers')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (15, N'Ratings', N'Overall_Rating', N'The overall rating by the consumer for the restaurant (0=Unsatisfactory, 1=Satisfactory, 2=Highly Satisfactory) ')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (16, NULL, N'Food_Rating', N'The food''s rating by the consumer for the restaurant (0=Unsatisfactory, 1=Satisfactory, 2=Highly Satisfactory) ')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (17, NULL, N'Service_Rating', N'The service rating by the consumer for the restaurant (0=Unsatisfactory, 1=Satisfactory, 2=Highly Satisfactory) ')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (18, N'Restaurants', N'Restaurant_ID', N'Unique identifier for each restaurant')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (19, NULL, N'Name', N'The restaurant''s name')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (20, NULL, N'City', N'The restaurant''s city')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (21, NULL, N'State', N'The restaurant''s state')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (22, NULL, N'Country', N'The restaurant''s country')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (23, NULL, N'Zip_Code', N'The restaurat''s zip code')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (24, NULL, N'Latitude', N'The restaurant''s latitude')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (25, NULL, N'Longitude', N'The restaurant''s longitude')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (26, NULL, N'Alcohol_Service', N'Whether the restaurant seves no alcohol, wine & beer, or a full bar')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (27, NULL, N'Smoking_Allowed', N'Whether any smoking is allowed, including in the bar or in smoking sections')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (28, NULL, N'Price', N'The restaurant''s price (low, medium, high)')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (29, NULL, N'Franchise', N'Whether the restaurant is a franchise')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (30, NULL, N'Area', N'Whether the restaurant is in an open or closed area')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (31, NULL, N'Parking', N'Whether the restaurant offers any sort of parking (none, yes, public, valet)')
GO
INSERT [dbo].[data_dictionary] ([index], [Table], [Field], [Description]) VALUES (32, N'Restaurant_Cuisines', N'Cuisine', N'Types of food the restaurant serves')
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (0, N'U1077', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1, N'U1077', 135038, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (2, N'U1077', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (3, N'U1077', 135060, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (4, N'U1068', 135104, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (5, N'U1068', 132740, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (6, N'U1068', 132663, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (7, N'U1068', 132732, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (8, N'U1068', 132630, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (9, N'U1067', 132584, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (10, N'U1067', 132733, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (11, N'U1067', 132732, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (12, N'U1067', 132630, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (13, N'U1067', 135104, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (14, N'U1067', 132560, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (15, N'U1103', 132584, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (16, N'U1103', 132732, 0, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (17, N'U1103', 132630, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (18, N'U1103', 132613, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (19, N'U1103', 132667, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (20, N'U1103', 135104, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (21, N'U1103', 132663, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (22, N'U1103', 132733, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (23, N'U1107', 132660, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (24, N'U1107', 132584, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (25, N'U1107', 132733, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (26, N'U1044', 135088, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (27, N'U1044', 132583, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (28, N'U1070', 132608, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (29, N'U1070', 132609, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (30, N'U1070', 132613, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (31, N'U1031', 132663, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (32, N'U1031', 132665, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (33, N'U1031', 132668, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (34, N'U1082', 132630, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (35, N'U1023', 132715, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (36, N'U1023', 132717, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (37, N'U1082', 132613, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (38, N'U1082', 132594, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (39, N'U1082', 132608, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (40, N'U1082', 132609, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (41, N'U1082', 132663, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (42, N'U1082', 132560, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (43, N'U1060', 132564, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (44, N'U1060', 132717, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (45, N'U1060', 132733, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (46, N'U1060', 132740, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (47, N'U1015', 135071, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (48, N'U1123', 132733, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (49, N'U1123', 132608, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (50, N'U1123', 135104, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (51, N'U1123', 132584, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (52, N'U1123', 132667, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (53, N'U1123', 132740, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (54, N'U1123', 132613, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (55, N'U1123', 132594, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (56, N'U1021', 132740, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (57, N'U1026', 132626, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (58, N'U1021', 132668, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (59, N'U1021', 132715, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (60, N'U1044', 134987, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (61, N'U1083', 135034, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (62, N'U1083', 132723, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (63, N'U1083', 135046, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (64, N'U1108', 135075, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (65, N'U1108', 132572, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (66, N'U1108', 135074, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (67, N'U1108', 135028, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (68, N'U1108', 135085, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (69, N'U1108', 135032, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (70, N'U1108', 135086, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (71, N'U1108', 132723, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (72, N'U1108', 135046, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (73, N'U1108', 135058, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (74, N'U1012', 135001, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (75, N'U1012', 134983, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (76, N'U1012', 134996, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (77, N'U1093', 135019, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (78, N'U1093', 134996, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (79, N'U1093', 135001, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (80, N'U1093', 134976, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (81, N'U1093', 134999, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (82, N'U1030', 135018, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (83, N'U1093', 135013, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (84, N'U1030', 134986, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (85, N'U1012', 134986, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (86, N'U1012', 135018, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (87, N'U1030', 135088, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (88, N'U1093', 132767, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (89, N'U1030', 135016, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (90, N'U1093', 135011, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (91, N'U1030', 132767, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (92, N'U1030', 135019, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (93, N'U1030', 135109, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (94, N'U1030', 134996, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (95, N'U1066', 135011, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (96, N'U1066', 134999, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (97, N'U1127', 134975, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (98, N'U1127', 135021, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (99, N'U1127', 134987, 2, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (100, N'U1127', 134996, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (101, N'U1017', 132768, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (102, N'U1066', 135019, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (103, N'U1017', 134975, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (104, N'U1017', 134983, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (105, N'U1066', 132767, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (106, N'U1100', 135021, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (107, N'U1100', 134996, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (108, N'U1066', 135013, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (109, N'U1100', 135000, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (110, N'U1100', 135001, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (111, N'U1100', 132768, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (112, N'U1100', 134976, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (113, N'U1133', 134983, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (114, N'U1133', 134986, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (115, N'U1133', 132766, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (116, N'U1133', 132767, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (117, N'U1133', 135021, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (118, N'U1133', 135001, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (119, N'U1133', 134975, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (120, N'U1133', 134992, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (121, N'U1133', 135019, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (122, N'U1118', 134987, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (123, N'U1072', 135016, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (124, N'U1072', 132773, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (125, N'U1072', 135088, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (126, N'U1026', 132561, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (127, N'U1026', 132706, 0, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (128, N'U1026', 132654, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (129, N'U1026', 132665, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (130, N'U1023', 132740, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (131, N'U1023', 132733, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (132, N'U1080', 132668, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (133, N'U1080', 132660, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (134, N'U1080', 132733, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (135, N'U1080', 132608, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (136, N'U1063', 132660, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (137, N'U1063', 132584, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (138, N'U1063', 132609, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (139, N'U1063', 135104, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (140, N'U1063', 132667, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (141, N'U1080', 132564, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (142, N'U1080', 132715, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (143, N'U1082', 132732, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (144, N'U1082', 132733, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (145, N'U1074', 135011, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (146, N'U1074', 134987, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (147, N'U1074', 134976, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (148, N'U1117', 135018, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (149, N'U1117', 132766, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (150, N'U1117', 135088, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (151, N'U1117', 135016, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (152, N'U1117', 132773, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (153, N'U1117', 135000, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (154, N'U1118', 132583, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (155, N'U1118', 132768, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (156, N'U1118', 135021, 2, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (157, N'U1118', 134983, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (158, N'U1118', 135001, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (159, N'U1118', 134992, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (160, N'U1020', 135088, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (161, N'U1020', 132768, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (162, N'U1020', 134996, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (163, N'U1020', 135109, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (164, N'U1051', 135088, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (165, N'U1051', 135109, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (166, N'U1051', 132768, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (167, N'U1055', 135051, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (168, N'U1055', 135075, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (169, N'U1055', 132572, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (170, N'U1055', 135028, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (171, N'U1055', 135025, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (172, N'U1083', 132572, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (173, N'U1083', 135049, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (174, N'U1055', 135106, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (175, N'U1083', 135072, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (176, N'U1083', 135074, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (177, N'U1083', 132755, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (178, N'U1083', 135044, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (179, N'U1055', 135048, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (180, N'U1055', 135047, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (181, N'U1055', 132754, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (182, N'U1055', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (183, N'U1053', 135076, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (184, N'U1053', 135032, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (185, N'U1053', 132825, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (186, N'U1053', 135063, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (187, N'U1035', 135018, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (188, N'U1035', 132773, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (189, N'U1053', 135042, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (190, N'U1053', 135053, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (191, N'U1053', 132754, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (192, N'U1035', 132583, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (193, N'U1053', 135081, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (194, N'U1053', 135025, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (195, N'U1053', 135038, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (196, N'U1053', 135060, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (197, N'U1053', 135062, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (198, N'U1053', 135047, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (199, N'U1064', 135042, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (200, N'U1081', 135069, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (201, N'U1064', 135057, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (202, N'U1081', 135076, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (203, N'U1081', 135043, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (204, N'U1064', 135069, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (205, N'U1081', 135039, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (206, N'U1064', 135060, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (207, N'U1064', 135052, 2, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (208, N'U1081', 132825, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (209, N'U1081', 135032, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (210, N'U1081', 135028, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (211, N'U1081', 135085, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (212, N'U1081', 135052, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (213, N'U1081', 135030, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (214, N'U1081', 135027, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (215, N'U1001', 132830, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (216, N'U1001', 132825, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (217, N'U1014', 135076, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (218, N'U1088', 132830, 0, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (219, N'U1088', 135108, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (220, N'U1014', 135069, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (221, N'U1014', 135050, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (222, N'U1088', 135057, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (223, N'U1014', 135081, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (224, N'U1014', 135057, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (225, N'U1014', 135070, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (226, N'U1088', 135041, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (227, N'U1088', 135069, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (228, N'U1088', 135082, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (229, N'U1014', 135043, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (230, N'U1014', 135042, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (231, N'U1088', 135071, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (232, N'U1088', 135054, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (233, N'U1088', 135070, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (234, N'U1014', 135066, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (235, N'U1088', 135032, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (236, N'U1088', 135081, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (237, N'U1088', 135051, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (238, N'U1014', 132830, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (239, N'U1014', 135082, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (240, N'U1056', 135066, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (241, N'U1056', 135050, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (242, N'U1056', 135076, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (243, N'U1056', 135081, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (244, N'U1056', 135062, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (245, N'U1056', 135027, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (246, N'U1056', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (247, N'U1056', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (248, N'U1056', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (249, N'U1056', 135051, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (250, N'U1134', 135047, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (251, N'U1134', 135026, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (252, N'U1134', 135044, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (253, N'U1134', 132825, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (254, N'U1134', 135059, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (255, N'U1134', 135065, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (256, N'U1134', 135046, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (257, N'U1134', 135085, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (258, N'U1134', 135079, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (259, N'U1134', 135055, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (260, N'U1134', 132754, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (261, N'U1134', 132572, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (262, N'U1134', 135075, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (263, N'U1134', 135080, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (264, N'U1134', 135064, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (265, N'U1134', 135074, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (266, N'U1106', 135041, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (267, N'U1126', 135069, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (268, N'U1106', 135032, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (269, N'U1126', 135057, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (270, N'U1126', 132830, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (271, N'U1106', 135028, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (272, N'U1126', 135040, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (273, N'U1126', 135106, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (274, N'U1126', 135052, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (275, N'U1126', 135041, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (276, N'U1126', 135038, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (277, N'U1126', 135054, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (278, N'U1126', 135108, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (279, N'U1044', 134986, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (280, N'U1124', 135054, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (281, N'U1044', 132768, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (282, N'U1124', 135108, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (283, N'U1124', 135032, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (284, N'U1124', 135071, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (285, N'U1124', 135070, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (286, N'U1124', 135069, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (287, N'U1124', 135081, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (288, N'U1124', 135057, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (289, N'U1124', 135039, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (290, N'U1124', 135050, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (291, N'U1018', 135043, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (292, N'U1125', 135043, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (293, N'U1125', 135081, 0, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (294, N'U1125', 135076, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (295, N'U1018', 135082, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (296, N'U1125', 135050, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (297, N'U1125', 135066, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (298, N'U1125', 135032, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (299, N'U1119', 134986, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (300, N'U1119', 135021, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (301, N'U1119', 135001, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (302, N'U1125', 135042, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (303, N'U1119', 132583, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (304, N'U1125', 135063, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (305, N'U1119', 132768, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (306, N'U1125', 135060, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (307, N'U1125', 135038, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (308, N'U1125', 135062, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (309, N'U1018', 135081, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (310, N'U1018', 135057, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (311, N'U1018', 135066, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (312, N'U1018', 135032, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (313, N'U1018', 135062, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (314, N'U1018', 135025, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (315, N'U1018', 135069, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (316, N'U1018', 135108, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (317, N'U1076', 135039, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (318, N'U1076', 135038, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (319, N'U1076', 135027, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (320, N'U1076', 135042, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (321, N'U1022', 135040, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (322, N'U1076', 135073, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (323, N'U1022', 135033, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (324, N'U1022', 135025, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (325, N'U1022', 135032, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (326, N'U1022', 135057, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (327, N'U1022', 135060, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (328, N'U1022', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (329, N'U1022', 135038, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (330, N'U1022', 135081, 0, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (331, N'U1022', 135045, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (332, N'U1022', 135051, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (333, N'U1022', 135073, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (334, N'U1022', 135062, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (335, N'U1022', 135063, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (336, N'U1094', 135054, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (337, N'U1094', 135082, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (338, N'U1094', 135057, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (339, N'U1094', 135071, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (340, N'U1094', 132830, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (341, N'U1094', 135070, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (342, N'U1094', 135108, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (343, N'U1094', 135069, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (344, N'U1116', 135047, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (345, N'U1116', 135060, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (346, N'U1116', 135038, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (347, N'U1116', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (348, N'U1116', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (349, N'U1116', 135025, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (350, N'U1116', 135059, 0, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (351, N'U1116', 135027, 0, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (352, N'U1116', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (353, N'U1116', 135030, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (354, N'U1116', 132834, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (355, N'U1105', 135057, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (356, N'U1105', 135069, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (357, N'U1105', 132830, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (358, N'U1105', 135040, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (359, N'U1105', 135033, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (360, N'U1105', 135054, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (361, N'U1105', 135039, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (362, N'U1105', 135052, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (363, N'U1075', 135081, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (364, N'U1075', 135066, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (365, N'U1075', 135050, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (366, N'U1007', 135108, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (367, N'U1075', 135076, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (368, N'U1007', 135057, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (369, N'U1075', 135032, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (370, N'U1075', 132834, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (371, N'U1075', 135057, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (372, N'U1075', 132830, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (373, N'U1075', 135062, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (374, N'U1075', 135039, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (375, N'U1075', 135051, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (376, N'U1075', 135041, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (377, N'U1115', 135057, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (378, N'U1115', 135082, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (379, N'U1115', 135054, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (380, N'U1115', 135108, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (381, N'U1115', 135069, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (382, N'U1115', 132830, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (383, N'U1115', 135070, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (384, N'U1115', 135071, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (385, N'U1072', 135000, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (386, N'U1024', 132834, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (387, N'U1024', 135106, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (388, N'U1024', 135042, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (389, N'U1024', 132825, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (390, N'U1024', 135060, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (391, N'U1024', 135032, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (392, N'U1024', 135039, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (393, N'U1024', 135045, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (394, N'U1024', 135027, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (395, N'U1024', 135073, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (396, N'U1024', 135051, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (397, N'U1024', 135041, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (398, N'U1024', 135038, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (399, N'U1024', 135028, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (400, N'U1024', 135030, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (401, N'U1132', 135038, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (402, N'U1132', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (403, N'U1132', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (404, N'U1132', 135062, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (405, N'U1132', 135025, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (406, N'U1132', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (407, N'U1132', 135028, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (408, N'U1132', 135032, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (409, N'U1132', 135051, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (410, N'U1132', 135027, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (411, N'U1005', 135050, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (412, N'U1005', 135076, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (413, N'U1005', 132830, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (414, N'U1005', 135066, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (415, N'U1005', 135041, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (416, N'U1005', 135057, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (417, N'U1005', 135043, 0, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (418, N'U1005', 135042, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (419, N'U1005', 135032, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (420, N'U1120', 135085, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (421, N'U1120', 132845, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (422, N'U1120', 135032, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (423, N'U1120', 135045, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (424, N'U1120', 135038, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (425, N'U1004', 135060, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (426, N'U1004', 135028, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (427, N'U1004', 135106, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (428, N'U1120', 135057, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (429, N'U1004', 135062, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (430, N'U1120', 135026, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (431, N'U1004', 135032, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (432, N'U1120', 132846, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (433, N'U1077', 135027, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (434, N'U1120', 132847, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (435, N'U1037', 135054, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (436, N'U1037', 135082, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (437, N'U1037', 135070, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (438, N'U1037', 132845, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (439, N'U1037', 135108, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (440, N'U1037', 132847, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (441, N'U1037', 132830, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (442, N'U1035', 135000, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (443, N'U1035', 134996, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (444, N'U1035', 134986, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (445, N'U1052', 132851, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (446, N'U1036', 132834, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (447, N'U1036', 135064, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (448, N'U1036', 135079, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (449, N'U1036', 135042, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (450, N'U1036', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (451, N'U1036', 135025, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (452, N'U1036', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (453, N'U1036', 135059, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (454, N'U1036', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (455, N'U1036', 132754, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (456, N'U1036', 135065, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (457, N'U1036', 135045, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (458, N'U1038', 132854, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (459, N'U1038', 132856, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (460, N'U1038', 132858, 0, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (461, N'U1038', 132861, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (462, N'U1038', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (463, N'U1071', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (464, N'U1071', 135063, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (465, N'U1071', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (466, N'U1071', 135060, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (467, N'U1071', 135042, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (468, N'U1071', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (469, N'U1071', 132856, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (470, N'U1071', 135032, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (471, N'U1071', 132834, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (472, N'U1071', 135039, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (473, N'U1071', 135028, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (474, N'U1071', 135025, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (475, N'U1071', 135030, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (476, N'U1114', 135053, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (477, N'U1084', 135058, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (478, N'U1084', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (479, N'U1084', 135072, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (480, N'U1084', 135030, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (481, N'U1084', 135026, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (482, N'U1084', 135035, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (483, N'U1084', 135045, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (484, N'U1084', 132861, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (485, N'U1084', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (486, N'U1084', 132723, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (487, N'U1049', 132825, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (488, N'U1049', 135041, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (489, N'U1019', 132830, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (490, N'U1019', 135076, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (491, N'U1019', 135038, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (492, N'U1019', 132856, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (493, N'U1069', 135070, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (494, N'U1069', 135082, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (495, N'U1069', 135108, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (496, N'U1069', 132858, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (497, N'U1069', 135069, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (498, N'U1069', 132846, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (499, N'U1069', 132845, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (500, N'U1069', 132851, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (501, N'U1069', 132847, 0, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (502, N'U1113', 135038, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (503, N'U1113', 135057, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (504, N'U1113', 135085, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (505, N'U1113', 135032, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (506, N'U1113', 135079, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (507, N'U1113', 135046, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (508, N'U1113', 132856, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (509, N'U1113', 132854, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (510, N'U1104', 135039, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (511, N'U1104', 132825, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (512, N'U1104', 135085, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (513, N'U1104', 135030, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (514, N'U1104', 135062, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (515, N'U1106', 135047, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (516, N'U1106', 135052, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (517, N'U1104', 132834, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (518, N'U1106', 135106, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (519, N'U1106', 132754, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (520, N'U1104', 135052, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (521, N'U1106', 132856, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (522, N'U1104', 135032, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (523, N'U1104', 135025, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (524, N'U1106', 132834, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (525, N'U1104', 135047, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (526, N'U1106', 135042, 2, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (527, N'U1106', 135039, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (528, N'U1052', 132866, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (529, N'U1106', 135066, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (530, N'U1106', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (531, N'U1104', 135033, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (532, N'U1106', 135062, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (533, N'U1106', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (534, N'U1106', 135030, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (535, N'U1106', 135079, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (536, N'U1106', 135064, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (537, N'U1052', 132869, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (538, N'U1052', 132870, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (539, N'U1104', 135041, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (540, N'U1079', 134986, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (541, N'U1079', 134976, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (542, N'U1079', 132768, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (543, N'U1079', 132766, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (544, N'U1045', 132825, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (545, N'U1045', 135064, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (546, N'U1045', 132856, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (547, N'U1045', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (548, N'U1045', 135032, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (549, N'U1045', 132834, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (550, N'U1045', 135052, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (551, N'U1045', 135060, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (552, N'U1045', 135051, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (553, N'U1045', 135041, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (554, N'U1009', 132754, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (555, N'U1009', 132862, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (556, N'U1009', 135060, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (557, N'U1009', 135059, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (558, N'U1009', 132834, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (559, N'U1009', 135058, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (560, N'U1009', 135038, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (561, N'U1009', 132825, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (562, N'U1009', 135052, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (563, N'U1009', 135063, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (564, N'U1009', 135079, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (565, N'U1016', 132834, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (566, N'U1016', 135042, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (567, N'U1016', 135032, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (568, N'U1016', 135106, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (569, N'U1016', 132856, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (570, N'U1016', 135045, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (571, N'U1016', 135060, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (572, N'U1016', 135066, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (573, N'U1016', 135085, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (574, N'U1016', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (575, N'U1016', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (576, N'U1016', 135051, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (577, N'U1016', 135062, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (578, N'U1047', 132875, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (579, N'U1047', 132877, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (580, N'U1047', 132884, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (581, N'U1095', 132872, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (582, N'U1095', 135034, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (583, N'U1095', 135058, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (584, N'U1034', 135086, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (585, N'U1095', 132861, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (586, N'U1034', 135049, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (587, N'U1034', 132723, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (588, N'U1095', 132723, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (589, N'U1095', 135086, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (590, N'U1095', 135055, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (591, N'U1007', 135058, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (592, N'U1007', 135085, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (593, N'U1095', 135064, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (594, N'U1095', 135035, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (595, N'U1095', 135072, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (596, N'U1007', 135025, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (597, N'U1007', 135032, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (598, N'U1007', 135086, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (599, N'U1007', 132572, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (600, N'U1007', 135038, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (601, N'U1078', 132885, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (602, N'U1099', 135076, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (603, N'U1099', 132834, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (604, N'U1008', 132866, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (605, N'U1008', 132858, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (606, N'U1099', 135043, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (607, N'U1099', 132885, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (608, N'U1008', 132854, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (609, N'U1099', 132872, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (610, N'U1008', 135108, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (611, N'U1008', 132851, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (612, N'U1099', 132856, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (613, N'U1008', 132869, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (614, N'U1099', 135066, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (615, N'U1008', 135069, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (616, N'U1099', 135038, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (617, N'U1099', 135060, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (618, N'U1099', 135045, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (619, N'U1008', 132846, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (620, N'U1008', 135054, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (621, N'U1099', 135042, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (622, N'U1040', 132773, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (623, N'U1040', 134999, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (624, N'U1040', 135013, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (625, N'U1040', 135019, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (626, N'U1121', 135021, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (627, N'U1110', 135021, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (628, N'U1110', 132767, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (629, N'U1110', 135013, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (630, N'U1110', 134999, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (631, N'U1121', 135019, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (632, N'U1121', 132767, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (633, N'U1121', 134999, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (634, N'U1042', 132768, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (635, N'U1042', 135021, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (636, N'U1042', 134996, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (637, N'U1013', 135079, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (638, N'U1013', 135072, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (639, N'U1013', 135085, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (640, N'U1013', 135076, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (641, N'U1054', 135062, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (642, N'U1054', 135060, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (643, N'U1054', 135039, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (644, N'U1054', 135052, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (645, N'U1054', 132856, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (646, N'U1054', 135051, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (647, N'U1054', 135025, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (648, N'U1054', 135041, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (649, N'U1054', 135038, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (650, N'U1054', 135032, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (651, N'U1054', 135045, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (652, N'U1042', 134986, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (653, N'U1042', 134992, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (654, N'U1111', 132845, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (655, N'U1111', 135071, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (656, N'U1111', 132858, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (657, N'U1111', 132854, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (658, N'U1111', 132877, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (659, N'U1037', 135071, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (660, N'U1111', 132851, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (661, N'U1111', 135108, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (662, N'U1111', 132869, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (663, N'U1037', 132869, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (664, N'U1111', 132870, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (665, N'U1037', 132851, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (666, N'U1111', 132847, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (667, N'U1111', 135082, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (668, N'U1037', 132854, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (669, N'U1015', 132845, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (670, N'U1015', 132866, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (671, N'U1015', 132870, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (672, N'U1015', 135054, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (673, N'U1015', 132869, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (674, N'U1015', 132851, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (675, N'U1015', 132877, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (676, N'U1128', 132872, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (677, N'U1062', 132872, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (678, N'U1101', 135039, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (679, N'U1101', 135027, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (680, N'U1101', 135073, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (681, N'U1101', 135106, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (682, N'U1101', 132856, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (683, N'U1101', 135032, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (684, N'U1101', 135038, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (685, N'U1101', 135051, 2, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (686, N'U1101', 135052, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (687, N'U1101', 135041, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (688, N'U1001', 135085, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (689, N'U1001', 135040, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (690, N'U1001', 135039, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (691, N'U1001', 135045, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (692, N'U1001', 135033, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (693, N'U1001', 135025, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (694, N'U1001', 135051, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (695, N'U1135', 135085, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (696, N'U1135', 135106, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (697, N'U1135', 135052, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (698, N'U1135', 135041, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (699, N'U1032', 132872, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (700, N'U1032', 135058, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (701, N'U1032', 135079, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (702, N'U1032', 135085, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (703, N'U1032', 135042, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (704, N'U1032', 132856, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (705, N'U1135', 132825, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (706, N'U1135', 132834, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (707, N'U1032', 135038, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (708, N'U1032', 132834, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (709, N'U1032', 135060, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (710, N'U1135', 135058, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (711, N'U1032', 135032, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (712, N'U1135', 135063, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (713, N'U1135', 132856, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (714, N'U1135', 135045, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (715, N'U1135', 135028, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (716, N'U1135', 135032, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (717, N'U1135', 135042, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (718, N'U1135', 135060, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (719, N'U1048', 135049, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (720, N'U1048', 135026, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (721, N'U1048', 135034, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (722, N'U1048', 135048, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (723, N'U1048', 135065, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (724, N'U1048', 132755, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (725, N'U1048', 132723, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (726, N'U1062', 135085, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (727, N'U1062', 135053, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (728, N'U1092', 135071, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (729, N'U1062', 132825, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (730, N'U1092', 135085, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (731, N'U1062', 135052, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (732, N'U1092', 135046, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (733, N'U1062', 135062, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (734, N'U1092', 132572, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (735, N'U1062', 135038, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (736, N'U1062', 135045, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (737, N'U1092', 135025, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (738, N'U1062', 132834, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (739, N'U1092', 132723, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (740, N'U1051', 134996, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (741, N'U1013', 132875, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (742, N'U1085', 135043, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (743, N'U1085', 132885, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (744, N'U1085', 135050, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (745, N'U1085', 135076, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (746, N'U1085', 135081, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (747, N'U1109', 135028, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (748, N'U1109', 132856, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (749, N'U1085', 135042, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (750, N'U1085', 135059, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (751, N'U1109', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (752, N'U1085', 132872, 0, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (753, N'U1085', 135055, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (754, N'U1109', 135032, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (755, N'U1085', 132825, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (756, N'U1109', 135063, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (757, N'U1109', 135042, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (758, N'U1109', 135058, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (759, N'U1109', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (760, N'U1109', 135038, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (761, N'U1109', 132872, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (762, N'U1078', 135081, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (763, N'U1078', 135060, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (764, N'U1078', 135106, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (765, N'U1078', 135041, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (766, N'U1078', 132834, 0, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (767, N'U1078', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (768, N'U1019', 135079, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (769, N'U1102', 132846, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (770, N'U1098', 132885, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (771, N'U1098', 135060, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (772, N'U1098', 132856, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (773, N'U1046', 135026, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (774, N'U1122', 135066, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (775, N'U1122', 135065, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (776, N'U1122', 132872, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (777, N'U1122', 135058, 2, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (778, N'U1122', 132834, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (779, N'U1122', 132754, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (780, N'U1122', 135079, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (781, N'U1122', 135038, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (782, N'U1122', 135085, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (783, N'U1122', 135030, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (784, N'U1122', 135064, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (785, N'U1122', 135053, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (786, N'U1138', 132921, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (787, N'U1138', 132922, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (788, N'U1138', 132925, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (789, N'U1013', 132921, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (790, N'U1098', 135085, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (791, N'U1098', 132825, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (792, N'U1098', 135079, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (793, N'U1098', 135032, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (794, N'U1098', 135038, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (795, N'U1098', 132861, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (796, N'U1098', 135046, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (797, N'U1098', 132862, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (798, N'U1098', 132921, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (799, N'U1034', 132884, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (800, N'U1034', 135055, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (801, N'U1034', 135035, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (802, N'U1033', 135065, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (803, N'U1033', 135028, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (804, N'U1033', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (805, N'U1033', 135046, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (806, N'U1033', 135045, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (807, N'U1033', 132951, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (808, N'U1033', 132572, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (809, N'U1033', 132921, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (810, N'U1033', 135075, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (811, N'U1033', 135038, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (812, N'U1033', 135030, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (813, N'U1089', 135058, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (814, N'U1089', 135064, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (815, N'U1089', 135028, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (816, N'U1089', 132951, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (817, N'U1003', 135064, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (818, N'U1089', 132921, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (819, N'U1003', 132825, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (820, N'U1089', 132754, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (821, N'U1003', 135075, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (822, N'U1089', 135026, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (823, N'U1003', 132862, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (824, N'U1089', 132872, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (825, N'U1089', 135085, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (826, N'U1003', 135041, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (827, N'U1089', 135072, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (828, N'U1089', 132834, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (829, N'U1003', 132937, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (830, N'U1089', 132875, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (831, N'U1089', 135038, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (832, N'U1003', 132922, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (833, N'U1091', 132825, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (834, N'U1091', 135075, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (835, N'U1089', 135079, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (836, N'U1003', 132723, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (837, N'U1091', 132861, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (838, N'U1003', 132755, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (839, N'U1091', 132875, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (840, N'U1003', 135080, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (841, N'U1091', 135086, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (842, N'U1003', 135079, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (843, N'U1027', 135066, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (844, N'U1091', 135080, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (845, N'U1027', 132921, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (846, N'U1091', 132572, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (847, N'U1027', 135052, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (848, N'U1091', 132884, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (849, N'U1091', 135035, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (850, N'U1027', 132937, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (851, N'U1027', 132951, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (852, N'U1027', 132925, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (853, N'U1027', 132872, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (854, N'U1027', 132875, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (855, N'U1027', 135085, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (856, N'U1027', 135042, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (857, N'U1027', 135062, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (858, N'U1029', 135047, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (859, N'U1029', 135059, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (860, N'U1029', 132937, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (861, N'U1029', 135085, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (862, N'U1029', 132834, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (863, N'U1029', 132754, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (864, N'U1029', 132825, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (865, N'U1029', 132921, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (866, N'U1029', 132862, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (867, N'U1029', 132922, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (868, N'U1086', 135063, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (869, N'U1086', 132921, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (870, N'U1086', 135085, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (871, N'U1086', 132922, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (872, N'U1086', 132937, 2, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (873, N'U1086', 135045, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (874, N'U1086', 135041, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (875, N'U1086', 135060, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (876, N'U1086', 132951, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (877, N'U1019', 132921, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (878, N'U1019', 132834, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (879, N'U1137', 132951, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (880, N'U1019', 135062, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (881, N'U1019', 135086, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (882, N'U1137', 135085, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (883, N'U1137', 132834, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (884, N'U1090', 132572, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (885, N'U1137', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (886, N'U1137', 135058, 0, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (887, N'U1137', 135059, 2, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (888, N'U1137', 135062, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (889, N'U1137', 132825, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (890, N'U1137', 132723, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (891, N'U1137', 132755, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (892, N'U1137', 135042, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (893, N'U1137', 132884, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (894, N'U1137', 135049, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (895, N'U1137', 135075, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (896, N'U1114', 132825, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (897, N'U1114', 135065, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (898, N'U1114', 135058, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (899, N'U1114', 132723, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (900, N'U1114', 132951, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (901, N'U1114', 132872, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (902, N'U1114', 132834, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (903, N'U1114', 135072, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (904, N'U1114', 132754, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (905, N'U1114', 132755, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (906, N'U1061', 132825, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (907, N'U1061', 135048, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (908, N'U1061', 132921, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (909, N'U1061', 135026, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (910, N'U1061', 132723, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (911, N'U1061', 135075, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (912, N'U1061', 135034, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (913, N'U1061', 135041, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (914, N'U1013', 132572, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (915, N'U1013', 135075, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (916, N'U1061', 135046, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (917, N'U1061', 132572, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (918, N'U1061', 135058, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (919, N'U1046', 135044, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (920, N'U1046', 135065, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (921, N'U1046', 132921, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (922, N'U1046', 135085, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (923, N'U1046', 132572, 1, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (924, N'U1046', 135058, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (925, N'U1046', 132951, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (926, N'U1046', 132861, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (927, N'U1041', 135001, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (928, N'U1041', 134983, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (929, N'U1041', 135021, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (930, N'U1041', 134992, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (931, N'U1041', 132768, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (932, N'U1041', 135109, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (933, N'U1004', 132954, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (934, N'U1004', 132955, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (935, N'U1004', 132958, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (936, N'U1003', 132754, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (937, N'U1059', 135064, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (938, N'U1059', 135075, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (939, N'U1059', 135028, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (940, N'U1061', 132834, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (941, N'U1061', 135086, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (942, N'U1061', 132754, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (943, N'U1061', 135080, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (944, N'U1090', 135062, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (945, N'U1090', 135052, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (946, N'U1112', 135047, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (947, N'U1112', 135026, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (948, N'U1112', 135064, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (949, N'U1090', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (950, N'U1057', 135070, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (951, N'U1112', 132954, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (952, N'U1057', 135043, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (953, N'U1112', 135079, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (954, N'U1112', 135062, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (955, N'U1090', 135051, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (956, N'U1090', 132954, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (957, N'U1112', 135048, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (958, N'U1057', 132954, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (959, N'U1112', 135086, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (960, N'U1061', 132955, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (961, N'U1112', 132921, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (962, N'U1061', 132958, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (963, N'U1112', 135046, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (964, N'U1090', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (965, N'U1112', 132572, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (966, N'U1090', 132922, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (967, N'U1025', 132866, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (968, N'U1057', 135080, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (969, N'U1112', 132834, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (970, N'U1057', 132825, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (971, N'U1112', 132862, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (972, N'U1061', 132954, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (973, N'U1025', 132877, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (974, N'U1057', 135064, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (975, N'U1057', 135046, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (976, N'U1090', 135025, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (977, N'U1090', 132925, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (978, N'U1057', 132862, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (979, N'U1057', 135075, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (980, N'U1025', 132847, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (981, N'U1057', 135030, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (982, N'U1025', 135071, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (983, N'U1057', 132834, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (984, N'U1025', 132958, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (985, N'U1025', 132825, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (986, N'U1025', 135028, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (987, N'U1025', 135047, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [F
ood_Rating], [Service_Rating]) VALUES (988, N'U1025', 132846, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (989, N'U1025', 135064, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (990, N'U1025', 132830, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (991, N'U1097', 135079, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (992, N'U1097', 135058, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (993, N'U1097', 132954, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (994, N'U1097', 132958, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (995, N'U1097', 135026, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (996, N'U1059', 132955, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (997, N'U1059', 135044, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (998, N'U1059', 132862, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (999, N'U1059', 135085, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1000, N'U1059', 135030, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1001, N'U1128', 135053, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1002, N'U1059', 132825, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1003, N'U1059', 132754, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1004, N'U1128', 135058, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1005, N'U1128', 132875, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1006, N'U1128', 135079, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1007, N'U1128', 132925, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1008, N'U1128', 135064, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1009, N'U1128', 132921, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1010, N'U1128', 135060, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1011, N'U1128', 132954, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1012, N'U1128', 132951, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1013, N'U1097', 132921, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1014, N'U1097', 132955, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1015, N'U1097', 132884, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1016, N'U1097', 135049, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1017, N'U1097', 135034, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1018, N'U1006', 132954, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1019, N'U1006', 135079, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1020, N'U1006', 132875, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1021, N'U1006', 135026, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1022, N'U1006', 132922, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1023, N'U1006', 132572, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1024, N'U1006', 135075, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1025, N'U1006', 132825, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1026, N'U1006', 135048, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1027, N'U1006', 135030, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1028, N'U1006', 132884, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1029, N'U1131', 135054, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1030, N'U1131', 132869, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1031, N'U1131', 132866, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1032, N'U1131', 135082, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1033, N'U1131', 132851, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1034, N'U1131', 132870, 0, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1035, N'U1073', 135062, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1036, N'U1073', 132572, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1037, N'U1073', 135064, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1038, N'U1073', 135080, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1039, N'U1073', 132951, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1040, N'U1073', 132954, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1041, N'U1073', 135052, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1042, N'U1073', 132834, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1043, N'U1073', 135060, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1044, N'U1073', 135065, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1045, N'U1073', 132862, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1046, N'U1049', 132921, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1047, N'U1049', 135042, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1048, N'U1049', 135032, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1049, N'U1049', 135051, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1050, N'U1049', 135085, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1051, N'U1049', 132862, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1052, N'U1049', 135052, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1053, N'U1058', 135076, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1054, N'U1058', 135043, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1055, N'U1058', 135058, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1056, N'U1058', 135053, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1057, N'U1058', 132885, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1058, N'U1058', 135050, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1059, N'U1058', 132872, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1060, N'U1058', 135066, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1061, N'U1002', 132921, 2, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1062, N'U1002', 135062, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1063, N'U1002', 135106, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1064, N'U1002', 132825, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1065, N'U1002', 135052, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1066, N'U1002', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1067, N'U1096', 132875, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1068, N'U1002', 135059, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1069, N'U1002', 135041, 2, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1070, N'U1002', 132925, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1071, N'U1002', 135085, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1072, N'U1096', 135025, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1073, N'U1096', 135072, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1074, N'U1096', 135064, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1075, N'U1096', 135086, 1, 0, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1076, N'U1096', 135055, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1077, N'U1136', 135074, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1078, N'U1096', 135026, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1079, N'U1136', 132862, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1080, N'U1096', 132955, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1081, N'U1136', 132921, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1082, N'U1136', 135072, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1083, N'U1096', 132723, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1084, N'U1136', 135055, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1085, N'U1136', 135064, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1086, N'U1096', 132958, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1087, N'U1096', 135075, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1088, N'U1136', 132958, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1089, N'U1136', 135048, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1090, N'U1136', 135046, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1091, N'U1136', 135028, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1092, N'U1097', 135086, 2, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1093, N'U1097', 135053, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1094, N'U1097', 132861, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1095, N'U1058', 135062, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1096, N'U1058', 135055, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1097, N'U1010', 135053, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1098, N'U1010', 135058, 1, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1099, N'U1010', 135079, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1100, N'U1003', 135059, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1101, N'U1010', 135064, 0, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1102, N'U1010', 135047, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1103, N'U1010', 135065, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1104, N'U1102', 132854, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1105, N'U1102', 132858, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1106, N'U1010', 135042, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1107, N'U1102', 132870, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1108, N'U1010', 135076, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1109, N'U1102', 132847, 2, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1110, N'U1013', 132951, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1111, N'U1013', 135060, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1112, N'U1028', 132732, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1113, N'U1028', 132733, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1114, N'U1028', 135104, 0, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1115, N'U1050', 132732, 0, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1116, N'U1050', 132609, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1117, N'U1050', 132608, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1118, N'U1050', 132560, 0, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1119, N'U1050', 132740, 0, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1120, N'U1050', 132594, 0, 2, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1121, N'U1050', 132584, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1122, N'U1028', 132740, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1123, N'U1129', 132706, 0, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1124, N'U1129', 132654, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1125, N'U1028', 132630, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1126, N'U1028', 132663, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1127, N'U1028', 132613, 2, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1128, N'U1087', 132667, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1129, N'U1087', 135104, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1130, N'U1087', 132660, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1131, N'U1087', 132732, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1132, N'U1087', 132740, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1133, N'U1087', 132560, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1134, N'U1087', 132594, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1135, N'U1087', 132663, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1136, N'U1065', 132626, 1, 0, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1137, N'U1065', 132706, 2, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1138, N'U1129', 132561, 1, 2, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1139, N'U1065', 132665, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1140, N'U1129', 132665, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1141, N'U1065', 132561, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1142, N'U1039', 132626, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1143, N'U1039', 132564, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1144, N'U1065', 132654, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1145, N'U1039', 132665, 1, 1, 2)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1146, N'U1130', 132654, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1147, N'U1130', 132561, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1148, N'U1130', 132626, 0, 0, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1149, N'U1130', 132706, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1150, N'U1043', 132608, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1151, N'U1043', 132609, 1, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1152, N'U1011', 132717, 2, 2, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1153, N'U1043', 132613, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1154, N'U1011', 132564, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1155, N'U1043', 132732, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1156, N'U1043', 132630, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1157, N'U1011', 132715, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1158, N'U1068', 132733, 1, 1, 0)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1159, N'U1068', 132594, 1, 1, 1)
GO
INSERT [dbo].[ratings] ([index], [Consumer_ID], [Restaurant_ID], [Overall_Rating], [Food_Rating], [Service_Rating]) VALUES (1160, N'U1068', 132660, 0, 0, 0)
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (0, 132560, N'Regional')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (1, 132572, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (2, 132583, N'American')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (3, 132584, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (4, 132594, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (5, 132608, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (6, 132609, N'Fast Food')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (7, 132613, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (8, 132626, N'Italian')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (9, 132630, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (10, 132663, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (11, 132665, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (12, 132667, N'Armenian')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (13, 132668, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (14, 132706, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (15, 132715, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (16, 132717, N'Fast Food')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (17, 132723, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (18, 132732, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (19, 132733, N'Pizzeria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (20, 132740, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (21, 132754, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (22, 132755, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (23, 132766, N'Japanese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (24, 132767, N'Vietnamese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (25, 132768, N'Family')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (26, 132773, N'Family')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (27, 132773, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (28, 132825, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (29, 132834, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (30, 132845, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (31, 132846, N'International')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (32, 132851, N'American')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (33, 132851, N'Game')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (34, 132854, N'International')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (35, 132856, N'Italian')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (36, 132858, N'Burgers')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (37, 132861, N'Burgers')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (38, 132862, N'International')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (39, 132866, N'Bakery')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (40, 132866, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (41, 132869, N'Pizzeria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (42, 132870, N'Burgers')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (43, 132872, N'American')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (44, 132875, N'Japanese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (45, 132885, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (46, 132921, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (47, 132922, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (48, 132925, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (49, 132937, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (50, 132951, N'American')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (51, 132954, N'Breakfast')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (52, 132955, N'Brewery')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (53, 132958, N'American')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (54, 134976, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (55, 134976, N'Mediterranean')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (56, 134976, N'Burgers')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (57, 134983, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (58, 134983, N'Brewery')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (59, 134986, N'International')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (60, 134999, N'Japanese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (61, 135018, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (62, 135019, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (63, 135021, N'Fast Food')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (64, 135025, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (65, 135026, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (66, 135026, N'Brewery')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (67, 135027, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (68, 135028, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (69, 135030, N'Coffee Shop')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (70, 135030, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (71, 135032, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (72, 135032, N'Contemporary')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (73, 135034, N'Japanese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (74, 135035, N'Italian')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (75, 135039, N'Seafood')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (76, 135041, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (77, 135041, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (78, 135042, N'Chinese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (79, 135043, N'Fast Food')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (80, 135043, N'Pizzeria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (81, 135044, N'Chinese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (82, 135046, N'Fast Food')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (83, 135048, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (84, 135049, N'Seafood')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (85, 135052, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (86, 135052, N'Brewery')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (87, 135053, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (88, 135053, N'Fast Food')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (89, 135053, N'Pizzeria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (90, 135054, N'Seafood')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (91, 135055, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (92, 135057, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (93, 135058, N'Pizzeria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (94, 135059, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (95, 135060, N'Seafood')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (96, 135069, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (97, 135071, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (98, 135071, N'Brewery')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (99, 135072, N'Japanese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (100, 135073, N'Bar')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (101, 135073, N'Brewery')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (102, 135074, N'Contemporary')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (103, 135075, N'Seafood')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (104, 135079, N'Chinese')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (105, 135085, N'Fast Food')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (106, 135086, N'Burgers')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (107, 135086, N'Fast Food')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (108, 135088, N'Cafeteria')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (109, 135104, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (110, 135106, N'Mexican')
GO
INSERT [dbo].[restaurant_cuisines] ([index], [Restaurant_ID], [Cuisine]) VALUES (111, 135109, N'Italian')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (0, 132560, N'Puesto de Gorditas', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7523041, -99.1669133, N'None', N'Yes', N'Low', N'No', N'Open', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (1, 132561, N'Cafe Ambar', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.726819, -99.1265059, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (2, 132564, N'Church''s', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7309245, -99.1451848, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (3, 132572, N'Cafe Chaires', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1416471, -100.9927118, N'None', N'No', N'Low', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (4, 132583, N'McDonalds Centro', N'Cuernavaca', N'Morelos', N'Mexico', 62000, 18.9222904, -99.234332, N'None', N'No', N'Low', N'Yes', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (5, 132584, N'Gorditas Do?a Tota', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7523648, -99.1652879, N'None', N'No', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (6, 132594, N'Tacos De Barbacoa Enfrente Del Tec', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7521677, -99.165709, N'None', N'No', N'Low', N'No', N'Open', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (7, 132608, N'Hamburguesas La Perica', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7588052, -99.1651297, N'None', N'Yes', N'Low', N'Yes', N'Open', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (8, 132609, N'Pollo Frito Buenos Aires', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7602683, -99.1658646, N'None', N'No', N'Low', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (9, 132613, N'Carnitas Mata', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7529035, -99.165076, N'None', N'Yes', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (10, 132626, N'La Perica Hamburguesa', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7375834, -99.1351318, N'None', N'No', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (11, 132630, N'Palomo Tec', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7529305, -99.1644725, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (12, 132654, N'Carnitas Mata  Calle 16 de Septiembre', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7355234, -99.1295877, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (13, 132660, N'Carnitas Mata Calle Emilio Portes Gil', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7529428, -99.1646791, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (14, 132663, N'Tacos Abi', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7525107, -99.1669536, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (15, 132665, N'Tacos Correcaminos', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7367977, -99.1342413, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (16, 132667, N'Little Pizza Emilio Portes Gil', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7526973, -99.1633594, N'None', N'No', N'Low', N'Yes', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (17, 132668, N'Tacos El Guero', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.738212, -99.1519547, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (18, 132706, N'Gorditas Dona Tota', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7292162, -99.1323571, N'None', N'No', N'Medium', N'Yes', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (19, 132715, N'Tacos De La Estacion', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7324226, -99.1586602, N'None', N'No', N'Low', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (20, 132717, N'Tortas Hawaii', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7318602, -99.1504365, N'None', N'No', N'Medium', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (21, 132723, N'Gordas De Morales', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1489337, -101.019845, N'Full Bar', N'Smoking Section', N'Medium', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (22, 132732, N'Taqueria El Amigo ', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', 87018, 23.7543569, -99.171288, N'None', N'No', N'Low', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (23, 132733, N'Little Caesars', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7527071, -99.1625655, N'None', N'No', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (24, 132740, N'Carreton De Flautas Y Migadas', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7521965, -99.1666317, N'None', N'Yes', N'Low', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (25, 132754, N'Cabana Huasteca', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1477379, -100.9906163, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (26, 132755, N'La Estrella De Dimas', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.153324, -101.0195459, N'None', N'No', N'Medium', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (27, 132766, N'Mikasa', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.9101777, -99.2315438, N'Wine & Beer', N'No', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (28, 132767, N'Restaurant Familiar El Chino', N'Jiutepec', N'Morelos', N'Mexico', NULL, 18.8820871, -99.1630268, N'Wine & Beer', N'Yes', N'Medium', N'No', N'Open', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (29, 132768, N'Mariscos Tia Licha', N'Cuernavaca', N'Morelos', N'Mexico', 62320, 18.9257734, -99.2326355, N'None', N'No', N'Medium', N'Yes', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (30, 132773, N'El Cotorreo', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.8699929, -99.2103195, N'Wine & Beer', N'Yes', N'Low', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (31, 132825, N'Puesto De Tacos', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78280, 22.1473922, -100.983092, N'None', N'No', N'Low', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (32, 132830, N'Rincon Huasteco', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1508494, -100.9397522, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (33, 132834, N'Gorditas Doa Gloria', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78349, 22.156469, -100.98554, N'None', N'No', N'Low', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (34, 132845, N'Cenaduria El Rinc?n De Tlaquepaque', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1262926, -100.9007764, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (35, 132846, N'El Lechon Potosino ', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1422732, -100.9426537, N'None', N'Yes', N'Low', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (36, 132847, N'Don Burguers', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1443365, -100.9373825, N'None', N'No', N'Low', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (37, 132851, N'KFC', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.136872, -100.9345736, N'None', N'No', N'Low', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (38, 132854, N'Sirlone', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1378633, -100.9383273, N'Wine & Beer', N'No', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (39, 132856, N'Unicol''s Pizza', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1513782, -100.9746337, N'Wine & Beer', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (40, 132858, N'Hamburguesas Valle Dorado', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1312917, -100.9371941, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (41, 132861, N'Carl''s Jr', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1480965, -101.0173023, N'None', N'No', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (42, 132862, N'La Posada Del Virrey', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1506429, -100.9870148, N'Wine & Beer', N'No', N'High', N'No', N'Closed', N'Valet')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (43, 132866, N'Chaires', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1412198, -100.9313107, N'None', N'No', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (44, 132869, N'Dominos Pizza', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1412384, -100.9239252, N'None', N'No', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (45, 132870, N'Tortas Y Hamburguesas El Gordo', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1430781, -100.9354788, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (46, 132872, N'Pizzeria Julios', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1735955, -100.9946027, N'None', N'No', N'Medium', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (47, 132875, N'Shi Ro Ie', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1499013, -100.9937793, N'Wine & Beer', N'Smoking Section', N'High', N'Yes', N'Open', N'Valet')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (48, 132877, N'Sirloin Stockade', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1353639, -100.9349477, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (49, 132884, N'Dairy Queen', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1395776, -101.0278863, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (50, 132885, N'Hamburguesas Saul', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78433, 22.1795169, -100.9584358, N'None', N'No', N'Low', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (51, 132921, N'Crudalia', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.150305, -100.9891337, N'Wine & Beer', N'Smoking Section', N'Low', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (52, 132922, N'Cafe Punta Del Cielo', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1511348, -100.9823115, N'None', N'Yes', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (53, 132925, N'El Pueblito', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1534997, -100.976243, N'Wine & Beer', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (54, 132937, N'Rockabilly ', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1500193, -100.9799203, N'Full Bar', N'Smoking Section', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (55, 132951, N'Vips', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1544736, -100.9858091, N'None', N'No', N'Low', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (56, 132954, N'La Parroquia', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1603808, -100.9880447, N'None', N'No', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (57, 132955, N'Emilianos', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.147622, -101.0102749, N'Wine & Beer', N'No', N'Low', N'Yes', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (58, 132958, N'Tacos Los Volcanes', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1449787, -101.0056829, N'None', N'No', N'Low', N'Yes', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (59, 134975, N'Rincon Del Bife', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.940828, -99.215426, N'Full Bar', N'Smoking Section', N'High', N'No', N'Closed', N'Valet')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (60, 134976, N'Log Yin', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.916654, -99.22711, N'None', N'No', N'Low', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (61, 134983, N'Restaurant And Bar And Clothesline Carlos N Charlies', N'Cuernavaca', N'Morelos', N'Mexico', 62250, 18.948657, -99.235361, N'Full Bar', N'Smoking Section', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (62, 134986, N'Restaurant Las Ma?anitas', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.928798, -99.239513, N'Wine & Beer', N'No', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (63, 134987, N'Chilis Cuernavaca', N'Cuernavaca', N'Morelos', N'Mexico', 62290, 18.932725, -99.225211, N'Wine & Beer', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (64, 134992, N'Restaurant Teely', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.936683, -99.247366, N'Wine & Beer', N'Smoking Section', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (65, 134996, N'Sanborns Casa Piedra', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.923429, -99.216413, N'Wine & Beer', N'Bar Only', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (66, 134999, N'Kiku Cuernavaca', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.915421, -99.184871, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (67, 135000, N'Restaurant Los Pinos', N'Cuernavaca', N'Morelos', N'Mexico', 62790, 18.870565, -99.226938, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (68, 135001, N'Vips', N'Cuernavaca', N'Morelos', N'Mexico', 62170, 18.941859, -99.241927, N'Wine & Beer', N'No', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (69, 135011, N'Los Vikingos', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.91061, -99.169539, N'None', N'No', N'Medium', N'Yes', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (70, 135013, N'Giovannis', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.917441, -99.165945, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (71, 135016, N'Arrachela Grill', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.869347, -99.209944, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (72, 135018, N'El Oceano Dorado', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.859803, -99.222164, N'Full Bar', N'Yes', N'Medium', N'No', N'Open', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (73, 135019, N'Restaurant Bar Coty Y Pablo', N'Jiutepec', N'Morelos', N'Mexico', NULL, 18.875011, -99.159422, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (74, 135021, N'Subway', N'Cuernavaca', N'Morelos', N'Mexico', 62290, 18.933537, -99.222497, N'None', N'No', N'Low', N'Yes', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (75, 135025, N'El Rincon De San Francisco', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.14955, -100.97797, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (76, 135026, N'La Cantina', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78250, 22.148665, -101.001273, N'Full Bar', N'No', N'High', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (77, 135027, N'Restaurant Orizatlan', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.147145, -100.974494, N'Wine & Beer', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (78, 135028, N'La Virreina', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.146658, -100.987219, N'Wine & Beer', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (79, 135030, N'Preambulo Wifi Zone Cafe', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.14788, -100.989472, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (80, 135032, N'Cafeteria Y Restaurant El Pacifico', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.152481, -100.973486, N'Wine & Beer', N'Smoking Section', N'Medium', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (81, 135033, N'Restaurant El Muladar De Calzada', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78399, 22.14161, -100.973142, N'None', N'Smoking Section', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (82, 135034, N'Michiko Restaurant Japones', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78210, 22.140517, -101.021422, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (83, 135035, N'El Mundo De La Pasta', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78210, 22.145813, -101.018032, N'None', N'Smoking Section', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (84, 135038, N'Restaurant La Chalita', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.155651, -100.977767, N'None', N'Smoking Section', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (85, 135039, N'Restaurant De Mariscos De Picon', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 79300, 22.145893, -100.97487, N'None', N'Smoking Section', N'Low', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (86, 135040, N'Restaurant Los Compadres', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 74000, 22.135617, -100.969709, N'Wine & Beer', N'No', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (87, 135041, N'Luna Cafe', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.15106, -100.977659, N'Wine & Beer', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (88, 135042, N'Restaurant Oriental Express', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78269, 22.159357, -100.973411, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (89, 135043, N'Pizza Clasica', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.185756, -100.944518, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (90, 135044, N'Restaurant Wu Zhuo Yi', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78240, 22.141848, -100.997475, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (91, 135045, N'Restaurante La Gran Via', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.151189, -100.98179, N'Wine & Beer', N'No', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (92, 135046, N'Restaurante El Reyecito', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78200, 22.141282, -101.002958, N'None', N'No', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (93, 135047, N'Restaurante Casa De Las Flores', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78310, 22.150921, -100.993828, N'Wine & Beer', N'Smoking Section', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (94, 135048, N'Restaurante Bar Fu-Hao', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78269, 22.142017, -100.999246, N'Wine & Beer', N'No', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (95, 135049, N'Restaurante De Mariscos La Langosta', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78214, 22.135011, -101.0286, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (96, 135050, N'Restaurante La Estrella De Dima', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78430, 22.174887, -100.970825, N'Wine & Beer', N'No', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (97, 135051, N'Restaurante Versalles', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.151189, -100.977058, N'None', N'Smoking Section', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (98, 135052, N'La Cantina Restaurante', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.150981, -100.977412, N'Full Bar', N'No', N'High', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (99, 135053, N'La Fontana Pizza Restaurante And Cafe', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 62460, 22.178931, -101.012861, N'None', N'Smoking Section', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (100, 135054, N'Restaurante Y Pescaderia Tampico', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.140626, -100.915657, N'None', N'No', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (101, 135055, N'La Cochinita Pibil Restaurante Yucateco', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78270, 22.148854, -101.008472, N'None', N'Smoking Section', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (102, 135057, N'El Herradero Restaurante And Bar', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78390, 22.145992, -100.955118, N'Wine & Beer', N'Smoking Section', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (103, 135058, N'Restaurante Tiberius', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 64000, 22.165587, -101.001273, N'None', N'No', N'Medium', N'Yes', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (104, 135059, N'Restaurant Bar Hacienda Los Martinez', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78250, 22.145108, -100.989547, N'Wine & Beer', N'Smoking Section', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (105, 135060, N'Restaurante Marisco Sam', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78310, 22.156883, -100.978485, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (106, 135062, N'Restaurante El Cielo Potosino', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.153703, -100.979033, N'None', N'No', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (107, 135063, N'Restaurante Alhondiga', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.156724, -100.975556, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (108, 135064, N'Restaurante El Chivero S.A. De C.V.', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78740, 22.154687, -100.996617, N'None', N'No', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (109, 135065, N'El Angel Restaurante', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78250, 22.14958, -100.999557, N'Wine & Beer', N'Smoking Section', N'High', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (110, 135066, N'Restaurante Guerra', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78038, 22.16835, -100.972466, N'Wine & Beer', N'Smoking Section', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (111, 135069, N'Abondance Restaurante Bar', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78399, 22.140129, -100.944872, N'Wine & Beer', N'No', N'Low', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (112, 135070, N'Restaurante 75', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78421, 22.152918, -100.915164, N'None', N'No', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (113, 135071, N'Restaurante La Cantina', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78396, 22.126375, -100.910926, N'Full Bar', N'Smoking Section', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (114, 135072, N'Sushi Itto', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78220, 22.149192, -101.002936, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (115, 135073, N'Restaurante Bar El Gallinero', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.147175, -100.974269, N'Wine & Beer', N'Smoking Section', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (116, 135074, N'Restaurante La Parroquia Potosina', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.149689, -100.999525, N'Wine & Beer', N'Smoking Section', N'High', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (117, 135075, N'Mariscos El Pescador', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78269, 22.139573, -100.991564, N'None', N'No', N'Medium', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (118, 135076, N'Restaurante Pueblo Bonito', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78395, 22.181017, -100.973614, N'Wine & Beer', N'No', N'High', N'No', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (119, 135079, N'Koye Sushi', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.156376, -100.998355, N'None', N'No', N'High', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (120, 135080, N'Los Toneles', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78270, 22.145008, -100.997969, N'None', N'Smoking Section', N'High', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (121, 135081, N'El Club', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.164842, -100.960493, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (122, 135082, N'La Estrella De Dimas', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78421, 22.151448, -100.915099, N'None', N'No', N'Medium', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (123, 135085, N'Tortas Locas Hipocampo', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.150802, -100.98268, N'None', N'No', N'Medium', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (124, 135086, N'McDonalds Parque Tangamanga', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78290, 22.141421, -101.013955, N'None', N'No', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (125, 135088, N'Cafeteria Cenidet', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.8760113, -99.2198896, N'None', N'No', N'Low', N'No', N'Closed', N'Public')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (126, 135104, N'Vips', N'Ciudad Victoria', N'Tamaulipas', N'Mexico', NULL, 23.7529821, -99.1684341, N'Full Bar', N'No', N'Medium', N'Yes', N'Closed', N'Yes')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (127, 135106, N'El Rinc?n De San Francisco', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', 78000, 22.1497088, -100.9760928, N'Wine & Beer', N'Bar Only', N'Medium', N'No', N'Open', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (128, 135108, N'Potzocalli', N'San Luis Potosi', N'San Luis Potosi', N'Mexico', NULL, 22.1362534, -100.9335852, N'None', N'No', N'Low', N'No', N'Closed', N'None')
GO
INSERT [dbo].[restaurants] ([index], [Restaurant_ID], [Name], [City], [State], [Country], [Zip_Code], [Latitude], [Longitude], [Alcohol_Service], [Smoking_Allowed], [Price], [Franchise], [Area], [Parking]) VALUES (129, 135109, N'Paniroles', N'Cuernavaca', N'Morelos', N'Mexico', NULL, 18.9217848, -99.2353499, N'Wine & Beer', N'No', N'Medium', N'No', N'Closed', N'None')
GO
