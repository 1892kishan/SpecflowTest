Feature: Function Calculated Cache

@Rest
Scenario: As Admin Verify Function CAST against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	Then As User Admin Run cql statement SELECT [Cast Function],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	Then As User Admin Run cql statement SELECT [Cast Function],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |

@Rest
Scenario: As Admin Verify Function CONVERT against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	Then As User Admin Run cql statement SELECT [Convert Function],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	Then As User Admin Run cql statement SELECT [Convert Function],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |

@Rest
Scenario: As Admin Verify Function TRYCAST against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	Then As User Admin Run cql statement SELECT [TryCast Function],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	Then As User Admin Run cql statement SELECT [TryCast Function],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |

@Rest
Scenario: As Admin Verify Function TRYCONVERT against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	Then As User Admin Run cql statement SELECT [TryConvert Function],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	Then As User Admin Run cql statement SELECT [TryConvert Function],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |

@Rest
Scenario: As Admin Verify Function TRYPARSE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	Then As User Admin Run cql statement SELECT [TryParse],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	Then As User Admin Run cql statement SELECT [TryParse],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |

@Rest
Scenario: As Admin Verify Function ISJSON against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	Then As User Admin Run cql statement SELECT [ISJSON],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	Then As User Admin Run cql statement SELECT [ISJSON],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |

@Rest
Scenario: As Admin Verify Function CHOOSE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then As User Admin Run cql statement SELECT [CHOOSE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then As User Admin Run cql statement SELECT [CHOOSE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |

@Rest
Scenario: As Admin Verify Function CHARINDEX against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	Then As User Admin Run cql statement SELECT [CHARINDEX],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	Then As User Admin Run cql statement SELECT [CHARINDEX],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |

@Rest
Scenario: As Admin Verify Function CONCAT against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	Then As User Admin Run cql statement SELECT [CONCAT],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	Then As User Admin Run cql statement SELECT [CONCAT],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |

@Rest
Scenario: As Admin Verify Function CONCAT_WS against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	Then As User Admin Run cql statement SELECT [CONCAT_WS],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	Then As User Admin Run cql statement SELECT [CONCAT_WS],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |

@Rest
Scenario: As Admin Verify Function DIFFERENCE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	Then As User Admin Run cql statement SELECT [DIFFERENCE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	Then As User Admin Run cql statement SELECT [DIFFERENCE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |

@Rest
Scenario: As Admin Verify Function FORMAT against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	Then As User Admin Run cql statement SELECT [FORMAT],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	Then As User Admin Run cql statement SELECT [FORMAT],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction24.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |

@Rest
Scenario: As Admin Verify Function LEFT against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	Then As User Admin Run cql statement SELECT [LEFT],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	Then As User Admin Run cql statement SELECT [LEFT],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction26.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |

@Rest
Scenario: As Admin Verify Function LEN against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	Then As User Admin Run cql statement SELECT [LEN],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction27.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	Then As User Admin Run cql statement SELECT [LEN],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |

@Rest
Scenario: As Admin Verify Function LOWER against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	Then As User Admin Run cql statement SELECT [LOWER],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	Then As User Admin Run cql statement SELECT [LOWER],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |

@Rest
Scenario: As Admin Verify Function LTRIM against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	Then As User Admin Run cql statement SELECT [LTRIM],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction31.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	Then As User Admin Run cql statement SELECT [LTRIM],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction32.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |

@Rest
Scenario: As Admin Verify Function RTRIM against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	Then As User Admin Run cql statement SELECT [RTRIM],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction33.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	Then As User Admin Run cql statement SELECT [RTRIM],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction34.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |

@Rest
Scenario: As Admin Verify Function NCHAR against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	Then As User Admin Run cql statement SELECT [NCHAR],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction35.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	Then As User Admin Run cql statement SELECT [NCHAR],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction36.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |

@Rest
Scenario: As Admin Verify Function PATINDEX against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	Then As User Admin Run cql statement SELECT [PATINDEX],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction37.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	Then As User Admin Run cql statement SELECT [PATINDEX],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction38.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |

@Rest
Scenario: As Admin Verify Function QUOTENAME against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	Then As User Admin Run cql statement SELECT [QUOTENAME],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction39.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	Then As User Admin Run cql statement SELECT [QUOTENAME],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction40.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |

@Rest
Scenario: As Admin Verify Function REPLACE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	Then As User Admin Run cql statement SELECT [REPLACE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction41.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	Then As User Admin Run cql statement SELECT [REPLACE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction42.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |

@Rest
Scenario: As Admin Verify Function REPLICATE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 25    |
	Then As User Admin Run cql statement SELECT [REPLICATE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction43.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 25    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 25    |
	Then As User Admin Run cql statement SELECT [REPLICATE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction44.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 25    |

@Rest
Scenario: As Admin Verify Function REVERSE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 26    |
	Then As User Admin Run cql statement SELECT [REVERSE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction45.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 26    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 26    |
	Then As User Admin Run cql statement SELECT [REVERSE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction46.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 26    |

@Rest
Scenario: As Admin Verify Function RIGHT against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 27    |
	Then As User Admin Run cql statement SELECT [RIGHT],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction47.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 27    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 27    |
	Then As User Admin Run cql statement SELECT [RIGHT],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction48.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 27    |

@Rest
Scenario: As Admin Verify Function SOUNDEX against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 28    |
	Then As User Admin Run cql statement SELECT [SOUNDEX],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction49.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 28    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 28    |
	Then As User Admin Run cql statement SELECT [SOUNDEX],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction50.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 28    |

@Rest
Scenario: As Admin Verify Function SPACE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 29    |
	Then As User Admin Run cql statement SELECT [SPACE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction51.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 29    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 29    |
	Then As User Admin Run cql statement SELECT [SPACE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction52.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 29    |

@Rest
Scenario: As Admin Verify Function STR against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 30    |
	Then As User Admin Run cql statement SELECT [STR],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction53.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 30    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 30    |
	Then As User Admin Run cql statement SELECT [STR],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction54.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 30    |

@Rest
Scenario: As Admin Verify Function STRING_ESCAPE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 31    |
	Then As User Admin Run cql statement SELECT [STRING_ESCAPE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction55.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 31    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 31    |
	Then As User Admin Run cql statement SELECT [STRING_ESCAPE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction56.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 31    |

@Rest
Scenario: As Admin Verify Function STUFF against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 32    |
	Then As User Admin Run cql statement SELECT [STUFF],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction57.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 32    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 32    |
	Then As User Admin Run cql statement SELECT [STUFF],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction58.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 32    |

@Rest
Scenario: As Admin Verify Function SUBSTRING against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 33    |
	Then As User Admin Run cql statement SELECT [SUBSTRING],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction59.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 33    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 33    |
	Then As User Admin Run cql statement SELECT [SUBSTRING],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction60.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 33    |

@Rest
Scenario: As Admin Verify Function TRANSLATE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 34    |
	Then As User Admin Run cql statement SELECT [TRANSLATE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction61.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 34    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 34    |
	Then As User Admin Run cql statement SELECT [TRANSLATE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction62.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 34    |

@Rest
Scenario: As Admin Verify Function TRIM against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 35    |
	Then As User Admin Run cql statement SELECT [TRIM],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction63.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 35    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 35    |
	Then As User Admin Run cql statement SELECT [TRIM],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction64.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 35    |

@Rest
Scenario: As Admin Verify Function UNICODE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 36    |
	Then As User Admin Run cql statement SELECT [UNICODE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction65.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 36    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 36    |
	Then As User Admin Run cql statement SELECT [UNICODE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction66.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 36    |

@Rest
Scenario: As Admin Verify Function UPPER against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 37    |
	Then As User Admin Run cql statement SELECT [UPPER],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction67.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 37    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 37    |
	Then As User Admin Run cql statement SELECT [UPPER],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction68.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 37    |

@Rest
Scenario: As Admin Verify Function IFF against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 38    |
	Then As User Admin Run cql statement SELECT [IFF],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction69.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 38    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 38    |
	Then As User Admin Run cql statement SELECT [IFF],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction70.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 38    |

@Rest
Scenario: As Admin Verify Function ASCII against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 39    |
	Then As User Admin Run cql statement SELECT [ASCII],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction71.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 39    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 39    |
	Then As User Admin Run cql statement SELECT [ASCII],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction72.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 39    |

@Rest
Scenario: As Admin Verify Function CHAR against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 40    |
	Then As User Admin Run cql statement SELECT [CHAR],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction73.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 40    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 40    |
	Then As User Admin Run cql statement SELECT [CHAR],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction74.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 40    |

@Rest
Scenario: As Admin Verify Function COALESCE against Calculated Cache column
	When As User Admin Run cql from file insertFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 41    |
	Then As User Admin Run cql statement SELECT [COALESCE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction75.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 41    |
	When As User Admin Run cql from file updateFunction1.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 41    |
	Then As User Admin Run cql statement SELECT [COALESCE],[Name], [Date], [Id], [Number Decimal], [Number Percentage], [YesNo1], [Choice Column], [Link Text], [Link YesNo], [Link Number], [Link Date], [Link Choice], [Link Calculated],[Multi Link Text], [Multi Link Calculated] FROM [Mock].[FunctionsCalCache2] WHERE [Id] = @value and validate unordered result resultFunction76.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 41    |

#Mathematical Function
###################################################
@Rest
Scenario: As Admin Verify Function ABS against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 2     |
	Then As User Admin Run cql statement SELECT [ABS],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ABS,Id,Number1,Number6,Number7 345345,2,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 2     |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 2     |
	Then As User Admin Run cql statement SELECT [ABS],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ABS,Id,Number1,Number6,Number7 98989,2,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 2     |

@Rest
Scenario: As Admin Verify Function ACOS against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 3     |
	Then As User Admin Run cql statement SELECT [ACOS],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ACOS,Id,Number1,Number6,Number7 0.964448682141778,3,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 3     |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 3     |
	Then As User Admin Run cql statement SELECT [ACOS],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ACOS,Id,Number1,Number6,Number7 1.33198485111975,3,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 3     |

@Rest
Scenario: As Admin Verify Function ASIN against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	Then As User Admin Run cql statement SELECT [ASIN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ASIN,Id,Number1,Number6,Number7 0.606347644653119,4,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	Then As User Admin Run cql statement SELECT [ASIN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ASIN,Id,Number1,Number6,Number7 0.238811475675147,4,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |

@Rest
Scenario: As Admin Verify Function ATAN against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	Then As User Admin Run cql statement SELECT [ATAN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ATAN,Id,Number1,Number6,Number7 0.517970402356089,5,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	Then As User Admin Run cql statement SELECT [ATAN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ATAN,Id,Number1,Number6,Number7 0.232278439508585,5,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |

@Rest
Scenario: As Admin Verify Function ATN2 against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	Then As User Admin Run cql statement SELECT [ATN2],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ATN2,Id,Number1,Number6,Number7 0.517970402356089,6,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	Then As User Admin Run cql statement SELECT [ATN2],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ATN2,Id,Number1,Number6,Number7 0.232278439508585,6,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |

@Rest
Scenario: As Admin Verify Function CEILING against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	Then As User Admin Run cql statement SELECT [CEILING],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result CEILING,Id,Number1,Number6,Number7 1,7,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	Then As User Admin Run cql statement SELECT [CEILING],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result CEILING,Id,Number1,Number6,Number7 1,7,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |

@Rest
Scenario: As Admin Verify Function COS against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	Then As User Admin Run cql statement SELECT [COS],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result COS,Id,Number1,Number6,Number7 0.841971120214343,8,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	Then As User Admin Run cql statement SELECT [COS],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result COS,Id,Number1,Number6,Number7 0.972152735315254,8,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |

@Rest
Scenario: As Admin Verify Function COT against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	Then As User Admin Run cql statement SELECT [COT],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result COT,Id,Number1,Number6,Number7 1.56058545985245,9,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	Then As User Admin Run cql statement SELECT [COT],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result COT,Id,Number1,Number6,Number7 4.14832675908923,9,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |

@Rest
Scenario: As Admin Verify Function DEGREES against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then As User Admin Run cql statement SELECT [DEGREES],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result DEGREES,Id,Number1,Number6,Number7 32.6511458711202,10,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then As User Admin Run cql statement SELECT [DEGREES],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result DEGREES,Id,Number1,Number6,Number7 13.5532020522606,10,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |

@Rest
Scenario: As Admin Verify Function EXP against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	Then As User Admin Run cql statement SELECT [EXP],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result EXP,Id,Number1,Number6,Number7 1.76803719165826,11,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	Then As User Admin Run cql statement SELECT [EXP],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result EXP,Id,Number1,Number6,Number7 1.26686836384219,11,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |

@Rest
Scenario: As Admin Verify Function FLOOR against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	Then As User Admin Run cql statement SELECT [FLOOR],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result FLOOR,Id,Number1,Number6,Number7 0,12,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	Then As User Admin Run cql statement SELECT [FLOOR],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result FLOOR,Id,Number1,Number6,Number7 0,12,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |

@Rest
Scenario: As Admin Verify Function LOG against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	Then As User Admin Run cql statement SELECT [LOG],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result LOG,Id,Number1,Number6,Number7 -0.562347014340937,13,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	Then As User Admin Run cql statement SELECT [LOG],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result LOG,Id,Number1,Number6,Number7 -1.44160413181284,13,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |

@Rest
Scenario: As Admin Verify Function LOG10 against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	Then As User Admin Run cql statement SELECT [LOG10],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result LOG10,Id,Number1,Number6,Number7 -0.244224205243038,14,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	Then As User Admin Run cql statement SELECT [LOG10],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result LOG10,Id,Number1,Number6,Number7 -0.626080719535246,14,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |

@Rest
Scenario: As Admin Verify Function PI against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	Then As User Admin Run cql statement SELECT [PI],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result PI,Id,Number1,Number6,Number7 3.14159265358979,15,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	Then As User Admin Run cql statement SELECT [PI],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result PI,Id,Number1,Number6,Number7 3.14159265358979,15,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |

@Rest
Scenario: As Admin Verify Function POWER against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	Then As User Admin Run cql statement SELECT [POWER],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result POWER,Id,Number1,Number6,Number7 12321,16,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	Then As User Admin Run cql statement SELECT [POWER],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result POWER,Id,Number1,Number6,Number7 49284,16,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |

@Rest
Scenario: As Admin Verify Function RADIANS against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	Then As User Admin Run cql statement SELECT [RADIANS],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result RADIANS,Id,Number1,Number6,Number7 0.00994610780834009,17,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	Then As User Admin Run cql statement SELECT [RADIANS],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result RADIANS,Id,Number1,Number6,Number7 0.00412854143900755,17,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |

@Rest
Scenario: As Admin Verify Function RAND against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	Then As User Admin Run cql statement SELECT CASE WHEN [RAND] IS NOT NULL THEN '1' ELSE '0' END,[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result Column1,Id,Number1,Number6,Number7 1,18,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	Then As User Admin Run cql statement SELECT CASE WHEN [RAND] IS NOT NULL THEN '1' ELSE '0' END,[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result Column1,Id,Number1,Number6,Number7 1,18,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |

@Rest
Scenario: As Admin Verify Function ROUND against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	Then As User Admin Run cql statement SELECT [ROUND],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ROUND,Id,Number1,Number6,Number7 0.6,19,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	Then As User Admin Run cql statement SELECT [ROUND],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result ROUND,Id,Number1,Number6,Number7 0.2,19,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |

@Rest
Scenario: As Admin Verify Function SIGN against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	Then As User Admin Run cql statement SELECT [SIGN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result SIGN,Id,Number1,Number6,Number7 1,20,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	Then As User Admin Run cql statement SELECT [SIGN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result SIGN,Id,Number1,Number6,Number7 1,20,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |

@Rest
Scenario: As Admin Verify Function SIN against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	Then As User Admin Run cql statement SELECT [SIN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result SIN,Id,Number1,Number6,Number7 0.539522597047616,21,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	Then As User Admin Run cql statement SELECT [SIN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result SIN,Id,Number1,Number6,Number7 0.234348158130313,21,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |

@Rest
Scenario: As Admin Verify Function SQRT against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	Then As User Admin Run cql statement SELECT [SQRT],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result SQRT,Id,Number1,Number6,Number7 10.5356537528527,22,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	Then As User Admin Run cql statement SELECT [SQRT],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result SQRT,Id,Number1,Number6,Number7 14.8996644257513,22,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |

@Rest
Scenario: As Admin Verify Function SQUARE against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	Then As User Admin Run cql statement SELECT [SQUARE],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result SQUARE,Id,Number1,Number6,Number7 12321,23,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	Then As User Admin Run cql statement SELECT [SQUARE],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result SQUARE,Id,Number1,Number6,Number7 49284,23,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |

@Rest
Scenario: As Admin Verify Function TAN against Calculated Cache column
	When As User Admin Run cql statement Insert into [Mock].[MathematicalFunction1Cache]([Id], [Number1], [Number6], [Number7]) Values (@value, 111, -345345, 0.56987); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	Then As User Admin Run cql statement SELECT [TAN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result TAN,Id,Number1,Number6,Number7 1.72034866513036,24,111,-345345,0.56987 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	When As User Admin Run cql statement UPDATE [Mock].[MathematicalFunction1Cache] SET [Number1] = 222, [Number6] = -98989, [Number7] = 0.236548 WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	Then As User Admin Run cql statement SELECT [TAN],[Id],[Number1],[Number6],[Number7] from [Mock].[MathematicalFunction1Cache] WHERE [Id] = @value and [Deleted] is null and validate number result TAN,Id,Number1,Number6,Number7 -1.75581657285624,24,222,-98989,0.236548 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |

@Rest
Scenario: As Admin Verify Function STAsText against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STAsText', 'LINESTRING (-122.36 47.656, -122.343 47.656)', 'LINESTRING (-122.36 47.656, -122.343 47.656)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	Then As User Admin Run cql statement SELECT [STAsTextGeometry],[STAsTextGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STAsTextGeometry,STAsTextGeographyLINESTRING (-122.36 47.656, -122.343 47.656),LINESTRING (-122.36 47.656, -122.343 47.656) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING (-122.36 47.787, -122.343 47.787)', [Geography] = 'LINESTRING (-122.36 47.787, -122.343 47.787)' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |
	Then As User Admin Run cql statement SELECT [STAsTextGeometry],[STAsTextGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STAsTextGeometry,STAsTextGeographyLINESTRING (-122.36 47.787, -122.343 47.787),LINESTRING (-122.36 47.787, -122.343 47.787) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 1     |

@Rest
Scenario: As Admin Verify Function STArea against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STArea', 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))', 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 2     |
	Then As User Admin Run cql statement SELECT [STAreaGeometry],[STAreaGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STAreaGeometry,STAreaGeography7e-005,584662 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 2     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON((1 1, 3 3, 3 1, 1 1))', [Geography] = 'POLYGON((1 1, 3 3, 3 1, 1 1))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 2     |
	Then As User Admin Run cql statement SELECT [STAreaGeometry],[STAreaGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STAreaGeometry,STAreaGeography2,5.10041e+014 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 2     |

@Rest @Bug @Ignore 
Scenario: As Admin Verify Function STAsBinary against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STAsBinary', 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))', 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 3     |
	Then As User Admin Run cql statement SELECT [STAsBinaryGeometry],[STAsBinaryGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STAsBinaryGeometry,STAsBinaryGeographýĀԀ퓽庖�ؤ閁䟓荀쫀䖡庖僀鞍ቮ䟓荀쫀䖡庖什ၢ㥘䟔퓽庖什ၢ㥘䟔퓽庖�ؤ閁䟓@,́ĀԀ퓽庖�ؤ閁䟓荀쫀䖡庖僀鞍ቮ䟓荀쫀䖡庖什ၢ㥘䟔퓽庖什ၢ㥘䟔퓽庖�ؤ閁䟓@ with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 3     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING EMPTY', [Geography] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 3     |
	Then As User Admin Run cql statement SELECT [STAsBinaryGeometry],[STAsBinaryGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STAsBinaryGeometry,STAsBinary'LINESTRING EMPTY','LINESTRING EMPTY' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 3     |

@Rest
Scenario: As Admin Verify Function StBoundary against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry]) Values (@value, 'StBoundary', 'CURVEPOLYGON (CIRCULARSTRING (0 0, 2 2, 0 2, -2 2, 0 0))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	Then As User Admin Run cql statement SELECT [StBoundaryGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result StBoundaryGeometryCIRCULARSTRING (-1.0021693755838403 -0.41421189848252316, -0.4568002948968875 -0.3057312435474131, 0 0, 2 2, 0 2, -2.307391611736449 1.5391912217025898, -1.0021693755838403 -0.41421189848252316) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'CURVEPOLYGON (CIRCULARSTRING (1 3, 3 5, 4 7, 7 3, 1 3))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
	Then As User Admin Run cql statement SELECT [StBoundaryGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result StBoundaryGeometryCIRCULARSTRING (3.998830271531006 0.75000021892237267, 7.1249987510726847 3.877793885128757, 4 7, 3 5, 1 3, 2.1272358574594135 1.3733246680646061, 3.998830271531006 0.75000021892237267) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 4     |
		
@Rest
Scenario: As Admin Verify Function STCentroid against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry]) Values (@value, 'STCentroid', 'POLYGON ((0 0, 3 0, 3 3, 0 3, 0 0), (2 2, 2 1, 1 1, 1 2, 2 2))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	Then As User Admin Run cql statement SELECT [STCentroidGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STCentroidGeometryPOINT (1.5000000000000053 1.5000000000000053) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON((-5 -5, -5 5, 5 5, 5 -5, -5 -5),(0 0, 3 0, 3 3, 0 3, 0 0))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
	Then As User Admin Run cql statement SELECT [STCentroidGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STCentroidGeometryPOINT (-0.14835164835163112 -0.14835164835163112) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 5     |
		
@Rest
Scenario: As Admin Verify Function STCurveN(curve_int) against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STCurveN(curve_int)', 'CIRCULARSTRING (-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)', 'CIRCULARSTRING (-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	Then As User Admin Run cql statement SELECT [STCurveN(curve_int)Geometry], [STCurveN(curve_int)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STCurveN(curve_int)Geometry,STCurveN(curve_int)GeographyCIRCULARSTRING (-122.348 47.658, -122.358 47.658, -122.358 47.653),CIRCULARSTRING (-122.348 47.658, -122.358 47.658, -122.358 47.653) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'CIRCULARSTRING(2 1, 1 2, 0 1, 1 0, 2 1)', [Geography] = 'CIRCULARSTRING(2 1, 1 2, 0 1, 1 0, 2 1)' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
	Then As User Admin Run cql statement SELECT [STCurveN(curve_int)Geometry], [STCurveN(curve_int)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STCurveN(curve_int)Geometry,STCurveN(curve_int)GeographyCIRCULARSTRING (0 1, 1 0, 2 1),CIRCULARSTRING (0 1, 1 0, 2 1) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 6     |
		
@Rest
Scenario: As Admin Verify Function STCurveToLine against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STCurveToLine', 'CIRCULARSTRING (-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)', 'CIRCULARSTRING (-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	Then As User Admin Run cql statement SELECT [STCurveToLineGeometry], [STCurveToLineGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STCurveToLineGeometry,STCurveToLineGeography65,97 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'CIRCULARSTRING(2 1, 1 2, 0 1, 1 0, 2 1)', [Geography] = 'CIRCULARSTRING(2 1, 1 2, 0 1, 1 0, 2 1)' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
	Then As User Admin Run cql statement SELECT [STCurveToLineGeometry], [STCurveToLineGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STCurveToLineGeometry,STCurveToLineGeography65,129 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 7     |
		
@Rest
Scenario: As Admin Verify Function STEndpoint against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STEndpoint', 'LINESTRING (-122.36 47.656, -122.343 47.656)', 'LINESTRING (-122.36 47.656, -122.343 47.656)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	Then As User Admin Run cql statement SELECT [STEndpointGeometry], [STEndpointGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STEndpointGeometry,STEndpointGeographyPOINT (-122.343 47.656),POINT (-122.343 47.656) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'CIRCULARSTRING(2 1, 1 2, 0 1, 1 0, 2 1)', [Geography] = 'CIRCULARSTRING(2 1, 1 2, 0 1, 1 0, 2 1)' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
	Then As User Admin Run cql statement SELECT [STEndpointGeometry], [STEndpointGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STEndpointGeometry,STEndpointGeographyPOINT (2 1),POINT (2 1) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 8     |
		
@Rest
Scenario: As Admin Verify Function STEnvelope against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STEnvelope', 'LINESTRING (0 0, 2 3)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	Then As User Admin Run cql statement SELECT [STEnvelopeGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STEnvelopeGeometryPOLYGON ((0 0, 2 0, 2 3, 0 3, 0 0)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING (0 0, 2 4)' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
	Then As User Admin Run cql statement SELECT [STEnvelopeGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STEnvelopeGeometryPOLYGON ((0 0, 2 0, 2 4, 0 4, 0 0)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 9     |
		
@Rest
Scenario: As Admin Verify Function STExteriorRing against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STExteriorRing', 'POLYGON ((0 0, 3 0, 3 3, 0 3, 0 0), (2 2, 2 1, 1 1, 1 2, 2 2))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then As User Admin Run cql statement SELECT [STExteriorRingGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STExteriorRingGeometryLINESTRING (0 0, 3 0, 3 3, 0 3, 0 0) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON((-5 -5, -5 5, 5 5, 5 -5, -5 -5),(3 0, 6 0, 6 3, 3 3, 3 0))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
	Then As User Admin Run cql statement SELECT [STExteriorRingGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STExteriorRingGeometryLINESTRING (0 0, 3 0, 3 3, 0 3, 0 0) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 10    |
		
@Rest
Scenario: As Admin Verify Function STGeometryN(expression) against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STGeometryN(expression)', 'MULTIPOINT ((-122.36 47.656), (-122.343 47.656))', 'MULTIPOINT ((-122.36 47.656), (-122.343 47.656))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	Then As User Admin Run cql statement SELECT [STGeometryN(expression)Geometry], [STGeometryN(expression)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STGeometryN(expression)Geometry,STGeometryN(expression)GeographyPOINT (-122.343 47.656),POINT (-122.343 47.656) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'MULTIPOINT ((-122.36 47.787), (-122.343 47.787))', [Geography] = 'MULTIPOINT ((-122.36 47.787), (-122.343 47.787))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
	Then As User Admin Run cql statement SELECT [STGeometryN(expression)Geometry], [STGeometryN(expression)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STGeometryN(expression)Geometry,STGeometryN(expression)GeographyPOINT (-122.343 47.787),POINT (-122.343 47.787) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 11    |
		
@Rest
Scenario: As Admin Verify Function STGeometryType: Text against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STGeometryType: Text', 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))', 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	Then As User Admin Run cql statement SELECT [STGeometryType: TextGeometry], [STGeometryType: TextGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STGeometryType: TextGeometry,STGeometryType: TextGeographyPolygon,Polygon with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON ((-5 -5, -5 5, 5 5, 5 -5, -5 -5), (0 0, 3 0, 3 3, 0 3, 0 0))', [Geography] = 'POLYGON ((-5 -5, -5 5, 5 5, 5 -5, -5 -5), (0 0, 3 0, 3 3, 0 3, 0 0))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
	Then As User Admin Run cql statement SELECT [STGeometryType: TextGeometry], [STGeometryType: TextGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STGeometryType: TextGeometry,STGeometryType: TextGeographyPolygon,Polygon with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 12    |
		
@Rest
Scenario: As Admin Verify Function STInteriorRingN(expression) against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STInteriorRingN(expression)', 'POLYGON ((0 0, 3 0, 3 3, 0 3, 0 0), (2 2, 2 1, 1 1, 1 2, 2 2))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	Then As User Admin Run cql statement SELECT [STInteriorRingN(expression)Geometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STInteriorRingN(expression)GeometryLINESTRING (2 2, 2 1, 1 1, 1 2, 2 2) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON((-5 -5, -5 5, 5 5, 5 -5, -5 -5),(3 0, 6 0, 6 3, 3 3, 3 0))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
	Then As User Admin Run cql statement SELECT [STInteriorRingN(expression)Geometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STInteriorRingN(expression)GeometryLINESTRING (2 2, 2 1, 1 1, 1 2, 2 2) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 13    |
		
@Rest
Scenario: As Admin Verify Function STIsClosed against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STIsClosed', 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))', 'POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	Then As User Admin Run cql statement SELECT [STIsClosedGeometry], [STIsClosedGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STIsClosedGeometry,STIsClosedGeography1,1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON ((-5 -5, -5 5, 5 5, 5 -5, -5 -5), (0 0, 3 0, 3 3, 0 3, 0 0))', [Geography] = 'POLYGON ((-5 -5, -5 5, 5 5, 5 -5, -5 -5), (0 0, 3 0, 3 3, 0 3, 0 0))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
	Then As User Admin Run cql statement SELECT [STIsClosedGeometry], [STIsClosedGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STIsClosedGeometry,STIsClosedGeography1,1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 14    |
		
@Rest
Scenario: As Admin Verify Function STIsEmpty against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STIsEmpty', 'POLYGON ((1 1, 3 3, 3 1, 1 1))', 'POLYGON ((1 1, 3 3, 3 1, 1 1))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	Then As User Admin Run cql statement SELECT [STIsEmptyGeometry], [STIsEmptyGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STIsEmptyGeometry,STIsEmptyGeography0,0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON EMPTY', [Geography] = 'POLYGON EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
	Then As User Admin Run cql statement SELECT [STIsEmptyGeometry], [STIsEmptyGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STIsEmptyGeometry,STIsEmptyGeography1,1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 15    |
		
@Rest
Scenario: As Admin Verify Function STIsRing against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STIsRing', 'LINESTRING (0 0, 2 2, 0 2, 2 0)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	Then As User Admin Run cql statement SELECT [STIsRingGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STIsRingGeometry0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
	Then As User Admin Run cql statement SELECT [STIsRingGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STIsRingGeometry0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 16    |
		
@Rest
Scenario: As Admin Verify Function STIsSimple against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STIsSimple', 'LINESTRING (0 0, 2 2, 0 2, 2 0)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	Then As User Admin Run cql statement SELECT [STIsSimpleGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STIsSimpleGeometry0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
	Then As User Admin Run cql statement SELECT [STIsSimpleGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STIsSimpleGeometry1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 17    |
		
@Rest
Scenario: As Admin Verify Function STLength against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STIsEmpty', 'POLYGON ((1 1, 3 3, 3 1, 1 1))', 'POLYGON ((1 1, 3 3, 3 1, 1 1))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	Then As User Admin Run cql statement SELECT [STLengthGeometry], [STLengthGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STLengthGeometry,STLengthGeography6.82843,757462 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON EMPTY', [Geography] = 'POLYGON EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
	Then As User Admin Run cql statement SELECT [STLengthGeometry], [STLengthGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STLengthGeometry,STLengthGeography0,0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 18    |
		
@Rest
Scenario: As Admin Verify Function STNumCurves against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STNumCurves', 'CIRCULARSTRING (-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)', 'CIRCULARSTRING (-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	Then As User Admin Run cql statement SELECT [STNumCurvesGeometry], [STNumCurvesGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STNumCurvesGeometry,STNumCurvesGeography2,2 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'CIRCULARSTRING EMPTY', [Geography] = 'CIRCULARSTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
	Then As User Admin Run cql statement SELECT [STNumCurvesGeometry], [STNumCurvesGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STNumCurvesGeometry,STNumCurvesGeography0,0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 19    |
		
@Rest
Scenario: As Admin Verify Function STNumGeometries against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STNumGeometries', 'MULTIPOINT ((-122.36 47.656), (-122.343 47.656))', 'MULTIPOINT ((-122.36 47.656), (-122.343 47.656))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	Then As User Admin Run cql statement SELECT [STNumGeometriesGeometry], [STNumGeometriesGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STNumGeometriesGeometry,STNumGeometriesGeography2,2 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'MULTIPOINT((2 3), (7 8 9.5))', [Geography] = 'MULTIPOINT((2 3), (7 8 9.5))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
	Then As User Admin Run cql statement SELECT [STNumGeometriesGeometry], [STNumGeometriesGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STNumGeometriesGeometry,STNumGeometriesGeography2,2 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 20    |
		
@Rest
Scenario: As Admin Verify Function STNumInteriorRing against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry]) Values (@value, 'STNumInteriorRing', 'POLYGON ((0 0, 3 0, 3 3, 0 3, 0 0), (2 2, 2 1, 1 1, 1 2, 2 2))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	Then As User Admin Run cql statement SELECT [STNumInteriorRingGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STNumInteriorRingGeometry1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON ((-5 -5, -5 5, 5 5, 5 -5, -5 -5), (0 0, 3 0, 3 3, 0 3, 0 0))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
	Then As User Admin Run cql statement SELECT [STNumInteriorRingGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STNumInteriorRingGeometry1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 21    |
		
@Rest
Scenario: As Admin Verify Function STNumPoints against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STNumPoints', 'LINESTRING (-122.36 47.656, -122.343 47.656)', 'LINESTRING (-122.36 47.656, -122.343 47.656)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	Then As User Admin Run cql statement SELECT [STNumPointsGeometry], [STNumPointsGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STNumPointsGeometry,STNumPointsGeography2,2 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING EMPTY', [Geography] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
	Then As User Admin Run cql statement SELECT [STNumPointsGeometry], [STNumPointsGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STNumPointsGeometry,STNumPointsGeography0,0 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 22    |
		
@Rest
Scenario: As Admin Verify Function STPointN(expression) against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STPointN(expression)', 'LINESTRING (-122.36 47.656, -122.343 47.656)', 'LINESTRING (-122.36 47.656, -122.343 47.656)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	Then As User Admin Run cql statement SELECT [STPointN(expression)Geometry], [STPointN(expression)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STPointN(expression)Geometry,STPointN(expression)GeographyPOINT (-122.343 47.656),POINT (-122.343 47.656) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING EMPTY', [Geography] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
	Then As User Admin Run cql statement SELECT [STPointN(expression)Geometry], [STPointN(expression)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STPointN(expression)Geometry,STPointN(expression)Geography, with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 23    |
		
@Rest
Scenario: As Admin Verify Function STPointOnSurface against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry]) Values (@value, 'STNumInteriorRing', 'POLYGON ((0 0, 3 0, 3 3, 0 3, 0 0), (2 2, 2 1, 1 1, 1 2, 2 2))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	Then As User Admin Run cql statement SELECT [STPointOnSurfaceGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STPointOnSurfaceGeometryPOINT (1.6666666666666714 2.6666666666666679) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
	Then As User Admin Run cql statement SELECT [STPointOnSurfaceGeometry] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STPointOnSurfaceGeometry with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 24    |
		
@Rest
Scenario: As Admin Verify Function STStartPoint against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STStartPoint', 'LINESTRING (-122.36 47.656, -122.343 47.656)', 'LINESTRING (-122.36 47.656, -122.343 47.656)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 25    |
	Then As User Admin Run cql statement SELECT [STStartPointGeometry], [STStartPointGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STStartPointGeometry,STStartPointGeographyPOINT (-122.36 47.656),POINT (-122.36 47.656) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 25    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING EMPTY', [Geography] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 25    |
	Then As User Admin Run cql statement SELECT [STStartPointGeometry], [STStartPointGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STStartPointGeometry,STStartPointGeography, with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 25    |
		
@Rest
Scenario: As Admin Verify Function AsTextZM against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'AsTextZM', 'POINT (1 2)', 'POINT (1 2)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 26    |
	Then As User Admin Run cql statement SELECT [AsTextZMGeometry], [AsTextZMGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result AsTextZMGeometry,AsTextZMGeographyPOINT (1 2),POINT (1 2) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 26    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = POINT  EMPTY, [Geography] = POINT  EMPTY WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 26    |
	Then As User Admin Run cql statement SELECT [AsTextZMGeometry], [AsTextZMGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result AsTextZMGeometry,AsTextZMGeographyPOINT (1 2),POINT (1 2) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 26    |
		
@Rest
Scenario: As Admin Verify Function CurveToLineWithTolerance(tolerance, relative) against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'AsTextZM', 'CIRCULARSTRING (0 0, 1 2.1082, 3 6.3246, 0 7, -3 6.3246, -1 2.1082, 0 0)', 'CIRCULARSTRING (0 0, 1 2.1082, 3 6.3246, 0 7, -3 6.3246, -1 2.1082, 0 0)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 27    |
	Then As User Admin Run cql statement SELECT [CurveToLineWithToleranceGeometry], [CurveToLineWithToleranceGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result CurveToLineWithToleranceGeometry,CurveToLineWithToleranceGeography7,1281 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 27    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = CIRCULARSTRING(1 1, 2 0, -1 1), [Geography] = CIRCULARSTRING(1 1, 2 0, -1 1) WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 27    |
	Then As User Admin Run cql statement SELECT [CurveToLineWithToleranceGeometry], [CurveToLineWithToleranceGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result CurveToLineWithToleranceGeometry,CurveToLineWithToleranceGeography7,1281 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 27    |
		
@Rest
Scenario: As Admin Verify Function EnvelopeAngle against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geography]) Values (@value, 'EnvelopeAngle', 'LINESTRING (-120 45, -120 0, -90 0)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 28    |
	Then As User Admin Run cql statement SELECT [EnvelopeAngleGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result EnvelopeAngleGeography31.3139 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 28    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geography] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 28    |
	Then As User Admin Run cql statement SELECT [EnvelopeAngleGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result EnvelopeAngleGeography with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 28    |
		
@Rest
Scenario: As Admin Verify Function EnvelopeCenter against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geography]) Values (@value, 'EnvelopeAngle', 'LINESTRING (-120 45, -120 0, -90 0)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 29    |
	Then As User Admin Run cql statement SELECT [EnvelopeCenterGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result EnvelopeCenterGeographyPOINT (-109.00356670520962 15.096664238555356) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 29    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geography] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 29    |
	Then As User Admin Run cql statement SELECT [EnvelopeCenterGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result EnvelopeCenterGeography with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 29    |
		
@Rest
Scenario: As Admin Verify Function InstanceOf(other_type) against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'InstanceOf(other_type)', 'MULTIPOINT ((-122.36 47.656), (-122.343 47.656))', 'MULTIPOINT ((-122.36 47.656), (-122.343 47.656))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 30    |
	Then As User Admin Run cql statement SELECT [InstanceOf(other_type)Geometry], [InstanceOf(other_type)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result InstanceOf(other_type)Geometry,InstanceOf(other_type)Geography1,1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 30    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'MULTIPOINT ((2 3), (7 8))', [Geography] = 'MULTIPOINT ((2 3), (7 8))' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 30    |
	Then As User Admin Run cql statement SELECT [InstanceOf(other_type)Geometry], [InstanceOf(other_type)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result InstanceOf(other_type)Geometry,InstanceOf(other_type)Geography1,1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 30    |
		
@Rest
Scenario: As Admin Verify Function Reduce(tolerance) against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'Reduce(tolerance)', 'LINESTRING (120 45, 120.1 45.1, 199.9 45.2, 120 46)', 'LINESTRING (120 45, 120.1 45.1, 199.9 45.2, 120 46)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 31    |
	Then As User Admin Run cql statement SELECT [Reduce(tolerance)Geometry], [Reduce(tolerance)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result Reduce(tolerance)Geometry,Reduce(tolerance)GeographyLINESTRING (120 45, 120 46),LINESTRING (120 45, 199.9 45.2, 120 46) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 31    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = LINESTRING (-122.36 47.656, -122.343 47.656), [Geography] = LINESTRING (-122.36 47.656, -122.343 47.656) WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 31    |
	Then As User Admin Run cql statement SELECT [Reduce(tolerance)Geometry], [Reduce(tolerance)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result Reduce(tolerance)Geometry,Reduce(tolerance)GeographyLINESTRING (120 45, 120 46),LINESTRING (120 45, 199.9 45.2, 120 46) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 31    |
		
@Rest
Scenario: As Admin Verify Function ReorientObject(other_instance) against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geography]) Values (@value, 'ReorientObject(other_instance)', 'POLYGON ((-10 -10, -10 10, 10 10, 10 -10, -10 -10))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 32    |
	Then As User Admin Run cql statement SELECT [ReorientObject(other_instance)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result ReorientObject(other_instance)GeographyPOLYGON ((10 10, -10 10, -10 -10, 10 -10, 10 10)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 32    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geography] = 'POLYGON EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 32    |
	Then As User Admin Run cql statement SELECT [ReorientObject(other_instance)Geography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result ReorientObject(other_instance)GeographyGEOMETRYCOLLECTION EMPTY with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 32    |
		
@Rest
Scenario: As Admin Verify Function ToString against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'Reduce(tolerance)', 'LINESTRING (-122.36 47.656, -122.343 47.656)', 'LINESTRING (-122.36 47.656, -122.343 47.656)'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 33    |
	Then As User Admin Run cql statement SELECT [ToStringGeometry], [ToStringGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result ToStringGeometry,ToStringGeographyLINESTRING (-122.36 47.656, -122.343 47.656), with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 33    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'LINESTRING EMPTY', [Geography] = 'LINESTRING EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 33    |
	Then As User Admin Run cql statement SELECT [ToStringGeometry], [ToStringGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result ToStringGeometry,ToStringGeographyLINESTRING EMPTY, with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 33    |
		
@Rest
Scenario: As Admin Verify Function STDimension against Calculated Cache column
	Given Cleanup Run cql statement Delete from [Mock].[SpatialCalCacheTable1]; with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds 
	When As User Admin Run cql statement Insert into [Mock].[SpatialCalCacheTable1]([Id], [Name], [Geometry], [Geography]) Values (@value, 'STDimension', 'POLYGON ((0 0, 3 0, 0 3, 0 0))', 'POLYGON ((0 0, 3 0, 0 3, 0 0))'); with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 34    |
	Then As User Admin Run cql statement SELECT [STDimensionGeometry], [STDimensionGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STDimensionGeometry,STDimensionGeography2,2 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 34    |
	When As User Admin Run cql statement UPDATE [Mock].[SpatialCalCacheTable1] SET [Geometry] = 'POLYGON EMPTY', [Geography] = 'POLYGON EMPTY' WHERE [Id] = @value with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
		| Name  | Value |
		| value | 34    |
	Then As User Admin Run cql statement SELECT [STDimensionGeometry], [STDimensionGeography] from [Mock].[SpatialCalCacheTable1] WHERE [Id] = @value and [Deleted] is null and validate text result STDimensionGeometry,STDimensionGeography-1,-1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| value | 34    |