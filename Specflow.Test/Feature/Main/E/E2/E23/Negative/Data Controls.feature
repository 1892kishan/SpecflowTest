Feature: Data Controls

@Rest
Scenario: Insert as a user with View All Columns and Insert Rows
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User viewonly Run cql from file Valid Date Format insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Source Table

@Rest
Scenario: Insert into a text column, a value that exceeds Maxlength
	When As User Ben Run cql from file Max Length Text insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Value must be less than 500 characters

# Exception Message is 23505: duplicate key value violates unique constraint "IX_UNIQUE_Tbl204_Col3239"
@Rest
Scenario: Insert into a unique column, a non unique value
	When As User Ben Run cql from file Unique Constraint Violation Text insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Cannot insert duplicate key row

@Rest
Scenario: Insert into a number column: an invalid data, text value
	When As User Ben Run cql from file Data Violation Number insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Value must be a number.

@Rest
Scenario: Insert into Link column as a user with Edit Selected columns and no edit access to Link column
	When As User Ann1 Run cql from file Link Column Simple Type insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Resolve Link With Simple Type

#Doesnt throw error -> Row Inserted
@Rest
Scenario: Insert into a Calculated Column
	When As User Ben Run cql from file Data Violation Calculated insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception String or binary data would be truncated
	Then Run cql result failed contains with exception The statement has been terminated.

@Rest
Scenario: Insert into other columns exlcuding mandatory column(s)
	#Scenario: Insert into a mandatory column: null values
	Given Cleanup Run cql from file Constraints.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Ann Run cql from file Mandatory Constraints insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Columns Mandatory are mandatory and must be included in the insert

@Rest
Scenario: Validation Row Level Access with Viewable Row Filter SubQuery
	Given Cleanup Run cql from file VRFExecuteSavedQueryCurrentUserIdUserGroups.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFInvalidSubQueryInsert Run cql from file VRFSubQuery insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Access denied

@Rest
Scenario: Validation Row Level Access with Viewable Row Filter simple type
	Given Cleanup Run cql from file VRFSimpleType.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User VRFInvalidSubQueryInsert Run cql from file VRFSimpleType insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Access denied

@Rest
Scenario: Access Denied to Link for user having Data Control Edit Selected Column
	When As User EditSelectedColumn Run cql statement INSERT INTO [Cinchy Test].[Row Level Access Table]([Text],[Link]) VALUES ('Banana', ResolveLink('100','Currency')); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Access denied on column(s) Link

@Rest
Scenario: Access Denied to same table column for user having Data Control Edit Selected Column
	When As User EditSelectedColumn Run cql statement INSERT INTO [Cinchy Test].[Row Level Access Table]([Text],[Number]) VALUES ('Banana', 2020); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Access denied on column(s) Number

@Rest
Scenario: Access Denied to Multi Select Link for user having Data Control Edit Selected Column
	When As User EditSelectedColumn Run cql statement INSERT INTO [Cinchy Test].[Row Level Access Table]([Text],[MSL]) VALUES ('Banana', ResolveLink('100,200','Currency')); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Access denied on column(s) MSL

@Rest
Scenario: Verify User can not insert into Read Only System column Modified and Modified
	When As User Ben Run cql statement Insert into [SandBox].[Dummy] ([FN], [LN], [Region],[Modified By],[Modified]) VALUES ('Test', 'Test1', ResolveLink('Canada','Description'),'Admin', 1); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Columns Modified By, Modified are readonly and can not be updated

# No Error (Insert is rejected still shows 1 row affected message)
#TSQL -> Result -> column1 "0"
@Rest
Scenario: Verify User can not insert into Read Only System column Cinchy Id
	When As User Ben Run cql statement Insert into [SandBox].[Dummy] ([FN], [LN], [Region], [Cinchy Id]) VALUES ('Test', 'Test1', ResolveLink('Canada','Description'), 99); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result succeeded with result ""

@Rest
Scenario: Verify User can not insert into Calculated column
	When As User Ben Run cql statement Insert into [SandBox].[Dummy] ([FN], [LN], [Region], [Calculated]) VALUES ('Test', 'Test1', ResolveLink('Canada','Description'), 'Test Test1'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed contains with exception Columns Calculated are readonly and can not be updated

@Rest
Scenario: Verify User is not able to insert null into mandatory Text column
	When As User Ben Run cql statement Insert into [SandBox].[Mandatory Table] ([Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES ('1', '23 Mar 2021', ResolveLink('null','Mandatory Text'), ResolveLink('Canada','Description'), 2, null); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Column Mandatory Text is mandatory and a null value is not a valid value

@Rest
Scenario: Verify User is not able to insert null into mandatory Number column
	When As User Ben Run cql statement Insert into [SandBox].[Mandatory Table] ([Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES ('1', '23 Mar 2021', ResolveLink('null','Mandatory Text'), ResolveLink('Canada','Description'), null, 'Test'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Column Mandatory Number is mandatory and a null value is not a valid value

@Rest
Scenario: Verify User is not able to insert null into mandatory Date column
	When As User Ben Run cql statement Insert into [SandBox].[Mandatory Table] ([Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES ('1', null, ResolveLink('null','Mandatory Text'), ResolveLink('Canada','Description'), 2, 'Test'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Column Mandatory Date is mandatory and a null value is not a valid value

@Rest
Scenario: Verify User is not able to insert null into mandatory Link column
	When As User Ben Run cql statement Insert into [SandBox].[Mandatory Table] ([Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES ('1', '23 Mar 2021', ResolveLink('null','Mandatory Text'), null, 2, 'Test'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Column Mandatory Link is mandatory and a null value is not a valid value

@Rest
Scenario: Verify User is not able to insert null into mandatory Choice column
	When As User Ben Run cql statement Insert into [SandBox].[Mandatory Table] ([Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES (null, '23 Mar 2021', ResolveLink('null','Mandatory Text'), ResolveLink('Canada','Description'), 2, 'Test'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Column Mandatory Choice is mandatory and a null value is not a valid value

@Rest
Scenario: Verify User is not able to insert null into mandatory Hierarchy Link column
	When As User Ben Run cql statement Insert into [SandBox].[Mandatory Table] ([Mandatory Choice], [Mandatory Date], [Mandatory Hlink], [Mandatory Link], [Mandatory Number], [Mandatory Text]) VALUES ('1', '23 Mar 2021',null, ResolveLink('Canada','Description'), 2, 'Test'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Column Mandatory Hlink is mandatory and a null value is not a valid value

#Data Inserted
@Rest
Scenario: Verify User is not able to insert into calculated column when cql expression fails
	When As User Ben Run cql statement Insert into [SandBox].[Invalid Calculated Table]([First Name]) Values ('This is really a big input just to break cql expression so that we can test cql expression'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception String or binary data would be truncated. The statement has been terminated.

#PGSQL Error -> 42804: column "Col_12017_3" is of type numeric but expression is of type character varying
@Rest
Scenario: Verify User is not able to insert into calculated column when result type conversion fails
	When As User Ben Run cql statement Insert into [SandBox].[Invalid Calculated Table]([First Name]) Values ('Test'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Error converting data type varchar to float.