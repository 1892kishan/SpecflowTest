Feature: SQL ViewSelected EditSelected View Edit RF

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 72    |
	Then Validate expected string to be Name,UserMark,72

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate expected string to be Name,UserJohn,10

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate expected string to be Name,UserJohn,10John1,10

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate expected string to be Name,UserApricots,100

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 150   |
	Then Validate expected string to be Name,UserFruit2,150

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 148   |
	Then Validate expected string to be Name,UserGrapefruit,148

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql statement SELECT DISTINCT [Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 93    |
	Then Validate expected string to be Name,UserOrange,93Orange1,93

@Rest @Bug @Ignore
Scenario: VH - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin86.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT INNER JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Kiwi |
	Then Validate unordered result ResultDCInnerJoin85.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin85.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest 
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Fruit2 |
	Then Validate unordered result ResultDCInnerJoin86.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Grapefruit |
	Then Validate unordered result ResultDCInnerJoin90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin78.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCLeftJoin81.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin78.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin80.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Fruit2 |
	Then Validate unordered result ResultDCLeftJoin83.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCLeftJoin79.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Kiwi |
	Then Validate unordered result ResultDCLeftJoin82.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin93.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCRightJoin92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Fruit2  |
	Then Validate unordered result ResultDCRightJoin89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCRightJoin88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCRightJoin87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin78.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCFullJoin79.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCFullJoin76.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Kiwi  |
	Then Validate unordered result ResultDCFullJoin77.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin75.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Fruit2 |
	Then Validate unordered result ResultDCFullJoin74.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCFullJoin73.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin72.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a nested link column as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte93.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte94.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCNonRecursiveCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCNonRecursiveCte95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCNonRecursiveCte97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte93.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte94.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists100.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists101.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCExists102.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists101.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists104.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Fruit2 |
	Then Validate unordered result ResultDCExists103.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCExists106.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCExists107.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery93.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery94.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCWhereInSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery85.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery86.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCFromSubQuery87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Fruit2 |
	Then Validate unordered result ResultDCFromSubQuery90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate unordered result ResultDCFromSubQuery91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Jackfruit |
	Then Validate unordered result ResultDCFromSubQuery92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest  @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John |
	Then Validate unordered result ResultDCWhereAllSubQuery89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery91.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery92.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery93.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery94.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCWhereAllSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest 
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCWhereMAXSubQuery95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest 
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCWhereMAXSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Name,User,Work PhoneFruit8,166,2342342342

@Rest
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate expected string to be Name,User,Cinchy Record Type,Approval State,Version,Draft Version,FromSubQueryBlueberry,109,Change Request,Pending,2,4,73

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | John  |
	Then Validate unordered result ResultDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | John  |
	Then Validate unordered result ResultDCColumnSubQuery98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Fruit2 |
	Then Validate unordered result ResultDCColumnSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value      |
		| innerValue | 73         |
		| value      | Grapefruit |
	Then Validate unordered result ResultDCColumnSubQuery99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Grapefruit |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDCHavingSubQuery97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on subquery
	When As User ViewSelected EditSelected View Edit RF Subquery Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  based on subquery that access completely unrelated data
	When As User ViewSelected EditSelected View Edit RF Unrelated Subquery Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on simple column types
	When As User ViewSelected EditSelected View Edit RF Simple Column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on link column types
	When As User ViewSelected EditSelected View Edit RF Link column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on nested link column types
	When As User ViewSelected EditSelected View Edit RF Nested Link column Run cql from file SelectDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare97.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on Execute Saved Query
	When As User ViewSelected EditSelected View Edit RF executeSavedQuery Run cql from file SelectDeclare98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on CurrentUserID()
	When As User ViewSelected EditSelected View Edit RF currentUserId Run cql from file SelectDeclare99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns with editable row filter and view selected columns with viewable row filter  set based on currentUsersGroups()
	When As User ViewSelected EditSelected View Edit RF currentUsersGroups Run cql from file SelectDeclare5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |