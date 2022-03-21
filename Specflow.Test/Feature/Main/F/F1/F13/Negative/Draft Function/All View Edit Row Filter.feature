Feature: All View Edit Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: DF - Select link column as user with no permission to that table, has Edit All, View All Columns Editable and Viewable Row Filter entitlement to linked table and source column table
	When  As User All View Edit Row Filter currentUserId Run cql statement SELECT DRAFT([Nested Link]) FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: DF - Select multi select link column as user with no permission to that table, has Edit All, View All Columns Editable and Viewable Row Filter entitlement to linked table and source column table
	When  As User All View Edit Row Filter currentUserId Run cql statement SELECT DRAFT([MSL]) FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: DF - Select link column as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement without access to the table
	When  As User All View Edit Row Filter Simple Column Run cql statement SELECT DRAFT([Location]) FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: DF - Select multi select link column as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement without access to the table
	When  As User All View Edit Row Filter Simple Column Run cql statement SELECT DRAFT([Other Locations]) FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: DF - Select link column that points to another link column as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement without access to the linked table
	When  As User All View Edit Row Filter Simple Column Run cql statement SELECT DRAFT([Nested Link]) FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: DF - Select multi select link column that points to another link column as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement without access to the linked table
	When  As User All View Edit Row Filter Simple Column Run cql statement SELECT DRAFT([MSL]) FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DF - Select link column that points to another link column as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement without access to the source column table
	When  As User All View Edit Row Filter Link column Run cql statement SELECT DRAFT([Nested Link]) FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: DF - Select multi select link column that points to another link column as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement without access to the source column table
	When  As User All View Edit Row Filter Link column Run cql statement SELECT DRAFT([MSL]) FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with access only to rows via currentUserID()
	When  As User All View Edit Row Filter currentUserId Run cql statement SELECT DRAFT([Address]), DRAFT([Choice]), DRAFT([City]), DRAFT([Country]), DRAFT([Cached Calc]), DRAFT([Cached UDF]), DRAFT([Date]), DRAFT([Email]), DRAFT([MSH]), DRAFT([MSC]), DRAFT([Number]), DRAFT([Name]), DRAFT([Calc 1]), DRAFT([Live Calc]), DRAFT([Live UDF]), DRAFT([Phone]), DRAFT([Postal Code]), DRAFT([Province]), DRAFT([Text]), DRAFT([YesNo]), DRAFT([User]) FROM [Mock].[Person3] where [User].[Cinchy Id] != currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Address,Choice,City,Country,Cached Calc,Cached UDF,Date,Email,MSH,MSC,Number,Name,Calc 1,Live Calc,Live UDF,Phone,Postal Code,Province,Text,YesNo,User
	
@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with access only to rows filtered by simple column
	When  As User All View Edit Row Filter Simple Column Run cql statement SELECT DRAFT([Home Address]) as Result FROM [Mock].[Employees3] where [Home Address] NOT LIKE 'Address1%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DF - Select link column as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement filtered by link column without access to the linked table
	When  As User All View Edit Row Filter Link column Run cql statement SELECT DRAFT([Manager]) FROM [Mock].[Employees3] WHERE [Deleted] IS NULL; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with permission to that column via currentuserID()
	When  As User All View Edit Row Filter currentUserId Run cql statement SELECT DRAFT([Annual Base Compensation]), DRAFT([Emergency Contact Number]), DRAFT([Employee ID]), DRAFT([Employee Term]), DRAFT([Job]), DRAFT([Manager]), DRAFT([MSC]), DRAFT([MSH]), DRAFT([MSL]), DRAFT([Name]), DRAFT([Person]), DRAFT([Role]), DRAFT([Salaried]), DRAFT([Start Date]), DRAFT([User]) FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL AND [User] !=currentUserID(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with permission to that column via currentUsersGroups()
	When  As User All View Edit Row Filter currentUsersGroups Run cql statement SELECT DRAFT([Annual Base Compensation]), DRAFT([Emergency Contact Number]), DRAFT([Employee ID]), DRAFT([Employee Term]), DRAFT([Job]), DRAFT([Manager]), DRAFT([MSC]), DRAFT([MSH]), DRAFT([MSL]), DRAFT([Name]), DRAFT([Person]), DRAFT([Role]), DRAFT([Salaried]), DRAFT([Start Date]), DRAFT([User]) FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL AND [Role] NOT IN (CurrentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with permission to that column via ExecuteSavedQuery()
	When  As User All View Edit Row Filter executesavedquery Run cql statement SELECT DRAFT([Annual Base Compensation]), DRAFT([Emergency Contact Number]), DRAFT([Employee ID]), DRAFT([Employee Term]), DRAFT([Job]), DRAFT([Manager]), DRAFT([MSC]), DRAFT([MSH]), DRAFT([MSL]), DRAFT([Name]), DRAFT([Person]), DRAFT([Role]), DRAFT([Salaried]), DRAFT([Start Date]), DRAFT([User]) FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL AND [Name] != executeSavedQuery('Mock','UserRole1'); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with permission to that column filtered by link column
	When  As User All View Edit Row Filter Link column Run cql statement SELECT DRAFT([Annual Base Compensation]), DRAFT([Emergency Contact Number]), DRAFT([Employee ID]), DRAFT([Employee Term]), DRAFT([Job]), DRAFT([Manager]), DRAFT([MSC]), DRAFT([MSH]), DRAFT([MSL]), DRAFT([Name]), DRAFT([Person]), DRAFT([Role]), DRAFT([Salaried]), DRAFT([Start Date]), DRAFT([User]) FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL AND [Person] NOT IN ('John','Annie','Mark'); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with permission to that column filtered by nested link column
	When  As User All View Edit Row Filter Nested Link column Run cql statement SELECT DRAFT([Birthday]), DRAFT([Compensation]), DRAFT([Employee ID]), DRAFT([Hobbies]), DRAFT([Home Address]), DRAFT([Home Phone]), DRAFT([Hourly Base Compensation]), DRAFT([IsEmployee]), DRAFT([Job Arrangement]), DRAFT([Start Date]), DRAFT([User]) FROM [Mock].[Employees3] WHERE [Deleted] IS NULL AND [Job].[Location].[City] ='Toronto'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Birthday,Compensation,Employee ID,Hobbies,Home Address,Home Phone,Hourly Base Compensation,IsEmployee,Job Arrangement,Start Date,User

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with permission to that column filtered by simple column
	When  As User All View Edit Row Filter Simple column Run cql statement SELECT DRAFT([Annual Base Compensation]), DRAFT([Emergency Contact Number]), DRAFT([Employee ID]), DRAFT([Employee Term]), DRAFT([Job]), DRAFT([Manager]), DRAFT([MSC]), DRAFT([MSH]), DRAFT([MSL]), DRAFT([Name]), DRAFT([Person]), DRAFT([Role]), DRAFT([Salaried]), DRAFT([Start Date]), DRAFT([User]) FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL AND [Name]!='John' AND [Employee Term] !='Full Time'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with permission to that column filtered by subquery
	When  As User All View Edit Row Filter Subquery Run cql statement SELECT DRAFT([Annual Base Compensation]), DRAFT([Emergency Contact Number]), DRAFT([Employee ID]), DRAFT([Employee Term]), DRAFT([Job]), DRAFT([Manager]), DRAFT([MSC]), DRAFT([MSH]), DRAFT([MSL]), DRAFT([Name]), DRAFT([Person]), DRAFT([Role]), DRAFT([Salaried]), DRAFT([Start Date]), DRAFT([User]) FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL AND [Person] NOT IN (Select [Name] from [Mock].[Person1] where [Name] IN ('John','Mark')); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User

@Rest
Scenario: DF - Select columns as user with Edit All, View All Columns Editable and Viewable Row Filter entitlement with permission to that column filtered by unrelated subquery
	When  As User All View Edit Row Filter Unrelated Subquery Run cql statement SELECT DRAFT([Annual Base Compensation]), DRAFT([Emergency Contact Number]), DRAFT([Employee ID]), DRAFT([Employee Term]), DRAFT([Job]), DRAFT([Manager]), DRAFT([MSC]), DRAFT([MSH]), DRAFT([MSL]), DRAFT([Name]), DRAFT([Person]), DRAFT([Role]), DRAFT([Salaried]), DRAFT([Start Date]), DRAFT([User]) FROM [Mock].[EmployeeChangeApproval1] WHERE [Deleted] IS NULL AND [Person] NOT IN (Select [Name] from [Mock].[Dummy123] where [Name] IN( 'John','Annie')); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Annual Base Compensation,Emergency Contact Number,Employee ID,Employee Term,Job,Manager,MSC,MSH,MSL,Name,Person,Role,Salaried,Start Date,User
