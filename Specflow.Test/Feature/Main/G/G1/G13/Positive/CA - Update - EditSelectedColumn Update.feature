Feature: CA - Update - EditSelectedColumn Update

# Use Table UpdateCAEmployee10
# User - EditSelectedColumn

@Rest
Scenario: CA - As user with edit selected columns, Update a row using select INNER Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable156.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | 1                                                                                           |
		| data16 | Full Time                                                                                   |
	Then As User EditSelectedColumn Run cql from file selectCATable118.txt and validate unordered result resultCATable210.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User EditSelectedColumn Run cql from file selectCATable119.txt and validate unordered result resultCATable211.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: CA - As user with edit selected columns, Update a row using select LEFT Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable157.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 12                                                                                          |
		| data4  | Ajax                                                                                        |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | 33                                                                                          |
		| data16 | Full Time                                                                                   |
	Then As User EditSelectedColumn Run cql from file selectCATable118.txt and validate unordered result resultCATable212.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User EditSelectedColumn Run cql from file selectCATable119.txt and validate unordered result resultCATable213.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: CA - As user with edit selected columns, Update a row using select RIGHT Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable158.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
		| data16 | 32                                                                                          |
	Then As User EditSelectedColumn Run cql from file selectCATable118.txt and validate unordered result resultCATable214.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User EditSelectedColumn Run cql from file selectCATable119.txt and validate unordered result resultCATable215.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: CA - As user with edit selected columns, Update a row using select FULL Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable159.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
		| data16 | 31                                                                                          |
	Then As User EditSelectedColumn Run cql from file selectCATable118.txt and validate unordered result resultCATable216.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User EditSelectedColumn Run cql from file selectCATable119.txt and validate unordered result resultCATable217.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: CA - As user with edit selected columns, Update a row using select CROSS Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable160.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Full Time                                                                                   |
		| data16 | 30                                                                                          |
	Then As User EditSelectedColumn Run cql from file selectCATable118.txt and validate unordered result resultCATable218.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User EditSelectedColumn Run cql from file selectCATable119.txt and validate unordered result resultCATable219.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: CA - As user with edit selected columns, Update a row using select WHERE IN as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable161.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditSelectedColumn Run cql from file selectCATable118.txt and validate unordered result resultCATable220.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User EditSelectedColumn Run cql from file selectCATable119.txt and validate unordered result resultCATable221.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: CA - As user with edit selected columns, Update a row using select WHERE FROM as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable162.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditSelectedColumn Run cql from file selectCATable118.txt and validate unordered result resultCATable222.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User EditSelectedColumn Run cql from file selectCATable119.txt and validate unordered result resultCATable223.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: CA - As user with edit selected columns, Update a row using select WHERE ANY as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable163.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditSelectedColumn Run cql from file selectCATable118.txt and validate unordered result resultCATable224.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User EditSelectedColumn Run cql from file selectCATable119.txt and validate unordered result resultCATable225.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: CA - As user with edit selected columns, Update rows using select INNER Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable164.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 1                                                                                           |
		| data2  | 1                                                                                           |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data16 | Part Time                                                                                   |
	Then As User EditSelectedColumn Run cql from file selectCATable116.txt and validate unordered result resultCATable226.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User EditSelectedColumn Run cql from file selectCATable117.txt and validate unordered result resultCATable227.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: CA - As user with edit selected columns, Update rows using select LEFT Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable165.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 1                                                                                           |
		| data2  | 1                                                                                           |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | Dev                                                                                         |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data16 | Part Time                                                                                   |
	Then As User EditSelectedColumn Run cql from file selectCATable116.txt and validate unordered result resultCATable228.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User EditSelectedColumn Run cql from file selectCATable117.txt and validate unordered result resultCATable229.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: CA - As user with edit selected columns, Update rows using select RIGHT Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable166.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 1                                                                                           |
		| data2  | 1                                                                                           |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Ghana Shared                                                                                |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | UserGroup                                                                                   |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data16 | Full Time                                                                                   |
	Then As User EditSelectedColumn Run cql from file selectCATable116.txt and validate unordered result resultCATable230.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User EditSelectedColumn Run cql from file selectCATable117.txt and validate unordered result resultCATable231.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: CA - As user with edit selected columns, Update rows using select FULL Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable167.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 12                                                                                          |
		| data4  | Ajax                                                                                        |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Albania Domain                                                                              |
		| data7  | Grape                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | All Edit View Row Filter12,viewonly12                                                       |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | Dev                                                                                         |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
	Then As User EditSelectedColumn Run cql from file selectCATable116.txt and validate unordered result resultCATable232.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User EditSelectedColumn Run cql from file selectCATable117.txt and validate unordered result resultCATable233.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest
Scenario: CA - As user with edit selected columns, Update rows using select CROSS Join as a subquery
	When As User EditSelectedColumn Run cql from file updateCATable168.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                               |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Full Time                                                                                   |
	Then As User EditSelectedColumn Run cql from file selectCATable116.txt and validate unordered result resultCATable234.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User EditSelectedColumn Run cql from file selectCATable117.txt and validate unordered result resultCATable235.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |

@Rest
Scenario: CA - As user with edit selected columns, Update rows using select WHERE FROM as a subquery 
	When As User EditSelectedColumn Run cql from file updateCATable169.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 2                                                                                           |
		| data2  | 2                                                                                           |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                               |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | UserGroup                                                                                   |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Co-op                                                                                       |
		| data16 | 5                                                                                           |
		| data17 | 9                                                                                           |
	Then As User EditSelectedColumn Run cql from file selectCATable116.txt and validate unordered result resultCATable236.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |
	Then As User EditSelectedColumn Run cql from file selectCATable117.txt and validate unordered result resultCATable237.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |

