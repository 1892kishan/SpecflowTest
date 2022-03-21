Feature: View All Columns Viewable Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: VH - Select a link column pointing to another link column as user with no permission to that table, has View All Columns Editable Row Filter permission to linked table and source column table
	When  As User ViewAll View RF currentUserId Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: VH - Select a multi select link column pointing to another link column as user with no permission to that table, has View All Columns Viewable Row Filter permission to linked table and source column table
	When  As User ViewAll View RF currentUserId Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: VH - Select a link column as a user with View All Columns Viewable Row Filter entitlement without access to the table
	When  As User ViewAll View RF currentUsersGroups Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Location] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: VH - Select a multi select link column as a user with View All Columns Viewable Row Filter entitlement without access to the table
	When  As User ViewAll View RF currentUsersGroups Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Other Locations] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: VH - Select a link column that points to another link column as a user with View All Columns Viewable Row Filter entitlement without access to the linked table
	When  As User ViewAll View RF currentUsersGroups Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: VH - Select a multi select link column that points to another link column as a user with View All Columns Viewable Row Filter entitlement without access to the linked table
	When  As User ViewAll View RF currentUsersGroups Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: VH - Select a link column that points to another link column as a user with View All Columns Viewable Row Filter entitlement without access to the source column table
	When  As User ViewAll View RF Link column Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: VH - Select a multi select link column that points to another link column as a user with View All Columns Viewable Row Filter entitlement without access to the source column table
	When  As User ViewAll View RF Link column Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: VH - Select columns pointing to another link column as user with View All Columns Viewable Row Filter entitlement with permission to that column via currentuserID()
	When  As User ViewAll View RF currentUserId Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Annual Base Compensation], [Emergency Contact Number], [Employee ID], [Employee Term], [Job], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [Start Date], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [User] !=currentUserID(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: VH - Select columns pointing to another link column as user with View All Columns Viewable Row Filter entitlement with permission to that column via currentUsersGroups()
	When  As User ViewAll View RF currentUsersGroups Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Annual Base Compensation], [Emergency Contact Number], [Employee ID], [Employee Term], [Job], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [Start Date], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Role] NOT IN (CurrentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: VH - Select columns pointing to another link column as user with View All Columns Viewable Row Filter entitlement with permission to that column via ExecuteSavedQuery()
	When  As User ViewAll View RF executesavedquery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Annual Base Compensation], [Emergency Contact Number], [Employee ID], [Employee Term], [Job], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [Start Date], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Name] != executeSavedQuery('Mock','UserRole1'); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: VH - Select columns pointing to another link column as user with View All Columns Viewable Row Filter entitlement with permission to that column filtered by link column
	When  As User ViewAll View RF Link column Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Annual Base Compensation], [Emergency Contact Number], [Employee ID], [Employee Term], [Job], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [Start Date], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN ('John','Annie','Mark'); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: VH - Select columns pointing to another link column as user with View All Columns Viewable Row Filter entitlement with permission to that column filtered by nested link column
	When  As User ViewAll View RF Nested Link column Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Birthday], [Compensation], [Employee ID], [Hobbies], [Home Address], [Home Phone], [Hourly Base Compensation], [IsEmployee], [Job Arrangement], [Start Date], [User] FROM [Mock].[Employees3] WHERE [Deleted] IS NULL AND [Job].[Location].[City] ='Toronto'; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Birthday,Compensation,Employee ID,Hobbies,Home Address,Home Phone,Hourly Base Compensation,IsEmployee,Job Arrangement,Start Date,User

@Rest
Scenario: VH - Select columns pointing to another link column as user with View All Columns Viewable Row Filter entitlement with permission to that column filtered by simple column
	When  As User ViewAll View RF Simple column Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Annual Base Compensation], [Emergency Contact Number], [Employee ID], [Employee Term], [Job], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [Start Date], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Name]!='John' AND [Employee Term] !='Full Time'; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: VH - Select columns pointing to another link column as user with View All Columns Viewable Row Filter entitlement with permission to that column filtered by subquery
	When  As User ViewAll View RF Subquery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Annual Base Compensation], [Emergency Contact Number], [Employee ID], [Employee Term], [Job], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [Start Date], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN (Select [Name] from [Mock].[Person1] where [Name] IN ('John','Mark')); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: VH - Select columns pointing to another link column as user with View All Columns Viewable Row Filter entitlement with permission to that column filtered by unrelated subquery
	When  As User ViewAll View RF Unrelated Subquery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Annual Base Compensation], [Emergency Contact Number], [Employee ID], [Employee Term], [Job], [Manager], [MSC], [MSH], [MSL], [Name], [Person], [Role], [Salaried], [Start Date], [User] FROM [Mock].[EmployeeChangeApproval2] WHERE [Deleted] IS NULL AND [Person] NOT IN (Select [Name] from [Mock].[Dummy123] where [Name] IN( 'John','Annie')); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Record Type,Approval State,Version,Draft version,Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: VH - Select columns as user with View All Columns Viewable Row Filter entitlement without access to a particular version
	When  As User ViewAll View RF currentUsersGroups Run cql from file SelectColumns3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with View All Columns Viewable Row Filter entitlement based on link column without access to a particular draft version
	When  As User ViewAll View RF Link Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with view all columns with viewable row filter based on unrelated Subquery without access to a particular draft version
	When  As User ViewAll View RF Unrelated SubQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with view all columns with viewable row filter based on Subquery without access to a particular draft version
	When  As User ViewAll View RF SubQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with view all columns with viewable row filter without access to a particular draft version
	When  As User ViewAll View RF CurrentUserId Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 2     |
		| draftversion1 | 4     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 32    |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with view all columns with viewable row filter based on executeSavedQuery without access to a particular draft version
	When  As User ViewAll View RF ExecuteSavedQuery Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 2     |
		| draftversion1 | 3     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 34    |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with view all columns with viewable row filter based on currentUsersGroups without access to a particular draft version
	When  As User ViewAll View RF CurrentUsersGroups Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 2     |
		| draftversion1 |       |
		| draftversion2 | 1     |
		| draftversion3 |       |
		| cinchyid      | 2     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with view all columns with viewable row filter based on simple column without access to a particular draft version
	When  As User ViewAll View RF Simple Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 8     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version

@Rest
Scenario: VH - Select columns as user with view all columns with viewable row filter based on nested link column without access to a particular draft version
	When  As User ViewAll View RF Nested Link Column Run cql from file SelectColumns2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name          | Value |
		| version       | 4     |
		| draftversion1 | 6     |
		| draftversion2 |       |
		| draftversion3 |       |
		| cinchyid      | 1     |
	Then Validate expected string to be Cinchy Record Type,Approval State,Cinchy Id,Version,Draft Version