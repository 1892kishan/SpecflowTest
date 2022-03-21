Feature: CQL All Edit Row Filter

@Rest
Scenario: VH - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result84

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultPear1 84MysteryData 84Fruit9999 84Pear 84Pear 84Fruit9 84Fruit99 84Fruit9999 84Pear 84Pear 84Fruit9 84MystryData 84

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY NAME DESC; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryPear1PearPearPearPearPearPearPearPearPearPearPearPearPeachPeachPeachPeachPeachPeachPeachPeachPeachPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaOrange1OrangeOrangeOrangeOrangeOrangeOrangeMango2Mango2Mango2Mango2Mango2Mango2Mango2Mango1MangoMangoMangoMangoLimeLimeLimeLimeLimeLimeLimeLimeLemon1LemonLemonLemonLemonLemonLemonLemonLemonLemonLemonKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiJack Fruit1Jack Fruit1Jack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitFruit6Fruit6Fruit6Fruit6Fruit6Fruit6Fruit6Fruit5Fruit4Fruit4Fruit4Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit11DraftFruit11Fruit11Fruit11Fruit11Fruit11Fruit11Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Carambola1CarambolaCarambolaCarambolaCarambolaBanana1BananaBananaBananaBananaBananaApricotsApricotsApricotsApricotsApricotsApricotsApricotsAnnie1AnnieAnnieAnnieAnnie

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: VH - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select DISTINCT [Cinchy Id],[Version],[Draft Version],UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId() ORDER BY [Cinchy Id],[Version],[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Cinchy Id,Version,Draft Version,FN_RESULT47,1,0,Pe47,2,0,Pe47,2,1,Pe47,2,2,Pe47,2,3,Pe47,2,4,Pe47,2,5,Pe47,2,6,Pe47,2,7,Pe47,2,8,Pe47,2,9,Pe47,2,10,Pe47,2,11,Pe47,2,12,Pe85,0,2,Fr85,0,2,My85,0,3,Fr85,0,3,My85,0,4,Fr85,0,4,My87,0,1,Fr87,0,2,Fr87,0,3,Fr87,0,4,Fr

@Rest
Scenario: VH - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result85

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultPeach 85Peach 85Peach 85

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY NAME DESC; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameRaspberryRaspberryPlum1Plum1PlumPlumPlumPlumPlumPlumPineapplePineapplePapaya1PapayaOrange1OrangeOrangeOrangeOrangeOrangeOrangeNectarine1Nectarine1NectarineNectarineNectarineNectarineNectarineMarkMarkMarkMarkMarkMango1MangoMangoMangoMangoMandarin1Mandarin1MandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinLimeLemon1LemonLemonLemonLemonLemonLemonLemonLemonLemonLemonKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiJackfruitJackfruitJackfruitFruit7Fruit7Fruit7Fruit7Fruit7Fruit5Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit3Fruit3Fruit3Fruit3Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit1Blueberry1Blueberry1Blueberry1BlueberryBlueberryBlueberryBlueberryBlueberryBanana2Banana1BananaBananaBananaBananaBananaApricotApricotApricotApricotApricotApricotApricotAppleAppleAppleAppleAnnie1AnnieAnnieAnnieAnnie

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: VH - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPePePePePePePePePePe

@Rest
Scenario: VH - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result86

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultJack Fruit1 86Jack Fruit 86Jack Fruit1 86

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result87

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultFruit10 87

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result88

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon


@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result89

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result90

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result91

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2