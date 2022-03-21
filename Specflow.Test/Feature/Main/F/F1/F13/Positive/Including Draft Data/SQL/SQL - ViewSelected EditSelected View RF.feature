Feature: SQL ViewSelected EditSelected View RF

@Rest
Scenario: DD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 72 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserMark,72

@Rest
Scenario: DD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 10 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: DD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 133 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserKiwi,133

@Rest
Scenario: DD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: DD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 150 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserFruit2,150

@Rest
Scenario: DD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 148 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserGrapefruit,148

@Rest
Scenario: DD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = 93 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserOrange,93

@Rest
Scenario: DD - SELECT INNER JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin19.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin95.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin94.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin16.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin93.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT INNER JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCInnerJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin91.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin92.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin90.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin89.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin15.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin94.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT LEFT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin93.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin95.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin18.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin94.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin15.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT RIGHT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCFullJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin89.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCFullJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin83.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCFullJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin19.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCFullJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin93.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCFullJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin88.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCFullJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin16.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCFullJoin95.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin92.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FULL JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCFullJoin96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin91.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT CROSS JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte11.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte6.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte11.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte9.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCCte97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte99.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCNonRecursiveCte98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists84.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists89.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists19.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists86.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists85.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists88.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCExists98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists87.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery14.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery8.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery13.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery11.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery9.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCWhereInSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery10.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
#check
Scenario: DD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery93.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
#check
Scenario: DD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery17.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
#check
Scenario: DD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery95.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
#check
Scenario: DD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery94.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery15.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
#check
Scenario: DD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCFromSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery8.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery2.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery7.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery97.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery3.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: DD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit2,150,2342342342

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: DD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit7,165,9898989898

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryApple,73,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryFruit2,150,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryGrapefruit,148,73

@Rest
Scenario: DD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCHavingSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCHavingSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCHavingSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCHavingSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCHavingSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCHavingSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCHavingSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: DD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCHavingSubQuery98.txt with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: DD - SELECT SET DECLARE Variablesas a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Fruit2' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Grapefruit' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameGrapefruit

@Rest
Scenario: DD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Annie' SELECT [Name] FROM [Mock].[EmployeeChangeApproval1] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnie