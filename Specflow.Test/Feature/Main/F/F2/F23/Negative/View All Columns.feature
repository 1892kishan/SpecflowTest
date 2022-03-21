Feature: View All Columns

## C<-B<-A, user has no permission to C
@Rest
Scenario: Select a link column pointing to another link column as user with no permission to that table, has View All columns permission to linked table and source column table
	When  As User ViewAll1 Run cql statement SELECT [Nested Link] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees2

# C<-B<-A, user has no permission to C
@Rest
Scenario: Select a multi select link column pointing to another link column as user with no permission to that table, has View All columns permission to linked table and source column table
	When  As User ViewAll1 Run cql statement SELECT [MSL] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees2

# B<-A, user has no permission to B
@Rest
Scenario: Select a link column as a user with View All columns entitlement without access to the table
	When  As User ViewAll Run cql statement SELECT [Location] FROM [Mock].[Job2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job2

# B<-A, user has no permission to B
@Rest
Scenario: Select a multi select link column as a user with View All columns entitlement without access to the table
	When  As User ViewAll Run cql statement SELECT [Other Locations] FROM [Mock].[Job2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job2

# C<-B<-A, user has no permission to B
@Rest
Scenario: Select a link column that points to another link column as a user with View All columns entitlement without access to the linked table
	When  As User ViewAll Run cql statement SELECT [Nested Link] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: Select a multi select link column that points to another link column as a user with View All columns entitlement without access to the linked table
	When  As User ViewAll Run cql statement SELECT [MSL] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: Select a link column that points to another link column as a user with View All columns entitlement without access to the source column table
	When  As User ViewAll2 Run cql statement SELECT [Nested Link] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: Select a multi select link column that points to another link column as a user with View All columns entitlement without access to the source column table
	When  As User ViewAll2 Run cql statement SELECT [MSL] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied