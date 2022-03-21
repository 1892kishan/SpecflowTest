Feature: Edit Selected Columns

@Rest
Scenario: DD - Select columns from a table as user with no permission
	When  As User User with All Run cql statement SELECT [Compensation], [Employee ID], [Hobbies], [Home Address], [Home Phone], [Hourly Base Compensation], [IsEmployee], [Job], [Job Arrangement], [Manager], [Person], [Reports To], [Start Date] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

@Rest
Scenario: DD - Select a text column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Text] from [Mock].[Person3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a number column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Number] from [Mock].[Person3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a date column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Date] from [Mock].[Person3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a YesNo column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [YesNo] from [Mock].[Person3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a choice column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Choice] from [Mock].[Person3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a multi select choice column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [MSC] from [Mock].[Person3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a calculated columns as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Calc 1] from [Mock].[Person3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a calculated column dependent on another calculated column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Cached Calc],[Live Calc],[Cached UDF],[Live UDF] from [Mock].[Person3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a link column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Job] FROM [Mock].[Employees3] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a multi select link column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Reports To] FROM [Mock].[Employees3] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a hierarchy link column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [Approvals] FROM [Mock].[Employees3] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select a multi select hierarchy link column as user with Edit Selected Columns with no permission to that column
	When  As User ann Run cql statement SELECT [MSH] FROM [Mock].[Person3] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [Text] as user with Edit Selected Columns with no permission to [Text] column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [Text] IS NOT NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [Number] as user with Edit Selected Columns with no permission to [Number] column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [Number] = 100; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [Date] as user with Edit Selected Columns with no permission to [Date] column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [Date] LIKE '%Feb 3%' ; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [YesNo] as user with Edit Selected Columns with no permission to [YesNo] column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [YesNo] IN(1,0); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [Choice] as user with Edit Selected Columns with no permission to [Choice] column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [Choice] Is NOT NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [multi select Choice] column as user with Edit Selected Columns with no permission to [multi select Choice] column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [MSC] = '1'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [Cached Calculalated column] as user with Edit Selected Columns with no permission to [Cached Calculalated column] column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [Cached Calc] LIKE 'Anne%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [Live Calculalated column] as user with Edit Selected Columns with no permission to [Live Calculalated column] column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [Live Calc] LIKE 'ann%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [calculated column1] dependent on another calculated column2 as user with Edit Selected Columns with no permission to calculated column2 column
	When  As User ann Run cql statement SELECT [Address], [City], [Country], [Email], [Name], [Phone], [Postal Code], [Province], [User] from [Mock].[Person3] WHERE [Calc 1] LIKE 'ann%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [Link column] as user with Edit Selected Columns with no permission to [Link column] column
	When  As User ann Run cql statement SELECT[Birthday], [Compensation], [Employee ID], [Hobbies], [Home Address], [Home Phone], [Hourly Base Compensation], [IsEmployee], [Manager] FROM [Mock].[Employees3] WHERE [Job]=21; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [multi select link column] as user with Edit Selected Columns with no permission to [multi select link column] column
	When  As User ann Run cql statement SELECT[Birthday], [Compensation], [Employee ID], [Hobbies], [Home Address], [Home Phone], [Hourly Base Compensation], [IsEmployee], [Manager] FROM [Mock].[Employees3] WHERE [MSL]='QA I'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [hierarchy link column] as user with Edit Selected Columns with no permission to [hierarchy link column] column
	When  As User ann Run cql statement SELECT[Birthday], [Compensation], [Employee ID], [Hobbies], [Home Address], [Home Phone], [Hourly Base Compensation], [IsEmployee], [Manager] FROM [Mock].[Employees3] WHERE [Approvals]='Anne'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns WHERE [multi select hierarchy link column] as user with Edit Selected Columns with no permission to [multi select hierarchy link column] column
	When  As User ann Run cql statement SELECT[Birthday], [Compensation], [Employee ID], [Hobbies], [Home Address], [Home Phone], [Hourly Base Compensation], [IsEmployee], [Manager] FROM [Mock].[Employees3] WHERE [Reports To]='Anne'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

## C<-B<-A, user has no permission to C
@Rest
Scenario: DD - Select a link column pointing to another link column as user with Edit Selected Columns with no permission to that column, has permissions to linked table and source column table
	When  As User ann Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to C
@Rest
Scenario: DD - Select a multi select link column pointing to another link column as user with Edit Selected Columns with no permission to that column, has permissions to linked table and source column table
	When  As User ann Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: DD - Select a link column that points to another link column as a user with Edit Selected Columns entitlement without access to the linked column
	When  As User ann2 Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: DD - Select a multi select link column that points to another link column as a user with Edit Selected Columns entitlement without access to the linked column
	When  As User ann2 Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DD - Select a link column that points to another link column as a user withEdit Selected Columns entitlement without access to the source column table
	When  As User ann1 Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DD - Select a multi select link column that points to another link column as a user with Edit Selected Columns entitlement without access to the source column table
	When  As User ann1 Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied