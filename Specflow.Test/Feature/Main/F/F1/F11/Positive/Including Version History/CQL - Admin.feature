Feature: CQL Admin

@Rest
Scenario: VH - SELECT currentUserId() as a user Admin
	When As User Admin Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result1

@Rest
Scenario: VH - SELECT where currentUserId() as a user Admin
	When As User Admin Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User] = 10; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultJohn 10John 10John1 10

@Rest
Scenario: VH - SELECT where currentUsersGroups() as a user Admin
	When As User Admin Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()) ORDER BY [Cinchy Id], [Version], [Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohnJohn1John1John1John1John1JohnJohnAnnieAnnieAnnieAnnieAnnie1MarkMarkMarkMarkMarkAppleAppleAppleAppleBananaBananaBananaBananaBananaBanana1OrangeOrangeOrangeOrangeOrangeOrangeOrange1MangoMangoMangoMangoMango1PearPearPearPearPearPearPearPearPearPearPearPearPear1PeachPeachPeachPeachPeachPeachPeachPeachPeachJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack Fruit1Jack Fruit1ApricotsApricotsApricotsApricotsApricotsApricotsApricotsNectarineNectarineNectarineNectarineNectarineNectarine1Nectarine1GrapeGrapeGrapeGrapeGrapeGrapeGrapeGrapeGrape1Mango2Mango2Mango2Mango2Mango2Mango2Mango2BlueberryBlueberryBlueberryBlueberryBlueberryBlueberry1Blueberry1Blueberry1PomegranatePomegranatePomegranatePomegranatePomegranatePomegranateCarambolaCarambolaCarambolaCarambolaCarambola1PlumPlumPlumPlumPlumPlumPlum1Plum1Banana2Banana2Banana2Banana2Banana2Banana2Banana2Banana2RaspberryRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarin1Mandarin1JackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapaya1KiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiPineapplePineapplePineapplePineapplePineapplePineapplePineapplePineapplePineapplePineappleLimeLimeLimeLimeLimeLimeLimeLimeLimeLemonLemonLemonLemonLemonLemonLemonLemonLemonLemonLemon1ApricotApricotApricotApricotApricotApricotApricotGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitFruit1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit5Fruit5Fruit5Fruit5Fruit5Fruit5Fruit5Fruit5Fruit5Fruit6Fruit6Fruit6Fruit6Fruit6Fruit6Fruit6Fruit7Fruit7Fruit7Fruit7Fruit7Fruit8Fruit8Fruit8Fruit8Fruit8Fruit8Fruit8Fruit9Fruit9Fruit9Fruit9Fruit9Fruit99DummyValueDummyValueDummyValueDummyValueDummyValueFruit10Fruit10Fruit10Fruit10Fruit11Fruit11Fruit11Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit11Fruit11Fruit11Fruit11DraftFruit9Fruit9MystryDataMysteryDataFruit11Fruit11Fruit11Fruit11Fruit11Fruit9Fruit99Fruit9999Fruit9999

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() as a user Admin
	When As User Admin Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultCinchy Administrators

@Rest
Scenario: VH - Select scalar UDF() as a user Admin
	When As User Admin Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 10; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJo

@Rest
Scenario: VH - Select where scalar UDF() as a user Admin
	When As User Admin Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() as a user Admin
	When As User Admin Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() as a user Admin
	When As User Admin Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2