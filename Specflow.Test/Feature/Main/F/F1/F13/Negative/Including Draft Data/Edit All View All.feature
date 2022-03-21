Feature: Edit All View All

## C<-B<-A, user has no permission to C
@Rest
Scenario: DD - Select a link column pointing to another link column as user with Edit All and View All columns entitlement with no permission to that table, has Edit All and View All columns permission to linked table and source column table
	When  As User User with All Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: DD - Select a multi select link column pointing to another link column as user with Edit All and View All columns entitlement with no permission to that table, has Edit All and View All columns permission to linked table and source column table
	When  As User User with All Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: DD - Select a link column as a user with Edit All and View All columns entitlement without access to the table
	When  As User User with All1 Run cql statement SELECT [Location] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: DD - Select a multi select link column as a user with Edit All and View All columns entitlement without access to the table
	When  As User User with All1 Run cql statement SELECT [Other Locations] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: DD - Select a link column that points to another link column as a user with Edit All and View All columns entitlement without access to the linked table
	When  As User User with All1 Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: DD - Select a multi select link column that points to another link column as a user with Edit All and View All columns entitlement without access to the linked table
	When  As User User with All1 Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DD - Select a link column that points to another link column as a user with Edit All and View All columns entitlement without access to the source column table
	When  As User User with All2 Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DD - Select a multi select link column that points to another link column as a user with Edit All and View All columns entitlement without access to the source column table
	When  As User User with All2 Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied