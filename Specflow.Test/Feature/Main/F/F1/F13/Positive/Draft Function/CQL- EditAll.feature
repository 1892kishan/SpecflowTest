Feature: CQL EditAll

@Rest
Scenario: DF - SELECT where currentUserId() as a user with edit all columns
	When As User EditAll Run cql statement SELECT DRAFT([Employee ID]) as Result from [Mock].[EmployeeChangeApproval2] where [User] = 117 with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result18

@Rest
Scenario: DF - SELECT where currentUsersGroups() as a user with edit all columns
	When As User EditAll Run cql statement SELECT DRAFT([Name]) FROM [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieAnnieMangoPapayaPapayaFruit2 

@Rest
Scenario: DF - SELECT subquery currentUsersGroups() as a user with edit all columns
	When As User EditAll Run cql statement select TOP 20 DRAFT([Employee ID]), (Select TOP 1 [Name] FROM [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()) ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee ID,Result,SelectMark 72,SelectApple 73,SelectPear1 84,SelectPeach 85,SelectJack Fruit1 86,SelectApricots 100,SelectNectarine1 101,SelectGrape1 102,SelectMango2 108,Select,SelectPomegranate 110,SelectCarambola1 116,Select,SelectBanana2 118,SelectRaspberry 124,Select,Select,SelectPapaya1 132,SelectPineapple 134,Select

@Rest
Scenario: DF - Select scalar UDF() as a user with edit all columns
	When As User EditAll Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJo

@Rest
Scenario: DF - Select where scalar UDF() as a user with edit all columns
	When As User EditAll Run cql statement SELECT[Cinchy Id], DRAFT([Person]), DRAFT([Name]) FROM [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'Annie' ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Id,Person,Name2,,3,Apricots,Annie4,Mark,Annie5,Mark,Annie6,Banana2,Annie

@Rest
Scenario: DF - Select executeSavedQuery() as a user with edit all columns
	When As User EditAll Run cql statement Select [Employee ID] = executeSavedQuery('Mock','DraftFunction1') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee IDCarambola1 116

@Rest
Scenario: DF - Select where executeSavedQuery() as a user with edit all columns
	When As User EditAll Run cql statement SELECT TOP 5 DRAFT([Employee ID]) FROM [Mock].[EmployeeChangeApproval1] where [Employee ID] != executeSavedQuery('Mock','DraftFunction1'); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee IDFruit11Draft 36Mark 72Banana1 92Jack Fruit1 86Mango2 108
