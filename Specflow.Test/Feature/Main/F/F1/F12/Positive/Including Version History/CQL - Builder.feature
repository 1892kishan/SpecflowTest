Feature: CQL Builder

@Rest
Scenario: VH - SELECT currentUserId() as a user Builder
	When As User Builder Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result49

@Rest
Scenario: VH - SELECT where currentUserId() as a user Builder
	When As User Builder Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User] != 49; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultFruit11Draft 36Mark 72Banana1 92Jack Fruit1 86Mango2 108Grape1 102Pear1 84Orange1 93Fruit10 34Kiwi 133Banana2 118Raspberry 124DummyValue 0Papaya1 132Grapefruit 148Apricots 100Nectarine1 101Peach 85Annie1 51Fruit11 135Mango1 94Carambola1 116Lime 140Fruit1 149Fruit2 150Fruit3 156Fruit4 157Apple 73Apricot 142Lemon1 141Fruit10 174Fruit10 73MysteryData 84Fruit99 69Fruit7 165Fruit5 158Pomegranate 110Pineapple 134Fruit9999 84John 10Annie 51Mark 72Apple 73Banana 92Orange 93Mango 94Pear 84Peach 85Jack Fruit 86Apricots 100Nectarine 101Grape 102Mango2 108Blueberry1 109Pomegranate 110Carambola 116Plum1 117Banana2 118Raspberry 124Mandarin1 125Jackfruit 126Papaya 132Kiwi 133Pineapple 134Lime 140Lemon 141Apricot 142Grapefruit 148Fruit1 149Fruit2 150Fruit3 156Fruit4 157Fruit5 158Fruit6 164Fruit7 165Fruit8 166Fruit9 69DummyValue 0Fruit10 87Fruit11 36Fruit11 3Carambola 116Plum 117Banana2 118Mandarin 125Jackfruit 126Papaya 132Kiwi 133Lime 140Grapefruit 148Fruit1 149Fruit2 150Mandarin 125Jackfruit 126Papaya 132Kiwi 133Lime 140Lemon 141Mango 94Pear 84Peach 85Jack Fruit1 86Apricots 100Grape 102Mango2 108Blueberry 109Raspberry 124Jackfruit 126Papaya 132Pineapple 134Lemon 141Grapefruit 148Fruit3 156Fruit4 157Lime 140Lemon 141Fruit1 149Fruit2 150Kiwi 133Kiwi 133Grapefruit 148Grapefruit 148Grapefruit 148Grapefruit 148John 10John1 10Fruit11 3Fruit11 3Fruit11 3Fruit9 84Fruit99 84Fruit9999 84Banana2 118Mandarin 125Jackfruit 126Kiwi 133Banana2 118Raspberry 124Jackfruit 126Papaya 132Kiwi 133Pineapple 134Lime 140Raspberry 124Mandarin 125Jackfruit 126Banana 92Orange 93Pear 84Grapefruit 148Fruit1 149Fruit2 150Fruit3 156Fruit4 157Fruit1 149Fruit2 150Fruit3 156Fruit3 156Fruit4 157Mango2 108Blueberry 109Banana 92Orange 93Mango 94Pear 84Annie 51Blueberry 109Mandarin 125Papaya 132Lemon 141Carambola 116Nectarine 101Nectarine1 101Grape 102Grape 102Blueberry1 109Blueberry1 109Blueberry 109Plum 117Plum 117Plum1 117Plum 117Fruit9 84Pineapple 134Pineapple 134Mandarin1 125Jackfruit 126Jackfruit 126Mandarin 125Grapefruit 148Fruit9 69Fruit9 69MystryData 84

@Rest
Scenario: VH - SELECT where currentUsersGroups() as a user Builder
	When As User Builder Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()) ORDER BY [Cinchy Id], [Version], [Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohnJohn1John1John1John1John1JohnJohnAnnieAnnieAnnieAnnieAnnie1MarkMarkMarkMarkMarkAppleAppleAppleAppleBananaBananaBananaBananaBananaBanana1OrangeOrangeOrangeOrangeOrangeOrangeOrange1MangoMangoMangoMangoMango1PearPearPearPearPearPearPearPearPearPearPearPearPear1PeachPeachPeachPeachPeachPeachPeachPeachPeachJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack Fruit1Jack Fruit1ApricotsApricotsApricotsApricotsApricotsApricotsApricotsNectarineNectarineNectarineNectarineNectarineNectarine1Nectarine1GrapeGrapeGrapeGrapeGrapeGrapeGrapeGrapeGrape1Mango2Mango2Mango2Mango2Mango2Mango2Mango2BlueberryBlueberryBlueberryBlueberryBlueberryBlueberry1Blueberry1Blueberry1PomegranatePomegranatePomegranatePomegranatePomegranatePomegranateCarambolaCarambolaCarambolaCarambolaCarambola1PlumPlumPlumPlumPlumPlumPlum1Plum1Banana2Banana2Banana2Banana2Banana2Banana2Banana2Banana2RaspberryRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarin1Mandarin1JackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitJackfruitPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapaya1KiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiPineapplePineapplePineapplePineapplePineapplePineapplePineapplePineapplePineapplePineappleLimeLimeLimeLimeLimeLimeLimeLimeLimeLemonLemonLemonLemonLemonLemonLemonLemonLemonLemonLemon1ApricotApricotApricotApricotApricotApricotApricotGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitFruit1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit5Fruit5Fruit5Fruit5Fruit5Fruit5Fruit5Fruit5Fruit5Fruit6Fruit6Fruit6Fruit6Fruit6Fruit6Fruit6Fruit7Fruit7Fruit7Fruit7Fruit7Fruit8Fruit8Fruit8Fruit8Fruit8Fruit8Fruit8Fruit9Fruit9Fruit9Fruit9Fruit9Fruit99DummyValueDummyValueDummyValueDummyValueDummyValueFruit10Fruit10Fruit10Fruit10Fruit11Fruit11Fruit11Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit11Fruit11Fruit11Fruit11DraftFruit9Fruit9MystryDataMysteryDataFruit11Fruit11Fruit11Fruit11Fruit11Fruit9Fruit99Fruit9999Fruit9999

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() as a user Builder
	When As User Builder Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] NOT IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultAll Users

@Rest
Scenario: VH - Select scalar UDF() as a user Builder
	When As User Builder Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 10; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJo

#DEF00829
@Rest
Scenario: VH - Select where scalar UDF() as a user Builder
	When As User Builder Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' ORDER BY [Person]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() as a user Builder
	When As User Builder Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() as a user Builder
	When As User Builder Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2