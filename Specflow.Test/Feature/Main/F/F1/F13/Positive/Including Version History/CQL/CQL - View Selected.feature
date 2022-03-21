Feature: CQL View Selected

@Rest
Scenario: VH - SELECT currentUserId() with user with view selected columns
	When As User View Selected Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result67

@Rest
Scenario: VH - SELECT where currentUserId() with user with view selected columns
	When As User View Selected Run cql statement select TOP 1 [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User] != currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result14

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with view selected columns
	When As User View Selected Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with view selected columns
	When As User View Selected Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with view selected columns
	When As User View Selected Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest
Scenario: VH - Select where scalar UDF() with user with view selected columns
	When As User View Selected Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with view selected columns
	When As User View Selected Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with view selected columns
	When As User View Selected Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2