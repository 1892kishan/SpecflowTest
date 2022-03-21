Feature: View All Edit Selected View Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: DD - Select a link column pointing to another link column as user with  Editable Row Filter no permission to that table, has View All Edit Selected Columns with View Row Filter permission to linked table and source column table
	When  As User View All Edit Selected View Row Filter currentUserId Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: DD - Select a multi select link column pointing to another link column as user with  Editable Row Filter no permission to that table, has View All Edit Selected Columns with View Row Filter permission to linked table and source column table
	When  As User View All Edit Selected View Row Filter currentUserId Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: DD - Select a link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the table
	When  As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [Location] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: DD - Select a multi select link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the table
	When  As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [Other Locations] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: DD - Select a link column that points to another link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the linked table
	When  As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: DD - Select a multi select link column that points to another link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the linked table
	When  As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DD - Select a link column that points to another link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the source column table
	When  As User View All Edit Selected View Row Filter Nested Link column Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DD - Select a multi select link column that points to another link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the source column table
	When  As User View All Edit Selected View Row Filter Nested Link column Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied