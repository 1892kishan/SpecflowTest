Feature: CQL ViewAll View RF

@Rest
Scenario: DD - SELECT currentUserId() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result156

@Rest
Scenario: DD - SELECT where currentUserId() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultFruit3 156

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit3

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: DD - Select scalar UDF() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFr

@Rest
Scenario: DD - Select where scalar UDF() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Person

@Rest
Scenario: DD - Select executeSavedQuery() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with view all columns with viewable row filter based on currentUserId
	When As User ViewAll View RF currentUserId Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT currentUserId() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result157

@Rest
Scenario: DD - SELECT where currentUserId() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultFruit4 157

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieMarkAppleBananaOrangeMangoNectarineBlueberry1Plum1Mandarin1JackfruitKiwiLemonApricotFruit1Fruit2Fruit4Fruit7

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: DD - Select scalar UDF() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFr

@Rest
Scenario: DD - Select where scalar UDF() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with view all columns with viewable row filter based on currentUsersGroups
	When As User ViewAll View RF currentUsersGroups Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result158

@Rest
Scenario: DD - SELECT where currentUserId() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultFruit5 158

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - Select scalar UDF() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest
Scenario: DD - Select where scalar UDF() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Mandarin','Papaya','Orange','Apricot','Fruit1','Grapefruit','Kiwi','Grape','Mango1') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Person

@Rest
Scenario: DD - Select executeSavedQuery() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with view all columns with viewable row filter based on executeSavedQuery
	When As User ViewAll View RF executeSavedQuery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT currentUserId() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result159

@Rest
Scenario: DD - SELECT where currentUserId() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy ID],[Version],[Draft Version]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieMangoKiwiFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 133; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTKi

@Rest
Scenario: DD - Select where scalar UDF() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Link column
	When As User ViewAll View RF Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result160

@Rest
Scenario: DD - SELECT where currentUserId() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy Id], [Version], [Draft Version]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPl

@Rest
Scenario: DD - Select where scalar UDF() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Nested Link column
	When As User ViewAll View RF Nested Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result161

@Rest
Scenario: DD - SELECT where currentUserId() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - Select scalar UDF() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 10; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJo

@Rest
Scenario: DD - Select where scalar UDF() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Annie','John','Mark') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: DD - Select executeSavedQuery() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Simple Column
	When As User ViewAll View RF Simple Column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name

@Rest
Scenario: DD - SELECT currentUserId() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result162

@Rest
Scenario: DD - SELECT where currentUserId() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBananaMangoKiwiLemonFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 150; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFr

@Rest
Scenario: DD - Select where scalar UDF() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'John' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohn

@Rest
Scenario: DD - Select executeSavedQuery() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Subquery
	When As User ViewAll View RF Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT currentUserId() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result163

@Rest
Scenario: DD - SELECT where currentUserId() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy Id]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieMangoKiwiFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 148; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTGr

@Rest
Scenario: DD - Select where scalar UDF() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with view all columns with viewable row filter based on Unrelated Subquery
	When As User ViewAll View RF Unrelated Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2