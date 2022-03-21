Feature: SQL EditSelectedColumn Update

@Rest
Scenario: RT - User with edit selected columns is not able to update Choice Column with non-available option
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Employee Term] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be selected from the available options.

@Rest
Scenario: RT - User with edit selected columns is not able to update MultiSelect Choice Column with non-available option
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [MSC] = 'Test,Test1' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be selected from the available options.

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Created
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Created] = 'May 7, 2021 9:37:06 AM' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Created

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Created By
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Created By] = ResolveLink('Ann','Username') WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Created By

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Deleted By
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Deleted By] = ResolveLink('Ann','Username') WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Deleted By

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Deleted
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Deleted] = 'May 7, 2021 9:36:06 AM' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Deleted

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Draft Version
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Draft Version] = '1' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Draft Version

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Modified By
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Modified By] = ResolveLink('Ann','Username') WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Modified By

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Modified
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Modified] = 'May 7, 2021 9:36:06 AM' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Modified

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Rejection Comments
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Rejection Comments] = 'This is a Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Rejection Comments

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Version
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Version] = '14' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Version

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Change Summary
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Change Summary] = 'Test' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Change Summary

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Changeset
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Changeset] = '16' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Changeset

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Cinchy Id
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Cinchy Id] = '123123' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Cinchy Id

@Rest
Scenario: RT - User with edit selected columns is not able to update System Column Cinchy Record Type
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Cinchy Record Type] = 'Test' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Cinchy Record Type

@Rest
Scenario: RT - User with edit selected columns is not able to update Number Column with Text
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Id] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be a number.

@Rest
Scenario: RT - User with edit selected columns is not able to update Yes/No Column with Text
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Salaried] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be Yes or No.

@Rest
Scenario: RT - User with edit selected columns is not able to update Date Column with Text
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Start Date] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be a valid date.

@Rest
Scenario: RT - User with edit selected columns is not able to update Non-accessible Text Column
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Name] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Name

@Rest
Scenario: RT - User with edit selected columns is not able to update Non-accessible Number Column
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Emergency Contact Number] = 123123 WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Emergency Contact Number

@Rest
Scenario: RT - User with edit selected columns is not able to update Non-accessible Link Column
	When As User EditSelectedColumn Run cql statement Update [Mock].[UpdateEmployee10] SET [Person] = ResolveLink('Apple','Name') WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Person

@Rest
Scenario: RT - User with edit selected columns is not able to update Non-accessible Multi Select Link Column
	When As User EditSelectedColumn1 Run cql statement Update [Mock].[UpdateEmployee10] SET [MSL] = ResolveLink('2020-03-03 00:00:00.0000000,2020-12-06 00:00:00.0000000','Date') WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: RT - User with edit selected columns is not able to update Non-accessible Multi Select Hierarchy Column
	When As User EditSelectedColumn1 Run cql statement Update [Mock].[UpdateEmployee10] SET [MSH] = ResolveLink('12,All Edit View Row Filter12','Employee ID') WHERE [Id] = 27;  with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) MSH, Employee ID

@Rest
Scenario: RT - User with edit selected columns is not able to update Non-accessible Multi Select Choice Column
	When As User EditSelectedColumn1 Run cql statement Update [Mock].[UpdateEmployee10] SET [MSC] = 'Jump,Sleep' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) MSC

@Rest
Scenario: RT - User with edit selected columns is not able to update Non-accessible Date Column
	When As User EditSelectedColumn1 Run cql statement Update [Mock].[UpdateEmployee10] SET [Start Date] = '15 Mar 2020' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Start Date

@Rest
Scenario: RT - User with edit selected columns is not able to update Non-accessible CheckBox Column
	When As User EditSelectedColumn1 Run cql statement Update [Mock].[UpdateEmployee10] SET [Salaried] = 'true' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Salaried