Feature: CQL ViewAll View RF

@Rest
Scenario: VH - SELECT currentUserId() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result156

@Rest
Scenario: VH - SELECT where currentUserId() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultFruit3 156Fruit3 156Fruit3 156Fruit3 156Fruit3 156Fruit3 156

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: VH - Select scalar UDF() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFrFrFrFrFrFrFrFr

@Rest
Scenario: VH - Select where scalar UDF() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Person

@Rest
Scenario: VH - Select executeSavedQuery() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: VH - SELECT currentUserId() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result157

@Rest
Scenario: VH - SELECT where currentUserId() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultFruit4 157Fruit4 157Fruit4 157Fruit4 157Fruit4 157

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Name]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieAnnieAnnieAnnieAnnie1AppleAppleAppleAppleApricotApricotApricotApricotApricotApricotApricotBananaBananaBananaBananaBananaBanana1Banana2BlueberryBlueberryBlueberryBlueberryBlueberryBlueberry1Blueberry1Blueberry1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit3Fruit3Fruit3Fruit3Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit5Fruit7Fruit7Fruit7Fruit7Fruit7JackfruitJackfruitJackfruitKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiLemonLemonLemonLemonLemonLemonLemonLemonLemonLemonLemon1LimeMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarin1Mandarin1MangoMangoMangoMangoMango1MarkMarkMarkMarkMarkNectarineNectarineNectarineNectarineNectarineNectarine1Nectarine1OrangeOrangeOrangeOrangeOrangeOrangeOrange1PapayaPapaya1PineapplePineapplePlumPlumPlumPlumPlumPlumPlum1Plum1RaspberryRaspberry

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: VH - Select scalar UDF() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFrFrFrFrFrFrFr

@Rest
Scenario: VH - Select where scalar UDF() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result158

@Rest
Scenario: VH - SELECT where currentUserId() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultFruit5 158Fruit5 158

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit5

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest
Scenario: VH - Select where scalar UDF() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Mandarin','Papaya','Orange','Apricot','Fruit1','Grapefruit','Kiwi','Grape','Mango1') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Person

@Rest
Scenario: VH - Select executeSavedQuery() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: VH - SELECT currentUserId() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result159

@Rest
Scenario: VH - SELECT where currentUserId() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy ID],[Version],[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieAnnieAnnieAnnieAnnie1MangoMangoMangoMangoMango1KiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 133; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTKiKiKiKiKiKiKiKiKiKiKiKi

@Rest
Scenario: VH - Select where scalar UDF() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result160

@Rest
Scenario: VH - SELECT where currentUserId() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result161

@Rest
Scenario: VH - SELECT where currentUserId() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - Select scalar UDF() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 10; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJoJoJoJo

@Rest
Scenario: VH - Select where scalar UDF() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Annie','John','Mark') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohnJohnJohnJohn

@Rest
Scenario: VH - Select executeSavedQuery() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: VH - SELECT currentUserId() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result162

@Rest
Scenario: VH - SELECT where currentUserId() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Name]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBananaBananaBananaBananaBananaBanana1Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2KiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiLemonLemonLemonLemonLemonLemonLemonLemonLemonLemonLemon1MangoMangoMangoMangoMango1

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 150; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFrFrFrFrFrFrFrFrFr

@Rest
Scenario: VH - Select where scalar UDF() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'John' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohnJohnJohnJohnJohnJohnJohnJohnJohn

@Rest
Scenario: VH - Select executeSavedQuery() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result163

@Rest
Scenario: VH - SELECT where currentUserId() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Name]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieAnnieAnnieAnnieAnnie1Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2KiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiMangoMangoMangoMangoMango1

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 148; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTGrGrGrGrGrGrGrGrGrGrGrGr

@Rest
Scenario: VH - Select where scalar UDF() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2