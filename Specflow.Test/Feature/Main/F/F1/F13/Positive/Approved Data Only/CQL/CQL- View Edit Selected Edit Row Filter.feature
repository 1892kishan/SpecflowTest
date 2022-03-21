Feature: CQL View Edit Selected Edit Row Filter

@Rest
Scenario: AD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns based on currentUserId
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result132

@Rest
Scenario: AD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns based on currentUserId
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval2] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result14

@Rest
Scenario: AD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on currentUserId
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoPearPeachJack FruitApricotsMango2CarambolaRaspberryPapayaKiwiLimeLemonGrapefruitFruit2Fruit3Fruit6

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on currentUserId
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: AD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on currentUserId
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPa

@Rest
Scenario: AD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on currentUserId
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: AD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on currentUserId
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on currentUserId
	When As User View Edit Selected Edit Row Filter currentUserId Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns based on currentUsersGroups
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result133

@Rest
Scenario: AD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns based on currentUsersGroups
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval2] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result10

@Rest
Scenario: AD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on currentUsersGroups
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieMarkAppleBananaOrangeMangoNectarineBlueberryPlumMandarinKiwiLemonApricotFruit1Fruit2Fruit4Fruit7

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on currentUsersGroups
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: AD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on currentUsersGroups
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTKi

@Rest
Scenario: AD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on currentUsersGroups
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: AD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on currentUsersGroups
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on currentUsersGroups
	When As User View Edit Selected Edit Row Filter currentUsersGroups Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns based on executeSavedQuery
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result134

@Rest
Scenario: AD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns based on executeSavedQuery
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval2] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result7

@Rest
Scenario: AD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on executeSavedQuery
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on executeSavedQuery
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: AD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on executeSavedQuery
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: AD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on executeSavedQuery
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) IN ('Mandarin','Papaya','Orange','Apricot','Fruit1','Grapefruit','Kiwi','Grape','Mango') ORDER BY [Person]; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAppleAppleAppleAppleAppleJohnJohnJohnJohn

@Rest
Scenario: AD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on executeSavedQuery
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on executeSavedQuery
	When As User View Edit Selected Edit Row Filter executeSavedQuery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Link column
	When As User View Edit Selected Edit Row Filter Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result135

@Rest
Scenario: AD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Link column
	When As User View Edit Selected Edit Row Filter Link column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval2] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Link column
	When As User View Edit Selected Edit Row Filter Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Link column
	When As User View Edit Selected Edit Row Filter Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: AD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Link column
	When As User View Edit Selected Edit Row Filter Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = 133; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTKi

@Rest
Scenario: AD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Link column
	When As User View Edit Selected Edit Row Filter Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: AD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Link column
	When As User View Edit Selected Edit Row Filter Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Link column
	When As User View Edit Selected Edit Row Filter Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Nested Link column
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result136

@Rest
Scenario: AD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Nested Link column
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval2] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Nested Link column
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Nested Link column
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: AD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Nested Link column
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = 117; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: AD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Nested Link column
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: AD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Nested Link column
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Nested Link column
	When As User View Edit Selected Edit Row Filter Nested Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Simple Column
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result137

@Rest
Scenario: AD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Simple Column
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval2] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Simple Column
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Simple Column
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: AD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Simple Column
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = 10; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJo

@Rest
Scenario: AD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Simple Column
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) IN ('Annie','John','Mark') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohnAnnieAnnie

@Rest
Scenario: AD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Simple Column
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Simple Column
	When As User View Edit Selected Edit Row Filter Simple Column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result138

@Rest
Scenario: AD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval2] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: AD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = 150; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFr

@Rest
Scenario: AD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'John' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: AD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Subquery
	When As User View Edit Selected Edit Row Filter Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Unrelated Subquery
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval2] with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result139

@Rest
Scenario: AD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns based on Unrelated Subquery
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval2] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Unrelated Subquery
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: AD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns based on Unrelated Subquery
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval2] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: AD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Unrelated Subquery
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval2] where [User] = 148; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTGr

@Rest
Scenario: AD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns based on Unrelated Subquery
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval2] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: AD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Unrelated Subquery
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns based on Unrelated Subquery
	When As User View Edit Selected Edit Row Filter Unrelated Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval2] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2