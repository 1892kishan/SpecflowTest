Feature: SQL ViewSelected EditSelected View RF

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 72 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserMark,72

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 10 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 133 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserKiwi,133

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 100 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 150 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserFruit2,150

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 148 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserGrapefruit,148

@Rest
Scenario: AD - SELECT temp table as a user with edit selected columns and view selected columns with viewable row filter based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval2] where [User] = 93 ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,UserOrange,93

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT INNER JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCInnerJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCInnerJoin15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin97.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT LEFT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCLeftJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCLeftJoin95.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCRightJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCRightJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCRightJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCRightJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCRightJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCRightJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCRightJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT RIGHT JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCRightJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCRightJoin14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin87.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCFullJoin97.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FULL JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCFullJoin99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFullJoin15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCCrossJoin00.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a link column as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCCrossJoin00.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a nested link column as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCCrossJoin00.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCCrossJoin00.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCCrossJoin00.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCCrossJoin00.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCCrossJoin00.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT CROSS JOIN as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCCrossJoin00.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCrossJoin0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT Non Recursive CTE as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCNonRecursiveCte99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists95.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists97.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists96.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCExists99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE IN (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCWhereInSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery0.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT FROM (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCFromSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCFromSubQuery14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery98.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: AD - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCWhereAllSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereAllSubQuery4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit2,150,2342342342

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: AD - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit7,165,9898989898

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryApple,73,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryJohn,10,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryFruit2,150,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryGrapefruit,148,73

@Rest
Scenario: AD - SELECT Column1, Column2, Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
	Then Validate expected string to be Name,User,FromSubQueryAnnie,51,73

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: AD - SELECT HAVING Subquery as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql from file SelectDCHavingSubQuery99.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter set based on subquery
	When As User ViewSelected EditSelected View RF Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View RF Unrelated Subquery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit selected columns and view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected EditSelected View RF Simple Column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit selected columns and view selected columns with viewable row filter set based on link column types
	When As User ViewSelected EditSelected View RF Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variablesas a user with edit selected columns and view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected EditSelected View RF Nested Link column Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'John' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameJohn

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected EditSelected View RF executeSavedQuery Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Fruit2' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected EditSelected View RF currentUserId Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Grapefruit' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameGrapefruit

@Rest
Scenario: AD - SELECT SET DECLARE Variables as a user with edit selected columns and view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected EditSelected View RF currentUsersGroups Run cql statement DECLARE @Name VARCHAR(100) SET @Name= 'Annie' SELECT [Name] FROM [Mock].[EmployeeChangeApproval2] Where [Name] = @Name; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnie