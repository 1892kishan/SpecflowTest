Feature: CQL Edit Selected View All Edit Row Filter

@Rest
Scenario: UE - SELECT currentUserId() with user with edit selected columns with editable row filter and view all columns based on currentUserId
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result116

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit selected columns with editable row filter and view all columns based on currentUserId
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result19

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on currentUserId
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaPearPeachJack FruitApricotsMango2CarambolaRaspberryPapayaKiwiLimeLemonGrapefruitFruit2Fruit3OrangeMangoFruit6

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on currentUserId
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: UE - Select scalar UDF() with user with edit selected columns with editable row filter and view all columns based on currentUserId
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTCa

@Rest
Scenario: UE - Select where scalar UDF() with user with edit selected columns with editable row filter and view all columns based on currentUserId
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on currentUserId
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on currentUserId
	When As User Edit Selected View All Edit Row Filter currentUserId Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit selected columns with editable row filter and view all columns based on currentUsersGroups
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result117

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit selected columns with editable row filter and view all columns based on currentUsersGroups
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result20

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on currentUsersGroups
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieMarkAppleBananaNectarineBlueberryPlumMandarinKiwiLemonApricotFruit1Fruit2Fruit4OrangeMangoFruit7

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on currentUsersGroups
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: UE - Select scalar UDF() with user with edit selected columns with editable row filter and view all columns based on currentUsersGroups
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit selected columns with editable row filter and view all columns based on currentUsersGroups
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on currentUsersGroups
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on currentUsersGroups
	When As User Edit Selected View All Edit Row Filter currentUsersGroups Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit selected columns with editable row filter and view all columns based on executeSavedQuery
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result118

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit selected columns with editable row filter and view all columns based on executeSavedQuery
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result21

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on executeSavedQuery
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on executeSavedQuery
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit selected columns with editable row filter and view all columns based on executeSavedQuery
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit selected columns with editable row filter and view all columns based on executeSavedQuery
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) IN ('Mandarin','Papaya','Orange','Apricot','Fruit1','Grapefruit','Kiwi','Grape','Mango') ORDER By [Cinchy Id]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAppleJohnJohnAppleAppleJohnAppleJohnApple

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on executeSavedQuery
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on executeSavedQuery
	When As User Edit Selected View All Edit Row Filter executeSavedQuery Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit selected columns with editable row filter and view all columns based on Link column
	When As User Edit Selected View All Edit Row Filter Link column Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result119

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit selected columns with editable row filter and view all columns based on Link column
	When As User Edit Selected View All Edit Row Filter Link column Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Link column
	When As User Edit Selected View All Edit Row Filter Link column Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Link column
	When As User Edit Selected View All Edit Row Filter Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Link column
	When As User Edit Selected View All Edit Row Filter Link column Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 133; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTKi

@Rest
Scenario: UE - Select where scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Link column
	When As User Edit Selected View All Edit Row Filter Link column Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Link column
	When As User Edit Selected View All Edit Row Filter Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Link column
	When As User Edit Selected View All Edit Row Filter Link column Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit selected columns with editable row filter and view all columns based on Nested Link column
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result120

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit selected columns with editable row filter and view all columns based on Nested Link column
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Nested Link column
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Nested Link column
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Nested Link column
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Nested Link column
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Nested Link column
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Nested Link column
	When As User Edit Selected View All Edit Row Filter Nested Link column Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit selected columns with editable row filter and view all columns based on Simple Column
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result121

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit selected columns with editable row filter and view all columns based on Simple Column
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Simple Column
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Simple Column
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Simple Column
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 10; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJo

@Rest
Scenario: UE - Select where scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Simple Column
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) IN ('Annie','John','Mark') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohnAnnieAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Simple Column
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Simple Column
	When As User Edit Selected View All Edit Row Filter Simple Column Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit selected columns with editable row filter and view all columns based on Subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result122

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit selected columns with editable row filter and view all columns based on Subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 150; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFr

@Rest
Scenario: UE - Select where scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'John' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Subquery
	When As User Edit Selected View All Edit Row Filter Subquery Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit selected columns with editable row filter and view all columns based on Unrelated Subquery
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result123

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit selected columns with editable row filter and view all columns based on Unrelated Subquery
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Unrelated Subquery
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view all columns based on Unrelated Subquery
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Unrelated Subquery
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 148; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTGr

@Rest
Scenario: UE - Select where scalar UDF() with user with edit selected columns with editable row filter and view all columns based on Unrelated Subquery
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Unrelated Subquery
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view all columns based on Unrelated Subquery
	When As User Edit Selected View All Edit Row Filter Unrelated Subquery Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2