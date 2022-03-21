Feature: CQL Admin

@Rest
Scenario: AD - SELECT currentUserId() as a user Admin
	When As User Admin Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result1

@Rest
Scenario: AD - SELECT where currentUserId() as a user Admin
	When As User Admin Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval2] where [User]=1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT where currentUsersGroups() as a user Admin
	When As User Admin Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] NOT IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohnAnnieMarkAppleBananaOrangeMangoPearPeachJack FruitApricotsNectarineGrapeMango2BlueberryPomegranateCarambolaPlumBanana2RaspberryMandarinJackfruitPapayaKiwiPineappleLimeLemonApricotGrapefruitFruit1Fruit2Fruit3Fruit4Fruit5Fruit6Fruit7Fruit8Fruit9DummyValue

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() as a user Admin
	When As User Admin Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] NOT IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultCinchy Administrators

@Rest
Scenario: AD - Select scalar UDF() as a user Admin
	When As User Admin Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] =1; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest
Scenario: AD - Select where scalar UDF() as a user Admin
	When As User Admin Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: AD - Select executeSavedQuery() as a user Admin
	When As User Admin Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() as a user Admin
	When As User Admin Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2