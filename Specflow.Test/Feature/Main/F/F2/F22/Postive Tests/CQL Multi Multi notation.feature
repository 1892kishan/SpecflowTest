Feature: CQL Multi Multi notation

@Rest @MIN_VERSION_4.20 
Scenario: Query multi select link column of a multi select link column
	When Run cql statement SELECT [MLink].[MLink] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.MLinkTest A, Test B, Test B, Test C, Test A, Test CTest A, Test B, Test A, Test CTest A, Test B

@Rest @MIN_VERSION_4.20 
Scenario:a Query a multi select hierarchy link column of a multi select link column
	When Run cql statement SELECT [MLink].[MSH] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.MSHTest A, Test B, Test C, Test A, Test B, Test A, Test BTest A, Test B, Test A, Test BTest A, Test B

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select hierarchy.Created By.Username link column of a multi select link column
	When Run cql statement SELECT [MLink].[MSH].[Created By].[Username] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be Created By.Usernameadmin, admin, admin, admin, admin, admin, adminadmin, admin, admin, adminadmin, admin

@Rest @MIN_VERSION_4.20
Scenario: Query a multi select link column.Cinchy Id of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[Cinchy Id] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.Cinchy Id6, 7, 7, 8, 6, 86, 7, 6, 86, 7

@Rest @MIN_VERSION_4.20 
Scenario:A Query a multi select link column.Created By.Username of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[Created By].[Username] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be Created By.Usernameadmin, admin, admin, admin, admin, adminadmin, admin, admin, adminadmin, admin

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Text of a multi select link column
SELECT [MLink].[MLink].[Text] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL
	When Run cql statement SELECT [MLink].[MLink].[Text] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.TextTest A, Test B, Test B, Test C, Test A, Test CTest A, Test B, Test A, Test CTest A, Test B

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Number of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[Number] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.Number100, 200, 200, 10, 100, 10100, 200, 100, 10100, 200

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Date of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[Date] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL AND [Cinchy Id] = 1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.Date2021-02-09 00:00:00.0000000, 2021-02-04 00:00:00.0000000, 2021-02-04 00:00:00.0000000, 2021-02-16 00:00:00.0000000, 2021-02-09 00:00:00.0000000, 2021-02-16 00:00:00.0000000

@Rest @MIN_VERSION_4.20 @DEF001290
Scenario: Query a multi select link column.YesNo of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[YesNo] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.YesNo0, 1, 1, 0, 0, 00, 1, 0, 00, 1

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Choice of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[Choice] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.ChoiceBanana, Banana, Oranges, OrangesBanana, OrangesBanana

@Rest @MIN_VERSION_4.20 @Bug @Ignore
# fails with Error: Invalid column name 'Col_2120_1'.
Scenario: Query a multi select link column.Multi select Choice of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[MSC] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be something

@Rest @MIN_VERSION_4.20 @Bug @Ignore
# fails with Invalid column name 'Col_2123_1'.
Scenario: Query a multi select link column.Live Calculated column of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[Calculated Live] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be something

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Cached Calculated column of a multi select link column
	When Run cql statement SELECT [MLink].[Mlink].[Calculated] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be Mlink.Calculated200.1, 300.1, 300.1, 110.1, 200.1, 110.1200.1, 300.1, 200.1, 110.1200.1, 300.1

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Multi select Link of a multi select link column

	When Run cql statement SELECT [MLink].[MLink].[MSL] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.MSLEnglish, French, Chinese, Chinese, Hindi, Tamil, English, French, Hindi, TamilEnglish, French, Chinese, English, French, Hindi, TamilEnglish, French, Chinese

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Multi select Link.Created By.Username of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[MSL].[Created BY].[Username] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be Created BY.Usernamesystem, system, system, system, system, system, system, system, system, systemsystem, system, system, system, system, system, systemsystem, system, system

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Hierarchy Link of a multi select link column

	When Run cql statement SELECT [MLink].[MLink].[HLink] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.HLinkTest B, Test BTest B, Test BTest B

@Rest @MIN_VERSION_4.20 
Scenario: Query a multi select link column.Multi select Hierarchy Link of a multi select link column

	When Run cql statement SELECT [MLink].[MLink].[MSH] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.MSHTest A, Test B, Test C, Test A, Test B, Test CTest A, Test B, Test C, Test A, Test B, Test CTest A, Test B, Test C

@Rest @MIN_VERSION_4.20 
Scenario: Query a single select link column of a multi select link column
	When Run cql statement SELECT [MLink].[MLink].[Link] FROM [Sandbox].[Link 2] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
	Then Validate expected string to be MLink.LinkCanada, China, China, India, Canada, IndiaCanada, China, Canada, IndiaCanada, China