Feature: SQL Builder Draft Function 

@Rest
Scenario: DF - SELECT temp table as a user Builder
	When As User Builder Run cql statement SELECT DRAFT([Name]),DRAFT([User]) INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 117 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserPlum,116

@Rest
Scenario: DF - SELECT INNER JOIN on a link column as a user Builder
	When As User Builder Run cql from file SelectDCInnerJoin5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin57.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT LEFT JOIN on a link column as a user Builder
	When As User Builder Run cql from file SelectDCLeftJoin5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin63.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT RIGHT JOIN on a link column as a user Builder
	When As User Builder Run cql from file SelectDCRightJoin5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin56.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT FULL JOIN on a link column as a user Builder
	When As User Builder Run cql from file SelectDCFullJoin6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin66.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT CROSS JOIN on a link column as a user Builder
	When As User Builder Run cql from file SelectDCCrossJoin5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT Recursive CTE as a user Builder
	When As User Builder Run cql from file SelectDCCte12.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte47.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT Non Recursive CTE as a user Builder
	When As User Builder Run cql from file SelectDCNonRecursiveCte5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte25.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT WHERE EXISTS (Subquery) as a user Builder
	When As User Builder Run cql from file SelectDCExists5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists191.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT WHERE IN (Subquery) as a user Builder
	When As User Builder Run cql from file SelectDCWhereInSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery52.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT FROM (Subquery) as a user Builder
	When As User Builder Run cql from file SelectDCFromSubQuery7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery53.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT WHERE ALL (Subquery) as a user Builder
	When As User Builder Run cql from file SelectDCWhereAllSubQuery7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery34.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DF - SELECT WHERE MAX (Subquery) as a user Builder
	When As User Builder Run cql from file SelectDCWhereMAXSubQuery6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work Phone,LocationFruit8,166,2342342342,Toronto

@Rest
Scenario: DF - SELECT Column1, Column2, Subquery as a user Builder
	When As User Builder Run cql from file SelectDCColumnSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate unordered result ResultDCColumnSubQuery15.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DF - SELECT HAVING Subquery as a user Builder
	When As User Builder Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DF - SELECT SET DECLARE Variables as a user Builder
	When As User Builder Run cql statement DECLARE @date VARCHAR(100) SET @date= '2020' SELECT DRAFT([Name]),DRAFT([Start Date]) FROM [Mock].[EmployeeChangeApproval2] Where [Start Date] like '%'+@date+'%'; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
		Then Validate unordered result ResultDeclare18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |