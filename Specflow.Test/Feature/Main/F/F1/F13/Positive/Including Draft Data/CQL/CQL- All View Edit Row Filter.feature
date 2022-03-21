Feature: CQL All View Edit Row Filter

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUserId
	When As User All View Edit Row Filter currentUserId Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result92

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUserId
	When As User All View Edit Row Filter currentUserId Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultBanana 92

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUserId
	When As User All View Edit Row Filter currentUserId Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUserId
	When As User All View Edit Row Filter currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUserId
	When As User All View Edit Row Filter currentUserId Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTBa

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUserId
	When As User All View Edit Row Filter currentUserId Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Person

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUserId
	When As User All View Edit Row Filter currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUserId
	When As User All View Edit Row Filter currentUserId Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUsersGroups
	When As User All View Edit Row Filter currentUsersGroups Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result93

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUsersGroups
	When As User All View Edit Row Filter currentUsersGroups Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultOrange 93

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUsersGroups
	When As User All View Edit Row Filter currentUsersGroups Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [NAME]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieAppleApricotBananaBlueberry1Fruit1Fruit2Fruit4Fruit7JackfruitKiwiLemonMandarin1MangoMarkNectarineOrangePlum1

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUsersGroups
	When As User All View Edit Row Filter currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUsersGroups
	When As User All View Edit Row Filter currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTOr

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUsersGroups
	When As User All View Edit Row Filter currentUsersGroups Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUsersGroups
	When As User All View Edit Row Filter currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on currentUsersGroups
	When As User All View Edit Row Filter currentUsersGroups Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on executeSavedQuery
	When As User All View Edit Row Filter executeSavedQuery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result94

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on executeSavedQuery
	When As User All View Edit Row Filter executeSavedQuery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultMango 94

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on executeSavedQuery
	When As User All View Edit Row Filter executeSavedQuery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameMango

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on executeSavedQuery
	When As User All View Edit Row Filter executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on executeSavedQuery
	When As User All View Edit Row Filter executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on executeSavedQuery
	When As User All View Edit Row Filter executeSavedQuery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Mandarin','Papaya','Orange','Apricot','Fruit1','Grapefruit','Kiwi','Grape','Mango1') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on executeSavedQuery
	When As User All View Edit Row Filter executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on executeSavedQuery
	When As User All View Edit Row Filter executeSavedQuery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Link column
	When As User All View Edit Row Filter Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result95

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Link column
	When As User All View Edit Row Filter Link column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Link column
	When As User All View Edit Row Filter Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy ID],[Version],[Draft Version]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieMangoKiwiFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Link column
	When As User All View Edit Row Filter Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Link column
	When As User All View Edit Row Filter Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 133; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTKi

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Link column
	When As User All View Edit Row Filter Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Link column
	When As User All View Edit Row Filter Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Link column
	When As User All View Edit Row Filter Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Nested Link column
	When As User All View Edit Row Filter Nested Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result96

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Nested Link column
	When As User All View Edit Row Filter Nested Link column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Nested Link column
	When As User All View Edit Row Filter Nested Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy Id], [Version], [Draft Version]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Nested Link column
	When As User All View Edit Row Filter Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Nested Link column
	When As User All View Edit Row Filter Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Nested Link column
	When As User All View Edit Row Filter Nested Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Nested Link column
	When As User All View Edit Row Filter Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Nested Link column
	When As User All View Edit Row Filter Nested Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Simple Column
	When As User All View Edit Row Filter Simple Column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result97

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Simple Column
	When As User All View Edit Row Filter Simple Column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Simple Column
	When As User All View Edit Row Filter Simple Column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Simple Column
	When As User All View Edit Row Filter Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Simple Column
	When As User All View Edit Row Filter Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 10; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJo

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Simple Column
	When As User All View Edit Row Filter Simple Column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Annie','John','Mark') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Simple Column
	When As User All View Edit Row Filter Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Simple Column
	When As User All View Edit Row Filter Simple Column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Subquery
	When As User All View Edit Row Filter Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result98

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Subquery
	When As User All View Edit Row Filter Subquery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Subquery
	When As User All View Edit Row Filter Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [NAME]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBananaFruit2KiwiLemonMango

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Subquery
	When As User All View Edit Row Filter Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Subquery
	When As User All View Edit Row Filter Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 150; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFr

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Subquery
	When As User All View Edit Row Filter Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'John' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Subquery
	When As User All View Edit Row Filter Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Subquery
	When As User All View Edit Row Filter Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Unrelated Subquery
	When As User All View Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result99

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Unrelated Subquery
	When As User All View Edit Row Filter Unrelated Subquery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Unrelated Subquery
	When As User All View Edit Row Filter Unrelated Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [NAME]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieFruit2KiwiMango

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Unrelated Subquery
	When As User All View Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Unrelated Subquery
	When As User All View Edit Row Filter Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 148; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTGr

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Unrelated Subquery
	When As User All View Edit Row Filter Unrelated Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Unrelated Subquery
	When As User All View Edit Row Filter Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns with editable row filter and view all columns with viewable row filter based on Unrelated Subquery
	When As User All View Edit Row Filter Unrelated Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2