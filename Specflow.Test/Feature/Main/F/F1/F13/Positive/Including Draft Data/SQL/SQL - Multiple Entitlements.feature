Feature: SQL Multiple Entitlements

@Rest
Scenario: DD - SELECT temp table as a user with multiple entitlements
	When As User Multiple Entitlements Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT INNER JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin38.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin43.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
@Rest
Scenario: DD - SELECT RIGHT JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin37.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCFullJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin47.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT CROSS JOIN on a link column as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCCte8.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte23.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists55.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery32.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest 
Scenario: DD - SELECT FROM (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCFromSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery35.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73Annie,51,73Mark,72,73Apple,73,73Banana,92,73Orange,93,73Mango,94,73Pear,84,73Peach,85,73Jack Fruit,86,73Apricots,100,73Nectarine,101,73Grape,102,73Mango2,108,73Blueberry1,109,73Pomegranate,110,73Carambola,116,73Plum1,117,73Banana2,118,73Raspberry,124,73Mandarin1,125,73Jackfruit,126,73Papaya,132,73Kiwi,133,73Pineapple,134,73Lime,140,73Lemon,141,73Apricot,142,73Grapefruit,148,73Fruit1,149,73Fruit2,150,73Fruit3,156,73Fruit4,157,73Fruit5,158,73Fruit6,164,73Fruit7,165,73Fruit8,166,73Fruit9,69,73DummyValue,0,73,,73,,73Fruit10,87,73,,73,,73Fruit11,36,73,,73Fruit11,3,73,,73

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with multiple entitlements
	When As User Multiple Entitlements Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with multiple entitlements
	When As User Multiple Entitlements Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn