Feature: Charindex

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression
	When Run cql statement DECLARE @document VARCHAR(64);SELECT @document = 'Reflectors are vital safety' + ' components of your bicycle.'; SELECT CHARINDEX(' bicycle', @document) as 'Charindex'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex47

@Rest
Scenario: As Admin, Run Charindex function searching from a specific position
	When Run cql statement DECLARE @document VARCHAR(64);SELECT @document = 'Reflectors are vital safety' + ' components of your bicycle.';SELECT CHARINDEX('vital', @document, 5) as 'Charindex'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex16

@Rest
Scenario: As Admin, Run Charindex function searching for a nonexistent expression
	When Run cql statement DECLARE @document VARCHAR(64);SELECT @document = 'Reflectors are vital safety' + ' components of your bicycle.'; SELECT CHARINDEX('bike', @document) as 'Charindex'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex0

@Rest
Scenario: As Admin, Run Charindex function performing a case-sensitive search
	When Run cql statement SELECT CHARINDEX ( 'TEST','This is a Test' COLLATE Latin1_General_CS_AS) as 'Charindex'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex0

	#case-insensitive search doesnt work in v4 and v5 -> Charindex0
@Rest @Ignore @Bug
Scenario: As Admin, Run Charindex function performing a case-insensitive search
	When Run cql statement SELECT CHARINDEX ( 'TEST', 'This is a Test' COLLATE Latin1_General_CI_AS) as 'Charindex'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex11

@Rest
Scenario: As Admin, Run Charindex function searching a substring position in a specified string with multiple matching
	When Run cql statement DECLARE @ExpressionToSearch varchar(100);SET @ExpressionToSearch = 'Explore Cinchy at Cinchy.com Explore Cinchy at Cinchy.com';SELECT CHARINDEX ('Cinchy', @ExpressionToSearch) AS 'Charindex'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex9

@Rest
Scenario: As Admin, Run Charindex function searching a substring position after specified position in a specified string with multiple matching position
	When Run cql statement DECLARE @ExpressionToSearch varchar(100);SET @ExpressionToSearch = 'Explore Cinchy at Cinchy.com Explore Cinchy at Cinchy.com';SELECT CHARINDEX ('Cinchy', @ExpressionToSearch,10) AS 'Charindex'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex19

@Rest
Scenario: As Admin, Run Charindex function inside case statement searching a substring position after specified position in a specified string with multiple matching position
	When Run cql statement DECLARE @Name AS VARCHAR(100)= 'Explore Cinchy at Cinchy.com Explore Cinchy at Cinchy.com';SELECT CASE WHEN CHARINDEX('Cinchy', @Name) > 0 THEN 'Exists' ELSE 'Does Not Exists' END AS 'Charindex'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be CharindexExists

@Rest
Scenario: As Admin, Run Charindex function inside case statement searching an invalid substring position after specified position in a specified string with multiple matching position
	When Run cql statement DECLARE @Name AS VARCHAR(100)= 'Explore Cinchy at Cinchy.com Explore Cinchy at Cinchy.com';SELECT CASE WHEN CHARINDEX('Automation', @Name, 9) > 0 THEN 'Exists' ELSE 'Does Not Exists' END AS Charindex; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be CharindexDoes Not Exists

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Link Column
	When Run cql statement SELECT CHARINDEX('Broker', [Additional Referrals]) as 'Charindex' FROM [Import].[CSV_TR_EX6]  WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex23

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Text Column
	When Run cql statement SELECT CHARINDEX('_2020', [FileName]) as 'Charindex' FROM [Import].[CSV_TR_EX6] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex22

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Number Column
	When Run cql statement SELECT CHARINDEX('6', [Instrument_No]) as 'Charindex' FROM [Import].[CSV_TR_EX6] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex4

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Date Column
	When Run cql statement SELECT CHARINDEX('18', [Snapshot Date]) as 'Charindex' FROM [Import].[CSV_TR_EX6]  WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex9

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Calculated Column
	When Run cql statement SELECT CHARINDEX('.3', [Total Rate]) as 'Charindex' FROM [Import].[CSV_TR_EX6]  WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex5

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a UDF Cached Column
	When Run cql statement SELECT CHARINDEX('08', [UDF Cached]) as 'Charindex' FROM [Import].[CSV_TR_EX6] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex6

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a UDFReturn Column
	When Run cql statement SELECT CHARINDEX('lio', [UDF Return]) as 'Charindex' FROM [Import].[CSV_TR_EX6] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex7

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a YesNo Column
	When Run cql statement SELECT CHARINDEX('0', [Bool]) as 'Charindex' FROM [Import].[SelectAllDataTypes] WHERE [Deleted] IS NULL and [Cinchy Id] =1;  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex1

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Hierarchy Column
	When Run cql statement select CHARINDEX('o', [Single HLink]) as 'Charindex'from [SandBox].[HierarchyMultiSingle] where [Cinchy Id] = 14  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex2

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Multi Hierarchy Column
	When Run cql statement select CHARINDEX('Woo', [Multi HLink]) as 'Charindex'from [SandBox].[HierarchyMultiSingle] where [Cinchy Id] = 12;  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex8

@Rest @Ignore
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Multi Select Choice Column
	When Run cql statement Select CHARINDEX('e', [Favorite Colors]) as 'Charindex' from [Datatype].[Multi-select Choice] where [Cinchy Id] = 34;  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex4

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression for a Choice Column
	When Run cql statement Select CHARINDEX('a', [Employee Term]) as 'Charindex' from [Mock].[EmployeeChangeApproval1] where [Cinchy Id] = 41;  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex2

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Link Column
	When Run cql statement SELECT CHARINDEX('o', [Additional Referrals], 12) as 'Charindex' FROM [Import].[CSV_TR_EX6]  WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex25

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Text Column
	When Run cql statement SELECT CHARINDEX('08', [FileName],6) as 'Charindex' FROM [Import].[CSV_TR_EX6] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex28

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Number Column
	When Run cql statement SELECT CHARINDEX('6', [Instrument_No],5) as 'Charindex' FROM [Import].[CSV_TR_EX6] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex0

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Date Column
	When Run cql statement SELECT CHARINDEX('8', [Snapshot Date],8) as 'Charindex' FROM [Import].[CSV_TR_EX6]  WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex10

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Calculated Column
	When Run cql statement SELECT CHARINDEX('3', [Total Rate],7) as 'Charindex' FROM [Import].[CSV_TR_EX6]  WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex7

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a UDFCached Column
	When Run cql statement SELECT CHARINDEX('8', [UDF Cached],8) as 'Charindex' FROM [Import].[CSV_TR_EX6] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex10

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a UDFReturn Column
	When Run cql statement SELECT CHARINDEX('o', [UDF Return],7) as 'Charindex' FROM [Import].[CSV_TR_EX6] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex9

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a YesNo Column
	When Run cql statement SELECT CHARINDEX('0', [Bool],2) as 'Charindex' FROM [Import].[SelectAllDataTypes] WHERE [Deleted] IS NULL and [Cinchy Id] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex0

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Hierarchy Column
	When Run cql statement select CHARINDEX('o', [Single HLink],3) as 'Charindex'from [SandBox].[HierarchyMultiSingle] where [Cinchy Id] = 2; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex3

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Multi Hierarchy Column
	When Run cql statement select CHARINDEX('o', [Multi HLink],10) as 'Charindex'from [SandBox].[HierarchyMultiSingle] where [Cinchy Id] = 12; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex10

@Rest @Ignore
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Multi Select Choice Column
	When Run cql statement Select CHARINDEX('e', [Favorite Colors],10) as 'Charindex' from [Datatype].[Multi-select Choice] where [Cinchy Id] = 34; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex

@Rest
Scenario: As Admin, Run Charindex function returning the starting position of an expression from a specific position for a Choice Column
	When Run cql statement Select CHARINDEX('o', [Employee Term],3) as 'Charindex' from [Mock].[EmployeeChangeApproval1] where [Cinchy Id] = 42; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Charindex4