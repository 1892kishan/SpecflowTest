Feature: CQL All Edit Row Filter

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result84

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result8

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaPearPeachJack FruitApricotsMango2CarambolaRaspberryPapayaKiwiLimeLemonGrapefruitFruit2Fruit3OrangeMangoFruit6

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPe

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on currentUserId
	When As User All Edit Row Filter currentUserId Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result85

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result11

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieMarkAppleBananaNectarineBlueberryPlumMandarinKiwiLemonApricotFruit1Fruit2Fruit4OrangeMangoFruit7

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPe

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on currentUsersGroups
	When As User All Edit Row Filter currentUsersGroups Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result86

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result12

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on executeSavedQuery
	When As User All Edit Row Filter executeSavedQuery Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result87

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango


@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Link column
	When As User All Edit Row Filter Link column Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result88

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Nested Link column
	When As User All Edit Row Filter Nested Link column Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result89

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Simple Column
	When As User All Edit Row Filter Simple Column Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result90

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Subquery
	When As User All Edit Row Filter Subquery Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result91

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns based on Unrelated Subquery
	When As User All Edit Row Filter Unrelated Subquery Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2