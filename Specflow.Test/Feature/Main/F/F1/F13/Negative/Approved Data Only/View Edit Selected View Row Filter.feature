Feature: View Edit Selected View Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: AD - Select a link column pointing to another link column as user with with no permission to that table, has View Selected Edit Selected Columns with Viewable Row Filter entitlement to linked table and source column table
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: AD - Select a multi select link column pointing to another link column as user with with no permission to that table, has View Selected Edit Selected Columns with Viewable Row Filter entitlement to linked table and source column table
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: AD - Select a link column as a user with View Selected Edit Selected Columns with Viewable Row Filter entitlement without access to the table
	When As User ViewSelected EditSelected View RF Subquery Run cql statement SELECT [Location] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: AD - Select a multi select link column as a user with View Selected Edit Selected Columns with Viewable Row Filter entitlement without access to the table
	When As User ViewSelected EditSelected View RF Subquery Run cql statement SELECT [Other Locations] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: AD - Select a link column that points to another link column as a user with View Selected Edit Selected Columns with Viewable Row Filter entitlement without access to the linked table
	When As User ViewSelected EditSelected View RF Subquery Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: AD - Select a multi select link column that points to another link column as a user with View Selected Edit Selected Columns with Viewable Row Filter entitlement without access to the linked table
	When As User ViewSelected EditSelected View RF Subquery Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: AD - Select a link column that points to another link column as a user with View Selected Edit Selected Columns with Viewable Row Filter entitlement without access to the source column table
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: AD - Select a multi select link column that points to another link column as a user with View Selected Edit Selected Columns with Viewable Row Filter entitlement without access to the source column table
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: AD - Select columns pointing to another link column as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with permission to that column via currentuserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql statement SELECT [Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [User] !=currentUserID(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: AD - Select columns pointing to another link column as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with permission to that column via currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql statement SELECT [Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Role] NOT IN (CurrentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: AD - Select columns as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with permission to that column via ExecuteSavedQuery()
	When As User ViewSelected EditSelected View RF executesavedquery Run cql statement SELECT [Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Name] != executeSavedQuery('Mock','UserRole1'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: AD - Select columns as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with permission to that column filtered by link column
	When As User ViewSelected EditSelected View RF Link column Run cql statement SELECT [Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN ('John','Annie','Mark'); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: AD - Select columns as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with permission to that column filtered by nested link column
	When As User ViewSelected EditSelected View RF Nested Link column Run cql statement SELECT [Birthday], [Employee ID], [Hobbies], [Home Address], [Home Phone], [IsEmployee], [Job Arrangement], [Start Date], [User] FROM [Mock].[Employees3] WHERE [Deleted] IS NULL AND [Job].[Location].[City] ='Toronto'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Birthday,Employee ID,Hobbies,Home Address,Home Phone,IsEmployee,Job Arrangement,Start Date,User

@Rest
Scenario: AD - Select columns as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with permission to that column filtered by simple column
	When As User ViewSelected EditSelected View RF Simple column Run cql statement SELECT [Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Name]!='John' AND [Employee Term] !='Full Time'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: AD - Select columns as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with permission to that column filtered by subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql statement SELECT [Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN (Select [Name] from [Mock].[Person1] where [Name] IN ('John','Mark')); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: AD - Select columns as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with permission to that column filtered by unrelated subquery
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql statement SELECT [Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN (Select [Name] from [Mock].[Dummy123] where [Name] IN( 'John','Annie')); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: AD - Select columns as user with View Selected Edit Selected Columns with Viewable Row Filter entitlement with no permission to that column
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql statement SELECT [Salaried] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Role] NOT IN (CurrentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied