Feature: View All Edit Selected View Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: VH - Select a link column pointing to another link column as user with  Editable Row Filter no permission to that table, has View All Edit Selected Columns with View Row Filter permission to linked table and source column table
	When  As User View All Edit Selected View Row Filter currentUserId Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: VH - Select a multi select link column pointing to another link column as user with  Editable Row Filter no permission to that table, has View All Edit Selected Columns with View Row Filter permission to linked table and source column table
	When  As User View All Edit Selected View Row Filter currentUserId Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: VH - Select a link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the table
	When  As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Location] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: VH - Select a multi select link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the table
	When  As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Other Locations] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: VH - Select a link column that points to another link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the linked table
	When  As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: VH - Select a multi select link column that points to another link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the linked table
	When  As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: VH - Select a link column that points to another link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the source column table
	When  As User View All Edit Selected View Row Filter Nested Link column Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: VH - Select a multi select link column that points to another link column as a user with View All Edit Selected Columns with View Row Filter entitlement without access to the source column table
	When  As User View All Edit Selected View Row Filter Nested Link column Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: VH - Select columns as user with Edit All, View All Edit Selected Columns with View Row Filter entitlement without access to a particular version
	When  As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectColumns3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with Edit All, View All Edit Selected Columns with View Row Filter entitlement based on link column without access to a particular draft version
	When  As User View All Edit Selected View Row Filter Link Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns and view all columns with viewable row filter based on unrelated Subquery without access to a particular draft version
	When  As User View All Edit Selected View Row Filter Unrelated SubQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns and view all columns with viewable row filter based on Subquery without access to a particular draft version
	When  As User View All Edit Selected View Row Filter SubQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns and view all columns with viewable row filter based on currentUserId without access to a particular draft version
	When  As User View All Edit Selected View Row Filter CurrentUserId Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 2     |
		| draftversion1 | 2     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 26    |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns and view all columns with viewable row filter based on executeSavedQuery without access to a particular draft version
	When  As User View All Edit Selected View Row Filter ExecuteSavedQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 1     |
		| draftversion1 | 1     |
		| draftversion2 | 2     |
		| draftversion3 | 3     |
		| cinchyid      | 28    |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns and view all columns with viewable row filter based on currentUsersGroups without access to a particular draft version
	When  As User View All Edit Selected View Row Filter CurrentUsersGroups Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 2     |
		| draftversion1 |       |
		| draftversion2 | 1     |
		| draftversion3 |       |
		| cinchyid      | 2     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns and view all columns with viewable row filter based on simple column without access to a particular draft version
	When  As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 8     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns and view all columns with viewable row filter without access to a particular draft version
	When  As User View All Edit Selected View Row Filter Nested Link Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 6     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version