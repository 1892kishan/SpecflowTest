Feature: SQL User with All

@Rest
Scenario: UE - SELECT temp table as a user with edit all columns and view all columns
	When As User User with All Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[Employees360] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: UE - SELECT INNER JOIN on a link column as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT LEFT JOIN on a link column as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT RIGHT JOIN on a link column as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FULL JOIN on a link column as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT CROSS JOIN on a link column as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Recursive CTE as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT Non Recursive CTE as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE EXISTS (Subquery) as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE IN (Subquery) as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT FROM (Subquery) as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE ALL (Subquery) as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: UE - SELECT WHERE MAX (Subquery) as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCWhereMAXSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: UE - SELECT Column1, Column2, Subquery as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCColumnSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: UE - SELECT HAVING Subquery as a user with edit all columns and view all columns
	When As User User with All Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT SET DECLARE Variables as a user with edit all columns and view all columns
	When As User User with All Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[Employees360] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00