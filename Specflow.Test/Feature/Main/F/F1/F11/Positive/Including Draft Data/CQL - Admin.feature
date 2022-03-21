Feature: CQL Admin

@Rest
Scenario: DD - SELECT currentUserId() as a user Admin
	When As User Admin Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result1

@Rest
Scenario: DD - SELECT where currentUserId() as a user Admin
	When As User Admin Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User] =10; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultJohn 10

@Rest
Scenario: DD - SELECT where currentUsersGroups() as a user Admin
	When As User Admin Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()) ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohnAnnieMarkAppleBananaOrangeMangoPearPeachJack FruitApricotsNectarineGrapeMango2Blueberry1PomegranateCarambolaPlum1Banana2RaspberryMandarin1JackfruitPapayaKiwiPineappleLimeLemonApricotGrapefruitFruit1Fruit2Fruit3Fruit4Fruit5Fruit6Fruit7Fruit8Fruit9DummyValueFruit10Fruit11Fruit11

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() as a user Admin
	When As User Admin Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultCinchy Administrators

@Rest
Scenario: DD - Select scalar UDF() as a user Admin
	When As User Admin Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] =1; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest
Scenario: DD - Select where scalar UDF() as a user Admin
	When As User Admin Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() as a user Admin
	When As User Admin Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() as a user Admin
	When As User Admin Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2