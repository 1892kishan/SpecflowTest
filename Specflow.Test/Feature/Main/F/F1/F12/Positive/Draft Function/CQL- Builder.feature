Feature: CQL Builder

@Rest
Scenario: DF - SELECT where currentUserId() as a user Builder
	When As User Builder Run cql statement SELECT DRAFT([Employee ID]) as Result from [Mock].[EmployeeChangeApproval2] where [User] = 117 with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result18

@Rest
Scenario: DF - SELECT where currentUsersGroups() as a user Builder
	When As User Builder Run cql statement SELECT DRAFT([Name]) FROM [Mock].[EmployeeChangeApproval2] where [Role] NOT IN (currentUsersGroups()) ORDER BY [Cinchy Id] ; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohnAnnieAnnieAnnieAnnieMangoPearPeachJack Fruit1ApricotsNectarineGrapeMango2BlueberryPomegranateCarambolaPlumBanana2RaspberryMandarinJackfruitPapayaPapayaPapayaPapayaPapayaPapayaGrapefruitFruit1Fruit2Fruit3Fruit4Fruit5Fruit6Fruit7Fruit8Fruit9DummyValue

@Rest
Scenario: DF - SELECT subquery currentUsersGroups() as a user Builder
	When As User Builder Run cql statement select TOP 20 DRAFT([Employee ID]), (Select TOP 1 [Name] FROM [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()) ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee ID,Result,All UsersAnnie1 51,All UsersMark 72,All UsersApple 73,All UsersBanana1 92,All UsersOrange1 93,All UsersMango1 94,All UsersPear1 84,All UsersPeach 85,All UsersJack Fruit1 86,All UsersApricots 100,All UsersNectarine1 101,All UsersGrape1 102,All UsersMango2 108,All Users,All UsersPomegranate 110,All UsersCarambola1 116,All Users,All UsersBanana2 118,All UsersRaspberry 124,All Users

@Rest
Scenario: DF - Select scalar UDF() as a user Builder
	When As User Builder Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = 117; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: DF - Select where scalar UDF() as a user Builder
	When As User Builder Run cql statement SELECT[Cinchy Id], DRAFT([Person]), DRAFT([Name]) FROM [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'Annie' ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Id,Person,Name2,,3,Apricots,Annie4,Mark,Annie5,Mark,Annie6,Banana2,Annie

@Rest
Scenario: DF - Select executeSavedQuery() as a user Builder
	When As User Builder Run cql statement Select [Employee ID] = executeSavedQuery('Mock','DraftFunction1') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee IDCarambola1 116

@Rest
Scenario: DF - Select where executeSavedQuery() as a user Builder
	When As User Builder Run cql statement SELECT TOP 5 DRAFT([Employee ID]) FROM [Mock].[EmployeeChangeApproval1] where [Employee ID] != executeSavedQuery('Mock','DraftFunction1'); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Employee IDFruit11Draft 36Mark 72Banana1 92Jack Fruit1 86Mango2 108
