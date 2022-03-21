Feature: SQL View All Edit Selected View Row

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate unordered result ResultTemp7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate unordered result ResultTemp6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then Validate unordered result ResultTemp5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 100   |
	Then Validate unordered result ResultTemp1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 142   |
	Then Validate unordered result ResultTemp98.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 140   |
	Then Validate unordered result ResultTemp99.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT temp table as a user with edit selected columns and view all columns with viewable row filter based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql statement SELECT [Cinchy Record Type], [Approval State],[Version], [Draft Version],[Name],[User] INTO #temp FROM [Mock].[EmployeeChangeApproval1] where [User] = @value ; SELECT * from #temp as T ORDER BY T.[Version], T.[Draft Version]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 92    |
	Then Validate unordered result ResultTemp3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCInnerJoin43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin45.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCInnerJoin46.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Banana2 |
	Then Validate unordered result ResultDCInnerJoin39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Apricot |
	Then Validate unordered result ResultDCInnerJoin82.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Lime  |
	Then Validate unordered result ResultDCInnerJoin83.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT INNER JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCInnerJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCInnerJoin41.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCLeftJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCLeftJoin48.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCLeftJoin50.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCLeftJoin51.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Nectarine |
	Then Validate unordered result ResultDCLeftJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Apricot |
	Then Validate unordered result ResultDCLeftJoin75.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Lime  |
	Then Validate unordered result ResultDCLeftJoin76.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT LEFT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCLeftJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCLeftJoin46.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin43.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin42.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin44.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCRightJoin45.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value       |
		| value | Pomegranate |
	Then Validate unordered result ResultDCRightJoin38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Apricot |
	Then Validate unordered result ResultDCRightJoin84.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Lime  |
	Then Validate unordered result ResultDCRightJoin85.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT RIGHT JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCRightJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCRightJoin40.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCFullJoin50.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFullJoin53.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCFullJoin54.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFullJoin53.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value     |
		| value | Raspberry |
	Then Validate unordered result ResultDCFullJoin49.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Apricot |
	Then Validate unordered result ResultDCFullJoin71.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Lime  |
	Then Validate unordered result ResultDCFullJoin70.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FULL JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCFullJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCFullJoin51.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

#Error
#Unknown parent node type - Microsoft.SqlServer.TransactSql.ScriptDom.UnqualifiedJoin
@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a link column as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a nested link column as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on a simple column Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN on Cinchy Id as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Nectarine1 |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Apricot |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Lime  |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT CROSS JOIN as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCCrossJoin3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCCrossJoin4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte31.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte32.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte30.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte29.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCCte10.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCCte10.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte88.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCCte27.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte10.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte8.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCNonRecursiveCte4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | %G%   |
	Then Validate unordered result ResultDCNonRecursiveCte13.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte8.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCNonRecursiveCte4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | %A%   |
	Then Validate unordered result ResultDCNonRecursiveCte89.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCNonRecursiveCte4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | %L%   |
	Then Validate unordered result ResultDCNonRecursiveCte90.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Non Recursive CTE as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCNonRecursiveCte3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCNonRecursiveCte9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists66.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists60.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists65.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists64.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCExists59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Apricot |
	Then Validate unordered result ResultDCExists113.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Lime  |
	Then Validate unordered result ResultDCExists112.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE EXISTS (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCExists3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCExists62.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery40.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery34.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCWhereInSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery33.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery83.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery84.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE IN (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCWhereInSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereInSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCFromSubQuery38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery37.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | John  |
	Then Validate unordered result ResultDCFromSubQuery41.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery37.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value      |
		| value | Jack Fruit |
	Then Validate unordered result ResultDCFromSubQuery36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Apricot |
	Then Validate unordered result ResultDCFromSubQuery81.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Lime  |
	Then Validate unordered result ResultDCFromSubQuery82.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT FROM (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCFromSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value  |
		| value | Banana |
	Then Validate unordered result ResultDCFromSubQuery39.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCWhereAllSubQuery6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value   |
		| value | Apricot |
	Then Validate unordered result ResultDCWhereAllSubQuery86.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCWhereAllSubQuery6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Lime  |
	Then Validate unordered result ResultDCWhereAllSubQuery87.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT WHERE ALL (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCWhereAllSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | Apple |
	Then Validate unordered result ResultDCWhereAllSubQuery18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT WHERE MAX (Subquery) as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCWhereMAXSubQuery5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDCWhereMAXSubQuery1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | John  |
	Then Validate unordered result ResultDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | John  |
	Then Validate unordered result ResultDCColumnSubQuery6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value   |
		| innerValue | 73      |
		| value      | Apricot |
	Then Validate unordered result ResultDCColumnSubQuery95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value |
		| innerValue | 73    |
		| value      | Lime  |
	Then Validate unordered result ResultDCColumnSubQuery96.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT Column1, Column2, Subquery as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCColumnSubQuery3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name       | Value     |
		| innerValue | 73        |
		| value      | Blueberry |
	Then Validate unordered result ResultDCColumnSubQuery4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest @Bug @Ignore
Scenario: VH - SELECT HAVING Subquery as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDCHavingSubQuery0.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter set based on subquery
	When As User View All Edit Selected View Row Filter Subquery Run cql from file SelectDeclare2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 2020  |
	Then Validate unordered result ResultDeclare8.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter based on subquery that access completely unrelated data
	When As User View All Edit Selected View Row Filter Unrelated Subquery Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns and view all columns with viewable row filter set based on simple column types
	When As User View All Edit Selected View Row Filter Simple Column Run cql from file SelectDeclare2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 2020  |
	Then Validate unordered result ResultDeclare7.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns and view all columns with viewable row filter set based on link column types
	When As User View All Edit Selected View Row Filter Link Column Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variablesas a user with edit selected columns and view all columns with viewable row filter set based on nested link column types
	When As User View All Edit Selected View Row Filter Nested Link column Run cql from file SelectDeclare1.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate unordered result ResultDeclare3.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter set based on Execute Saved Query
	When As User View All Edit Selected View Row Filter executeSavedQuery Run cql from file SelectDeclare2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 2021  |
	Then Validate unordered result ResultDeclare94.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter set based on CurrentUserID()
	When As User View All Edit Selected View Row Filter currentUserId Run cql from file SelectDeclare2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 2020  |
	Then Validate unordered result ResultDeclare95.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: VH - SELECT SET DECLARE Variables as a user with edit selected columns and view all columns with viewable row filter set based on currentUsersGroups()
	When As User View All Edit Selected View Row Filter currentUsersGroups Run cql from file SelectDeclare2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| value | 2020  |
	Then Validate unordered result ResultDeclare5.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |