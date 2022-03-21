Feature: RT - Delete - Admin

@Rest
Scenario: RT - As Admin, Delete a row using where clause
	When As User Admin Run cql statement DELETE FROM [Mock].[EmployeeDelete1] Where [Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: RT - As Admin, Delete a row using subquery
	When As User Admin Run cql statement DELETE FROM [Mock].[EmployeeDelete1] Where [Id] = (SELECT P.[Id] FROM [Mock].[EmployeeDelete1] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Name]=P.[Name] WHERE E.[Name] = @data1); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value       |
		| data1 | Automation2 |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: RT - As Admin, Delete a row using CROSS Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O CROSS JOIN [Mock].[ReverseEmployee1] P Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: RT - As Admin, Delete a row using LEFT Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O LEFT JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: RT - As Admin, Delete a row using RIGHT Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O RIGHT JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |

@Rest
Scenario: RT - As Admin, Delete a row using INNER Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O INNER JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |

@Rest
Scenario: RT - As Admin, Delete a row using FULL Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O FULL JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |

@Rest
Scenario: RT - As Admin, Delete rows using where clause
	When As User Admin Run cql statement DELETE FROM [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |

@Rest
Scenario: RT - As Admin, Delete rows using subquery
	When As User Admin Run cql statement DELETE FROM [Mock].[EmployeeDelete1] Where [Id] IN (SELECT P.[Id] FROM [Mock].[EmployeeDelete1] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Id]=P.[Id] WHERE E.[Id] BETWEEN @data1 AND @data2); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 11     |
		| data2 | 13     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 11     |
		| data2 | 13     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 11     |
		| data2 | 13     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 11     |
		| data2 | 13     |

@Rest
Scenario: RT - As Admin, Delete rows using CROSS Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O CROSS JOIN [Mock].[ReverseEmployee1] P WHERE O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 14     |
		| data2 | 16     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 14     |
		| data2 | 16     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 14     |
		| data2 | 16     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 14     |
		| data2 | 16     |

@Rest
Scenario: RT - As Admin, Delete rows using LEFT Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O LEFT JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 17     |
		| data2 | 19     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 17     |
		| data2 | 19     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 17     |
		| data2 | 19     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 17     |
		| data2 | 19     |

@Rest
Scenario: RT - As Admin, Delete rows using RIGHT Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O RIGHT JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 20     |
		| data2 | 22     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 20     |
		| data2 | 22     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 20     |
		| data2 | 22     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 20     |
		| data2 | 22     |

@Rest
Scenario: RT - As Admin, Delete rows using INNER Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O INNER JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 23     |
		| data2 | 25     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 23     |
		| data2 | 25     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 23     |
		| data2 | 25     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 23     |
		| data2 | 25     |

@Rest
Scenario: RT - As Admin, Delete rows using FULL Join
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete1] O FULL JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 26     |
		| data2 | 28     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 26     |
		| data2 | 28     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 26     |
		| data2 | 28     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete1] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 26     |
		| data2 | 28     |

@Rest
Scenario: RT - As Admin, Delete a row using where clause - No Delete Rows access 
	When As User Admin Run cql statement DELETE FROM [Mock].[EmployeeDelete3] Where [Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: RT - As Admin, Delete a row using subquery - No Delete Rows access
	When As User Admin Run cql statement DELETE FROM [Mock].[EmployeeDelete3] Where [Id] = (SELECT P.[Id] FROM [Mock].[EmployeeDelete3] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Name]=P.[Name] WHERE E.[Name] = @data1); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value       |
		| data1 | Automation2 |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: RT - As Admin, Delete a row using CROSS Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O CROSS JOIN [Mock].[ReverseEmployee1] P Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: RT - As Admin, Delete a row using LEFT Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O LEFT JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: RT - As Admin, Delete a row using RIGHT Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O RIGHT JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |

@Rest
Scenario: RT - As Admin, Delete a row using INNER Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O INNER JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 6     |

@Rest
Scenario: RT - As Admin, Delete a row using FULL Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O FULL JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] = @data1; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate text result Deleted ByAdministrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] = @data1; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] = @data1 and [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 7     |

@Rest
Scenario: RT - As Admin, Delete rows using where clause - No Delete Rows access
	When As User Admin Run cql statement DELETE FROM [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 8     |
		| data2 | 10    |

@Rest
Scenario: RT - As Admin, Delete rows using subquery - No Delete Rows access
	When As User Admin Run cql statement DELETE FROM [Mock].[EmployeeDelete3] Where [Id] IN (SELECT P.[Id] FROM [Mock].[EmployeeDelete3] as P LEFT JOIN [Mock].[ReferenceTable1] as E ON E.[Id]=P.[Id] WHERE E.[Id] BETWEEN @data1 AND @data2); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 11     |
		| data2 | 13     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 11     |
		| data2 | 13     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 11     |
		| data2 | 13     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 11     |
		| data2 | 13     |

@Rest
Scenario: RT - As Admin, Delete rows using CROSS Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O CROSS JOIN [Mock].[ReverseEmployee1] P WHERE O.[Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 14     |
		| data2 | 16     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 14     |
		| data2 | 16     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 14     |
		| data2 | 16     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 14     |
		| data2 | 16     |

@Rest
Scenario: RT - As Admin, Delete rows using LEFT Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O LEFT JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 17     |
		| data2 | 19     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 17     |
		| data2 | 19     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 17     |
		| data2 | 19     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 17     |
		| data2 | 19     |

@Rest
Scenario: RT - As Admin, Delete rows using RIGHT Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O RIGHT JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 20     |
		| data2 | 22     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 20     |
		| data2 | 22     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 20     |
		| data2 | 22     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 20     |
		| data2 | 22     |

@Rest
Scenario: RT - As Admin, Delete rows using INNER Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O INNER JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 23     |
		| data2 | 25     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 23     |
		| data2 | 25     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 23     |
		| data2 | 25     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 23     |
		| data2 | 25     |

@Rest
Scenario: RT - As Admin, Delete rows using FULL Join - No Delete Rows access
	When As User Admin Run cql statement DELETE O FROM [Mock].[EmployeeDelete3] O FULL JOIN [Mock].[ReverseEmployee1] P ON O.[Cinchy Id] = P.[Cinchy Id] Where O.[Cinchy Id] BETWEEN @data1 AND @data2; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 26     |
		| data2 | 28     |
	Then As User Admin Run cql statement Select [Deleted By] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate text result Deleted ByAdministrator (admin)Administrator (admin)Administrator (admin) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 26     |
		| data2 | 28     |
	Then As User Admin Run cql statement Select [Deleted] from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2; and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 26     |
		| data2 | 28     |
	Then As User Admin Run cql statement Select COUNT(*) as COUNT from [Mock].[EmployeeDelete3] Where [Id] BETWEEN @data1 AND @data2 AND [Deleted] IS NULL; and validate text result COUNT0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value  |
		| data1 | 26     |
		| data2 | 28     |