Feature: ViewSelected EditSelected View Edit Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: VH - Select a link column pointing to another link column as user with no permission to that table, has View Selected Edit Selected Columns with Viewable and Editable Row Filter permission to linked table and source column table
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: VH - Select a multi select link column pointing to another link column as user with no permission to that table, has View Selected Edit Selected Columns with Viewable and Editable Row Filter permission to linked table and source column table
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: VH - Select a link column as a user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement without access to the table
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Location] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: VH - Select a multi select link column as a user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement without access to the table
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Other Locations] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: VH - Select a link column that points to another link column as a user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement without access to the linked table
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: VH - Select a multi select link column that points to another link column as a user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement without access to the linked table
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: VH - Select a link column that points to another link column as a user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement without access to the source column table
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: VH - Select a multi select link column that points to another link column as a user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement without access to the source column table
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: VH - Select columns pointing to another link column as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with permission to that column via currentuserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [User] !=currentUserID() AND [User].[Cinchy Id] != 148; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: VH - Select columns as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with permission to that column via currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role],[User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Role] NOT IN (CurrentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: VH - Select columns as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with permission to that column via ExecuteSavedQuery()
	When As User ViewSelected EditSelected View Edit RF executesavedquery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Name] != executeSavedQuery('Mock','UserRole1'); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,User

@Rest
Scenario: VH - Select columns as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with permission to that column filtered by link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN ('John','Annie','Mark'); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,User

@Rest
Scenario: VH - Select columns as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with permission to that column filtered by nested link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Birthday], [Employee ID], [Hobbies], [Home Address], [Home Phone], [IsEmployee], [Job Arrangement], [Start Date], [User] FROM [Mock].[Employees3] WHERE [Deleted] IS NULL AND [Job].[Location].[City] ='Toronto'; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Birthday,Employee ID,Hobbies,Home Address,Home Phone,IsEmployee,Job Arrangement,Start Date,User

@Rest
Scenario: VH - Select columns pointing to another link column as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with permission to that column filtered by simple column
	When As User ViewSelected EditSelected View Edit RF Simple column Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Name]!='John' AND [Employee Term] !='Full Time'; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,User

@Rest
Scenario: VH - Select columns as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with permission to that column filtered by subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN (Select [Name] from [Mock].[Person1] where [Name] IN ('John','Mark')); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,User

@Rest
Scenario: VH - Select columns as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with permission to that column filtered by unrelated subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Employee Term], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN (Select [Name] from [Mock].[Dummy123] where [Name] IN( 'John','Annie')); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Employee Term,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,User

@Rest
Scenario: VH - Select columns as user with View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement with no permission to that column
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement SELECT [Salaried] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Role] NOT IN (CurrentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: VH - Select columns as user with Edit All, View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement without access to a particular version
	When  As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectColumns3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with Edit All, View Selected Edit Selected Columns with Viewable and Editable Row Filter entitlement based on link column without access to a particular draft version
	When  As User ViewSelected EditSelected View Edit RF Link Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns with editable row filter and view selected columns with viewable row filter based on unrelated Subquery without access to a particular draft version
	When  As User ViewSelected EditSelected View Edit RF Unrelated SubQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery without access to a particular draft version
	When  As User ViewSelected EditSelected View Edit RF SubQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId without access to a particular draft version
	When  As User ViewSelected EditSelected View Edit RF CurrentUserId Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 2     |
		| draftversion1 | 2     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 26    |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery without access to a particular draft version
	When  As User ViewSelected EditSelected View Edit RF ExecuteSavedQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 2     |
		| draftversion1 | 5     |
		| draftversion2 | 5     |
		| draftversion3 | 5     |
		| cinchyid      | 31    |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups without access to a particular draft version
	When  As User ViewSelected EditSelected View Edit RF CurrentUsersGroups Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 2     |
		| draftversion1 |       |
		| draftversion2 | 1     |
		| draftversion3 |       |
		| cinchyid      | 2     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns with editable row filter and view selected columns with viewable row filter based on simple column without access to a particular draft version
	When  As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 8     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with edit selected columns with editable row filter and view selected columns with viewable row filter based on nested link column without access to a particular draft version
	When  As User ViewSelected EditSelected View Edit RF Nested Link Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 6     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version