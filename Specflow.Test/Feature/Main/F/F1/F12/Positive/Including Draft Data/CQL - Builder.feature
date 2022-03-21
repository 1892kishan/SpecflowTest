Feature: CQL Builder

@Rest
Scenario: DD - SELECT currentUserId() as a user Builder
	When As User Builder Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result49

@Rest
Scenario: DD - SELECT where currentUserId() as a user Builder
	When As User Builder Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User] != 49 ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultJohn 10Annie 51Mark 72Apple 73Banana 92Orange 93Mango 94Pear 84Peach 85Jack Fruit 86Apricots 100Nectarine 101Grape 102Mango2 108Blueberry1 109Pomegranate 110Carambola 116Plum1 117Banana2 118Raspberry 124Mandarin1 125Jackfruit 126Papaya 132Kiwi 133Pineapple 134Lime 140Lemon 141Apricot 142Grapefruit 148Fruit1 149Fruit2 150Fruit3 156Fruit4 157Fruit5 158Fruit6 164Fruit7 165Fruit8 166Fruit9 69DummyValue 0Fruit10 87Fruit11 36Fruit11 3

@Rest
Scenario: DD - SELECT where currentUsersGroups() as a user Builder
	When As User Builder Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()) ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohnAnnieMarkAppleBananaOrangeMangoPearPeachJack FruitApricotsNectarineGrapeMango2Blueberry1PomegranateCarambolaPlum1Banana2RaspberryMandarin1JackfruitPapayaKiwiPineappleLimeLemonApricotGrapefruitFruit1Fruit2Fruit3Fruit4Fruit5Fruit6Fruit7Fruit8Fruit9DummyValueFruit10Fruit11Fruit11

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() as a user Builder
	When As User Builder Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultAll Users

@Rest
Scenario: DD - Select scalar UDF() as a user Builder
	When As User Builder Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] != 49 ORDER BY [Name]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTAnApApApBaBaBlCaDuFrFrFrFrFrFrFrFrFrFrFrFrGrGrJaJaJoKiLeLiMaMaMaMaNeOrPaPePePiPlPoRa

@Rest
Scenario: DD - Select where scalar UDF() as a user Builder
	When As User Builder Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() as a user Builder
	When As User Builder Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() as a user Builder
	When As User Builder Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2