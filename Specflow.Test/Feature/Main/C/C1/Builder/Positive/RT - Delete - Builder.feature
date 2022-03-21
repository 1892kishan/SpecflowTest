Feature: RT - Delete - Builder

@Rest
Scenario: RT - As Builder, Delete a row using where clause
	When As User Builder Run cql statement DELETE FROM [Mock].[EmployeeDelete2] Where [Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate text result Deleted ByBuilder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: RT - As Builder, Delete a row using subquery
	When As User Builder Run cql statement DELETE FROM [Mock].[EmployeeDelete2] Where [Id] = (SELECT P.[Id] FROM [Mock].[EmployeeDelete2] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Name]=P.[Name] WHERE E.[Name] = @data1); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value       |
		| data1 | Automation2 |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate text result Deleted ByBuilder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

#23505: duplicate key value violates unique constraint "historytbl181_pk"
@Rest
Scenario: RT - As Builder, Delete a row using CROSS Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O CROSS JOIN [Mock].[ReferenceTable1] P Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate text result Deleted ByBuilder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: RT - As Builder, Delete a row using LEFT Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O LEFT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate text result Deleted ByBuilder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: RT - As Builder, Delete a row using RIGHT Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O RIGHT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate text result Deleted ByBuilder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |

@Rest
Scenario: RT - As Builder, Delete a row using INNER Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O INNER JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate text result Deleted ByBuilder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |

@Rest
Scenario: RT - As Builder, Delete a row using FULL Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O FULL JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate text result Deleted ByBuilder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |

@Rest
Scenario: RT - As Builder, Delete rows using where clause
	When As User Builder Run cql statement DELETE FROM [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByBuilder Builder (Builder)Builder Builder (Builder)Builder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |

@Rest
Scenario: RT - As Builder, Delete rows using subquery
	When As User Builder Run cql statement DELETE FROM [Mock].[EmployeeDelete2] Where [Id] IN (SELECT P.[Id] FROM [Mock].[EmployeeDelete2] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Id]=P.[Id] WHERE E.[Id] BETWEEN @data1 AND @data2); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 11    |
		| data2 | 13    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByBuilder Builder (Builder)Builder Builder (Builder)Builder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 11    |
		| data2 | 13    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 11    |
		| data2 | 13    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 11    |
		| data2 | 13    |

@Rest
Scenario: RT - As Builder, Delete rows using CROSS Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O CROSS JOIN [Mock].[ReferenceTable1] P WHERE O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 16    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByBuilder Builder (Builder)Builder Builder (Builder)Builder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 16    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 16    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 16    |

@Rest
Scenario: RT - As Builder, Delete rows using LEFT Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O LEFT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 17    |
		| data2 | 19    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByBuilder Builder (Builder)Builder Builder (Builder)Builder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 17    |
		| data2 | 19    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 17    |
		| data2 | 19    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 17    |
		| data2 | 19    |

@Rest
Scenario: RT - As Builder, Delete rows using RIGHT Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O RIGHT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 20    |
		| data2 | 22    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByBuilder Builder (Builder)Builder Builder (Builder)Builder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 20    |
		| data2 | 22    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 20    |
		| data2 | 22    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 20    |
		| data2 | 22    |

@Rest
Scenario: RT - As Builder, Delete rows using INNER Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O INNER JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 23    |
		| data2 | 25    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByBuilder Builder (Builder)Builder Builder (Builder)Builder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 23    |
		| data2 | 25    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 23    |
		| data2 | 25    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 23    |
		| data2 | 25    |

@Rest
Scenario: RT - As Builder, Delete rows using FULL Join
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete2] O FULL JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 28    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByBuilder Builder (Builder)Builder Builder (Builder)Builder Builder (Builder) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 28    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 28    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete2] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 28    |

@Rest
Scenario: RT - As Builder, Delete a row using where clause - No Delete Rows Permission
	When As User Builder Run cql statement DELETE FROM [Mock].[EmployeeDelete4] Where [Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: RT - As Builder, Delete a row using subquery - No Delete Rows Permission
	When As User Builder Run cql statement DELETE FROM [Mock].[EmployeeDelete4] Where [Id] = (SELECT P.[Id] FROM [Mock].[EmployeeDelete4] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Name]=P.[Name] WHERE E.[Name] = @data1); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value       |
		| data1 | Automation2 |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: RT - As Builder, Delete a row using CROSS Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O CROSS JOIN [Mock].[ReferenceTable1] P Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: RT - As Builder, Delete a row using LEFT Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O LEFT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: RT - As Builder, Delete a row using RIGHT Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O RIGHT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |

@Rest
Scenario: RT - As Builder, Delete a row using INNER Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O INNER JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |

@Rest
Scenario: RT - As Builder, Delete a row using FULL Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O FULL JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] = @data1; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |

@Rest
Scenario: RT - As Builder, Delete rows using where clause - No Delete Rows Permission
	When As User Builder Run cql statement DELETE FROM [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |

@Rest
Scenario: RT - As Builder, Delete rows using subquery - No Delete Rows Permission
	When As User Builder Run cql statement DELETE FROM [Mock].[EmployeeDelete4] Where [Id] IN (SELECT P.[Id] FROM [Mock].[EmployeeDelete4] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Id]=P.[Id] WHERE E.[Id] BETWEEN @data1 AND @data2); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 11    |
		| data2 | 13    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 11    |
		| data2 | 13    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 11    |
		| data2 | 13    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 11    |
		| data2 | 13    |

@Rest
Scenario: RT - As Builder, Delete rows using CROSS Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O CROSS JOIN [Mock].[ReferenceTable1] P WHERE O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 16    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 16    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 16    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 16    |

@Rest
Scenario: RT - As Builder, Delete rows using LEFT Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O LEFT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 17    |
		| data2 | 19    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 17    |
		| data2 | 19    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 17    |
		| data2 | 19    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 17    |
		| data2 | 19    |

@Rest
Scenario: RT - As Builder, Delete rows using RIGHT Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O RIGHT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 20    |
		| data2 | 22    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 20    |
		| data2 | 22    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 20    |
		| data2 | 22    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 20    |
		| data2 | 22    |

@Rest
Scenario: RT - As Builder, Delete rows using INNER Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O INNER JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 23    |
		| data2 | 25    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 23    |
		| data2 | 25    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 23    |
		| data2 | 25    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 23    |
		| data2 | 25    |

@Rest
Scenario: RT - As Builder, Delete rows using FULL Join - No Delete Rows Permission
	When As User Builder Run cql statement DELETE O FROM [Mock].[EmployeeDelete4] O FULL JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 28    |
	Then As User Builder Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted By with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 28    |
	Then As User Builder Run cql statement Select [Deleted] from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 28    |
	Then As User Builder Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete4] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 28    |