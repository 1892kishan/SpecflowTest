Feature: CQL ViewSelected EditSelected View Edit RF

@Rest
Scenario: DD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result172

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameGrapefruit

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: DD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest @Bug @Ignore
Scenario: DD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Person

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUserId
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result173

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Name]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieAppleApricotBananaBlueberry1Fruit1Fruit2Fruit4Fruit7JackfruitKiwiLemonMandarin1MangoMarkNectarineOrangePlum1

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: DD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest @Bug @Ignore
Scenario: DD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on currentUsersGroups
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result174

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest @Bug @Ignore
Scenario: DD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Mandarin','Papaya','Orange','Apricot','Fruit1','Grapefruit','Kiwi','Grape','Mango1') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Person

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on executeSavedQuery
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result175

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy Id], [Version], [Draft Version]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieMangoKiwiFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 133; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTKi

@Rest @Bug @Ignore
Scenario: DD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Link column
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Nested Link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result176

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Nested Link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Nested Link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy Id], [Version], [Draft Version]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Nested Link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Nested Link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest @Bug @Ignore
Scenario: DD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Nested Link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Nested Link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Nested Link column
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Simple Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result177

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Simple Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Simple Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Simple Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Simple Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 10; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJo

@Rest @Bug @Ignore
Scenario: DD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Simple Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Annie','John','Mark') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Simple Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Simple Column
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result178

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Name]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBananaFruit2KiwiLemonMango

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 150; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFr

@Rest @Bug @Ignore
Scenario: DD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'John' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Unrelated Subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result179

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Unrelated Subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Unrelated Subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Name]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieFruit2KiwiMango

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Unrelated Subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Unrelated Subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 148; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTGr

@Rest @Bug @Ignore
Scenario: DD - Select where scalar UDF() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Unrelated Subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Unrelated Subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit selected columns with editable row filter and view selected columns with viewable row filter based on Unrelated Subquery
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2