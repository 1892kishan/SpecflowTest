Feature: Valid Data Formats

@Rest
Scenario: As Admin, Exceeds the max length for default Value
	When Run cql from file Max Length Text insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Value must be less than 500 characters

@Rest
Scenario: As Admin, Unique Constraint Violation
	When Run cql from file Unique Constraint Violation Text insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Cannot insert duplicate key row

@Rest
Scenario: As Admin, Invalid Data Text for Data Type Number
	When Run cql from file Data Violation Number insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Value must be a number.

@Rest
Scenario: As Admin, Calculated Column formula failure
	When Run cql from file Data Violation Calculated insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception String or binary data would be truncated
	Then Run cql result failed contains with exception The statement has been terminated.

@Rest
Scenario: As Admin, Mandatory Constraint Validation
	Given Cleanup Run cql from file Constraints.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When Run cql from file Mandatory Constraints insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Columns Mandatory are mandatory and must be included in the insert

@Rest
Scenario: NUMBER : Invalid Format space
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Number Currency]) VALUES (' '); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be a number.

@Rest
Scenario: DATE : Invalid Format, string like 'abc'
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Date]) VALUES ('test'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be a valid date.

@Rest
Scenario: DATE : Invalid Format like  1234
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Date]) VALUES (1234); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be a valid date.

@Rest
Scenario: DATE : Invalid Format like '  '
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Date]) VALUES (' '); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be a valid date.

@Rest
Scenario: BOOLEAN : Invalid Format as '  '
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([CheckBox]) VALUES (' '); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be Yes or No.

@Rest
Scenario: BOOLEAN : Invalid Format as string
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([CheckBox]) VALUES ('Test'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be Yes or No.

@Rest
Scenario: BOOLEAN : Invalid Format like -2, +2
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([CheckBox]) VALUES (-2); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be Yes or No

@Rest
Scenario: LINK : column value that cannot be resolved
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Link]) VALUES (ResolveLink('Test','Description')); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Failed to resolve value Test in column Description linked to by column Link

@Rest
Scenario: LINK : invalid column that cannot be resolved
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Link]) VALUES (ResolveLink('Test','Test')); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Object reference not set to an instance of an object.

@Rest
Scenario: HIERARCHY LINK : column value that cannot be resolved
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([HLink]) VALUES (ResolveLink('Test1','First Name')); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Failed to resolve value Test1 in column First Name linked to by column HLink

@Rest
Scenario: HIERARCHY LINK : invalid column that cannot be resolved
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([HLink]) VALUES (ResolveLink('Test','First Name1')); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Object reference not set to an instance of an object.

#23505: duplicate key value violates unique constraint "IX_UNIQUE_Tbl283_Col5122"
@Rest
Scenario: UNIQUE AND MANDATORY Column: VALUE NOT NULL and NOT UNIQUE
	When Run cql statement INSERT INTO [SandBox].[UniqueMandatory] ([Text]) VALUES ('Test');INSERT INTO [SandBox].[UniqueMandatory] ([Text]) VALUES ('Test'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Cannot insert duplicate key row in object 'dbo.Tbl153' with unique index 'IX_UNIQUE_Tbl153_Col5122'. The duplicate key value is (Test). The statement has been terminated.

#No error and no insert still Ui shows 1 row affected
@Rest
Scenario: UNIQUE AND MANDATORY Column: VALUE NULL and NOT UNIQUE
	When Run cql statement INSERT INTO [SandBox].[UniqueMandatory] ([Text]) VALUES (' ');INSERT INTO [SandBox].[UniqueMandatory] ([Text]) VALUES (' '); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Cannot insert duplicate key row in object 'dbo.Tbl153' with unique index 'IX_UNIQUE_Tbl153_Col5122'. The duplicate key value is ( ). The statement has been terminated.

#23505: duplicate key value violates unique constraint "IX_UNIQUE_Tbl240_FN Index"
@Rest
Scenario: MULTI COLUMN UNIQUE INDEX : UNIQUE
	When Run cql statement INSERT INTO [SandBox].[MultiColumnIndex]([FN], [Number])VALUES ('1','1'); INSERT INTO [SandBox].[MultiColumnIndex]([FN], [Number])VALUES ('1','1'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Cannot insert duplicate key row in object 'dbo.Tbl152' with unique index 'IX_UNIQUE_Tbl152_FN Index'. The duplicate key value is (1, 1). The statement has been terminated.

#	TSQL -> Column [Deleted Column] could not be found
#	PGSQL -> Column "Deleted Column" could not be found
@Rest
Scenario: Insert into a column that is deleted
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Deleted Column]) VALUES ('Test'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Column [Deleted Column] could not be found

#	TSQL -> Column [To Be Renamed] could not be found
#	PGSQL -> Column "To Be Renamed" could not be found
@Rest
Scenario: Insert into a renamed column using the old name
	When Run cql statement INSERT into [SandBox].[Invalid Format]([To Be Renamed]) VALUES ('test'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Column [To Be Renamed] could not be found

	# TSQL -> Table DeletedTable in domain  could not be found
@Rest
Scenario: Insert into a table that is deleted
	When Run cql statement INSERT INTO [SandBox].[DeletedTable]([Text]) VALUES ('Test'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Table DeletedTable in domain SandBox could not be found

@Rest
Scenario: Insert into a table that is restored
	When Run cql statement ' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception '

@Rest
Scenario: SINGLE options unavailable
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Choice]) VALUES ('Banana'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be selected from the available options.

@Rest
Scenario: MULTI SELECT CHOICE options unavailable
	When Run cql statement INSERT INTO [SandBox].[Invalid Format]([Choice]) VALUES ('Banana,Apple,Orange'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Value must be selected from the available options.