Feature: RT - Delete - ViewSelected EditSelected View Edit RF

# 6
@Rest
Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using where clause
	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |

# 15
@Rest
Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using Name
	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [Name] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value        |
		| data1 | Automation15 |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 15    |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 15    |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 15    |

# 13
# Doesn't delete row
@Rest @Bug @Ignore
Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using Cached UDF
	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [Cached UDF] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value                                  |
		| data1 | Automation13  All Edit View Row Filter |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Cached UDF] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                                  |
		| data1 | Automation13  All Edit View Row Filter |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Cached UDF] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                                  |
		| data1 | Automation13  All Edit View Row Filter |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Cached UDF] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                                  |
		| data1 | Automation13  All Edit View Row Filter |

# 2, 3, 12, 17, 25
# Doesn't delete rows
@Rest @Bug @Ignore
Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using Start Date
	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [Start Date] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value               |
		| data1 | 2018-10-11 12:00:00 |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Start Date] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value               |
		| data1 | 2018-10-11 12:00:00 |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Start Date] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value               |
		| data1 | 2018-10-11 12:00:00 |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Start Date] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value               |
		| data1 | 2018-10-11 12:00:00 |

# 11, 23, 26
# Doesn't delete rows
@Rest @Bug @Ignore
Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using Emergency Contact Number
	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [Emergency Contact Number] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value     |
		| data1 | 678678768 |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Emergency Contact Number] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value     |
		| data1 | 678678768 |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Emergency Contact Number] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value     |
		| data1 | 678678768 |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Emergency Contact Number] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value     |
		| data1 | 678678768 |

# 4, 16, 28
# The multi-part identifier "refTbl.Value" could not be bound.
@Rest @Bug @Ignore
Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using MSC
	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [MSC] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value      |
		| data1 | Dance,Play |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [MSC] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
		| data1 | Dance,Play |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [MSC] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
		| data1 | Dance,Play |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [MSC] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value      |
		| data1 | Dance,Play |

# Doesn't delete rows
@Rest @Bug @Ignore
Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using where clause
	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |

#@Rest
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using subquery
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [Id] IN (SELECT P.[Id] FROM [Mock].[EmployeeDelete5] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Id]=P.[Id] WHERE E.[Id] BETWEEN @data1 AND @data2); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 11     |
#		| data2 | 13     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 11     |
#		| data2 | 13     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 11     |
#		| data2 | 13     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 11     |
#		| data2 | 13     |
#
#@Rest
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using CROSS Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O CROSS JOIN [Mock].[ReferenceTable1] P WHERE O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 14     |
#		| data2 | 16     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 14     |
#		| data2 | 16     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 14     |
#		| data2 | 16     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 14     |
#		| data2 | 16     |
#
#@Rest
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using LEFT Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O LEFT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 17     |
#		| data2 | 19     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 17     |
#		| data2 | 19     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 17     |
#		| data2 | 19     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 17     |
#		| data2 | 19     |
#
#@Rest
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using RIGHT Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O RIGHT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 20     |
#		| data2 | 22     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 20     |
#		| data2 | 22     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 20     |
#		| data2 | 22     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 20     |
#		| data2 | 22     |
#
#@Rest
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using INNER Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O INNER JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 23     |
#		| data2 | 25     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 23     |
#		| data2 | 25     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 23     |
#		| data2 | 25     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 23     |
#		| data2 | 25     |
#
#@Rest
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete rows using FULL Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O FULL JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 26     |
#		| data2 | 28     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF)ViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 26     |
#		| data2 | 28     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 26     |
#		| data2 | 28     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value  |
#		| data1 | 26     |
#		| data2 | 28     |

#@Rest @Bug Ignore
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using subquery
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O Where [Id] = (SELECT P.[Id] FROM [Mock].[EmployeeDelete5] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Name]=P.[Name] WHERE E.[Name] = @data1); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value       |
#		| data1 | Automation2 |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 2     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 2     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 2     |

#@Rest @Bug @Ignore
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using CROSS Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O CROSS JOIN [Mock].[ReferenceTable1] P Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 3     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 3     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 3     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 3     |
#
#@Rest @Bug @Ignore
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using LEFT Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O LEFT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 4     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 4     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 4     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 4     |
#
#@Rest @Bug @Ignore
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using RIGHT Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O RIGHT JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 5     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 5     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 5     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 5     |
#
#@Rest @Bug @Ignore
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using INNER Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O INNER JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 6     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 6     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 6     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 6     |
#
#@Rest @Bug @Ignore
#Scenario: RT - As ViewSelected EditSelected View Edit RF, Delete a row using FULL Join
#	When As User ViewSelected EditSelected View Edit RF Run cql statement DELETE O FROM [Mock].[EmployeeDelete5] O FULL JOIN [Mock].[ReferenceTable1] P ON O.[Id] = P.[Id] Where O.[Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 7     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate text result Deleted ByViewSelected EditSelected View Edit RF (ViewSelected EditSelected View Edit RF) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 7     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select [Deleted] from [Mock].[EmployeeDelete5] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 7     |
#	Then As User ViewSelected EditSelected View Edit RF Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete5] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 7     |