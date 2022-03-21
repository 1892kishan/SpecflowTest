Feature: SQL ViewAll

@Rest
Scenario: AD - SELECT temp table as a user with view all columns
	When As User ViewAll Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with view all columns
	When As User ViewAll Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with view all columns
	When As User ViewAll Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with view all columns
	When As User ViewAll Run cql from file SelectDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with view all columns
	When As User ViewAll Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT CROSS JOIN on a link column as a user with view all columns
	When As User ViewAll Run cql from file SelectDCCrossJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with view all columns
	When As User ViewAll Run cql from file SelectDCCte98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with view all columns
	When As User ViewAll Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with view all columns
	When As User ViewAll Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with view all columns
	When As User ViewAll Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with view all columns
	When As User ViewAll Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with view all columns
	When As User ViewAll Run cql from file SelectDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with view all columns
	When As User ViewAll Run cql from file SelectDCWhereMAXSubQuery2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with view all columns
	When As User ViewAll Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with view all columns
	When As User ViewAll Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with view all columns
	When As User ViewAll Run cql statement DECLARE @date VARCHAR(100) SET @date= '2021-01-01' SELECT [Name],[Start Date] FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,Start DateAnnie,2021-01-01 00:00:00