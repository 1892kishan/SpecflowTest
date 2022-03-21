Feature: Edit Selected Columns Editable Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: Select a link column pointing to another link column as user with no permission to that table, has Edit Selected Columns Editable Row Filter permission to linked table and source column table
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT [Nested Link] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees2

# C<-B<-A, user has no permission to C
@Rest
Scenario: Select a multi select link column pointing to another link column as user with no permission to that table, has Edit Selected Columns Editable Row Filter permission to linked table and source column table
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT [MSL] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees2

# B<-A, user has no permission to B
@Rest
Scenario: Select a link column as a user with Edit Selected Columns Editable Row Filter entitlement without access to the table
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT [Location] FROM [Mock].[Job2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job2

# B<-A, user has no permission to B
@Rest
Scenario: Select a multi select link column as a user with Edit Selected Columns Editable Row Filter entitlement without access to the table
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT [Other Locations] FROM [Mock].[Job2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job2

# C<-B<-A, user has no permission to B
@Rest
Scenario: Select a link column that points to another link column as a user with Edit Selected Columns Editable Row Filter entitlement without access to the linked table
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT [Nested Link] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: Select a multi select link column that points to another link column as a user with Edit Selected Columns Editable Row Filter entitlement without access to the linked table
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT [MSL] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: Select a link column that points to another link column as a user with Edit Selected Columns Editable Row Filter entitlement without access to the source column table
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement SELECT [Nested Link] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: Select a multi select link column that points to another link column as a user with Edit Selected Columns Editable Row Filter entitlement without access to the source column table
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement SELECT [MSL] FROM [Mock].[Employees2]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: Select columns as a user with Edit Selected Columns Editable Row Filter entitlement without permission to the columns
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[Employees360] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: Select columns as a user with Edit Selected Columns Editable Row Filter entitlement using currentUsersGroups() without permission to the columns
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[Employees360] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: Select columns as a user with Edit Selected Columns Editable Row Filter entitlement using executeSavedQuery() without permission to the columns
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[Employees360] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: Select columns as a user with Edit Selected Columns Editable Row Filter entitlement based on link column without permission to the columns
	When As User Edit Selected Edit Row Filter Link column Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[Employees360] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: Select columns as a user with Edit Selected Columns Editable Row Filter entitlement based on nested link column without permission to the columns
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[Employees360] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: Select columns as a user with Edit Selected Columns Editable Row Filter entitlement based on simple column without permission to the columns
	When As User Edit Selected Edit Row Filter Simple column Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[Employees360] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: Select columns as a user with Edit Selected Columns Editable Row Filter entitlement based on subquery without permission to the columns
	When As User Edit Selected Edit Row Filter Subquery Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[Employees360] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: Select columns as a user with Edit Selected Columns Editable Row Filter entitlement based on unrelated subquery without permission to the columns
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[Employees360] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied