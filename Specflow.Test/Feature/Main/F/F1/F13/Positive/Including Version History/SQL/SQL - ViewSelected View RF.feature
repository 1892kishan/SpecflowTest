Feature: SQL ViewSelected View RF

@Rest
Scenario: VH - SELECT temp table as a user with view selected columns with viewable row filter based on subquery
	When As User ViewSelected View RF Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: VH - SELECT temp table as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 72    |
	Then Validate expected string to be Name,UserMark,72

@Rest
Scenario: VH - SELECT temp table as a user with view selected columns with viewable row filter based on simple column types
	When As User ViewSelected View RF Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: VH - SELECT temp table as a user with view selected columns with viewable row filter based on link column types
	When As User ViewSelected View RF Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate expected string to be Name,UserJohn,10John1,10

@Rest
Scenario: VH - SELECT temp table as a user with view selected columns with viewable row filter based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: VH - SELECT temp table as a user with view selected columns with viewable row filter based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 166   |
	Then Validate expected string to be Name,UserFruit8,166

@Rest
Scenario: VH - SELECT temp table as a user with view selected columns with viewable row filter based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 164   |
	Then Validate expected string to be Name,UserFruit6,164

@Rest
Scenario: VH - SELECT temp table as a user with view selected columns with viewable row filter based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 93    |
	Then Validate expected string to be Name,UserOrange,93Orange1,93

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with view selected columns with viewable row filter based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a nested link column as a user with view selected columns with viewable row filter based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin84.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDCInnerJoin55.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDCInnerJoin54.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin78.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a nested link column as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCLeftJoin81.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin78.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDCLeftJoin61.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDCLeftJoin60.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCLeftJoin82.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin93.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a nested link column as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCRightJoin86.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDCRightJoin54.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDCRightJoin53.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin78.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCFullJoin79.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a nested link column as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCFullJoin76.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCFullJoin77.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin75.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDCFullJoin64.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDCFullJoin63.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin72.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a link column as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a link column as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a nested link column as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a simple column Cinchy Id as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on Cinchy Id as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte45.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCNonRecursiveCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCNonRecursiveCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCNonRecursiveCte4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | %F%   |
	Then Validate unordered result ResultDCNonRecursiveCte23.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte94.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists111.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists105.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCExists110.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists108.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists109.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDCExists193.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDCExists194.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists107.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery85.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery86.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery50.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery85.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery86.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCFromSubQuery87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery83.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDCFromSubQuery51.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDCFromSubQuery50.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCWhereAllSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDCWhereAllSubQuery93.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDCWhereAllSubQuery94.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCWhereMAXSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCWhereMAXSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate expected string to be Name,User,Cinchy Record Type,Approval State,Version,Draft Version,FromSubQueryBlueberry,109,Change Request,Pending,2,4,73

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | John  |
	Then Validate unordered result ResultDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | John  |
	Then Validate unordered result ResultDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value  |
		| innerValue | 73     |
		| value      | Fruit8 |
	Then Validate unordered result ResultDCColumnSubQuery14.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value  |
		| innerValue | 73     |
		| value      | Fruit6 |
	Then Validate unordered result ResultDCColumnSubQuery13.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter set based on subquery
	When As User ViewSelected View RF Subquery Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter based on subquery that access completely unrelated data
	When As User ViewSelected View RF Unrelated Subquery Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with view selected columns with viewable row filter set based on simple column types
	When As User ViewSelected View RF Simple Column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with view selected columns with viewable row filter set based on link column types
	When As User ViewSelected View RF Link column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with view selected columns with viewable row filter set based on nested link column types
	When As User ViewSelected View RF Nested Link column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter set based on Execute Saved Query
	When As User ViewSelected View RF executeSavedQuery Run cql from file SelectDeclare6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit8 |
	Then Validate unordered result ResultDeclare17.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter set based on CurrentUserID()
	When As User ViewSelected View RF currentUserId Run cql from file SelectDeclare6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Fruit6 |
	Then Validate unordered result ResultDeclare16.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with view selected columns with viewable row filter set based on currentUsersGroups()
	When As User ViewSelected View RF currentUsersGroups Run cql from file SelectDeclare5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |