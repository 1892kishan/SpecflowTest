Feature: SQL EditAll Update

@Rest
Scenario: CA - User with edit all columns is not able to update Choice Column with non-available option
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Employee Term] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be selected from the available options.

@Rest
Scenario: CA - User with edit all columns is not able to update MultiSelect Choice Column with non-available option
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [MSC] = 'Test,Test1' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be selected from the available options.

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Created
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Created] = 'May 7, 2021 9:37:06 AM' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Created

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Created By
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Created By] = ResolveLink('Ann','Username') WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Created By

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Deleted By
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Deleted By] = ResolveLink('Ann','Username') WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Deleted By

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Deleted
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Deleted] = 'May 7, 2021 9:36:06 AM' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Deleted

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Draft Version
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Draft Version] = '1' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Draft Version

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Modified By
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Modified By] = ResolveLink('Ann','Username') WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Modified By

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Modified
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Modified] = 'May 7, 2021 9:36:06 AM' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Modified

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Rejection Comments
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Rejection Comments] = 'This is a Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Rejection Comments

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Version
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Version] = '14' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Version

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Change Summary
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Change Summary] = 'Test' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Can not update a system defined column

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Changeset
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Changeset] = '16' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Can not update a system defined column

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Cinchy Id
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Cinchy Id] = '123123' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Cinchy Id

@Rest
Scenario: CA - User with edit all columns is not able to update System Column Cinchy Record Type
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Cinchy Record Type] = 'Test' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Access denied on column(s) Cinchy Record Type

@Rest
Scenario: CA - User with edit all columns is not able to update Number Column with Text
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Id] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be a number.

@Rest
Scenario: CA - User with edit all columns is not able to update Yes/No Column with Text
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Salaried] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be Yes or No.

@Rest
Scenario: CA - User with edit all columns is not able to update Date Column with Text
	When As User EditAll Run cql statement Update [Mock].[UpdateCAEmployee5] SET [Start Date] = 'Test' WHERE [Id] = 27; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then Run cql result failed with exception Value must be a valid date.