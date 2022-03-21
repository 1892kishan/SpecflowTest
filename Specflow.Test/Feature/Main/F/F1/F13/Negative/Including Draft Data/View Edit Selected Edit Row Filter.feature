Feature: View Edit Selected Edit Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: DD - Select a link column pointing to another link column as user with with no permission to that table, has View Selected Edit Selected Columns with Editable Row Filter permission to linked table and source column table
	When  As User View Edit Selected Edit Row Filter Link column Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: DD - Select a multi select link column pointing to another link column as user with no permission to that table, has View Selected Edit Selected Columns with Editable Row Filter permission to linked table and source column table
	When  As User View Edit Selected Edit Row Filter Link column Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: DD - Select a link column as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement without access to the table
	When  As User View Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT [Location] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: DD - Select a multi select link column as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement without access to the table
	When  As User View Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT [Other Locations] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: DD - Select a link column that points to another link column as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement without access to the linked table
	When  As User View Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: DD - Select a multi select link column that points to another link column as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement without access to the linked table
	When  As User View Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DD - Select a link column that points to another link column as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement without access to the source column table
	When  As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DD - Select a multi select link column that points to another link column as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement without access to the source column table
	When  As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement without permission to the columns
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement using currentUsersGroups() without permission to the columns
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement using executeSavedQuery() without permission to the columns
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement based on link column without permission to the columns
	When As User View Edit Selected Edit Row Filter Link column Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement based on nested link column without permission to the columns
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement based on simple column without permission to the columns
	When As User View Edit Selected Edit Row Filter Simple column Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement based on subquery without permission to the columns
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DD - Select columns as a user with View Selected Edit Selected Columns with Editable Row Filter entitlement based on unrelated subquery without permission to the columns
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement SELECT [Annual Base Compensation], [Emergency Contact Number], [Employee ID],[Job],[Salaried], [Start Date] FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied