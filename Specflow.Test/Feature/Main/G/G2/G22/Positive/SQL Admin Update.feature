Feature: SQL Admin Update

@Rest
Scenario: As Admin, Update a row using select INNER Join as a subquery
	When As User Admin Run cql from file updateRegularTable1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Automation1                                                                                 |
		| data16 | Full Time                                                                                   |
	Then As User Admin Run cql from file selectRegularTable1.txt and validate unordered result resultRegularTable1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql from file selectRegularTable999.txt and validate unordered result resultRegularTable2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: As Admin, Update a row using select LEFT Join as a subquery
	When As User Admin Run cql from file updateRegularTable100.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
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
		| data15 | Automation33                                                                                |
		| data16 | Full Time                                                                                   |
	Then As User Admin Run cql from file selectRegularTable1.txt and validate unordered result resultRegularTable100.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User Admin Run cql from file selectRegularTable2.txt and validate unordered result resultRegularTable101.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: As Admin, Update a row using select RIGHT Join as a subquery
	When As User Admin Run cql from file updateRegularTable101.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
		| data16 | Automation32                                                                                |
	Then As User Admin Run cql from file selectRegularTable1.txt and validate unordered result resultRegularTable102.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User Admin Run cql from file selectRegularTable999.txt and validate unordered result resultRegularTable103.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: As Admin, Update a row using select FULL Join as a subquery
	When As User Admin Run cql from file updateRegularTable102.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
		| data16 | Automation31                                                                                |
	Then As User Admin Run cql from file selectRegularTable1.txt and validate unordered result resultRegularTable104.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User Admin Run cql from file selectRegularTable999.txt and validate unordered result resultRegularTable105.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: As Admin, Update a row using select CROSS Join as a subquery
	When As User Admin Run cql from file updateRegularTable103.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Full Time                                                                                   |
		| data16 | Automation30                                                                                |
	Then As User Admin Run cql from file selectRegularTable1.txt and validate unordered result resultRegularTable106.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User Admin Run cql from file selectRegularTable2.txt and validate unordered result resultRegularTable107.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: As Admin, Update a row using select WHERE IN as a subquery
	When As User Admin Run cql from file updateRegularTable2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Admin Run cql from file selectRegularTable1.txt and validate unordered result resultRegularTable3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Admin Run cql from file selectRegularTable2.txt and validate unordered result resultRegularTable4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: As Admin, Update a row using select WHERE FROM as a subquery
	When As User Admin Run cql from file updateRegularTable3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Admin Run cql from file selectRegularTable1.txt and validate unordered result resultRegularTable5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql from file selectRegularTable2.txt and validate unordered result resultRegularTable6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: As Admin, Update a row using select WHERE ANY as a subquery
	When As User Admin Run cql from file updateRegularTable4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Admin Run cql from file selectRegularTable1.txt and validate unordered result resultRegularTable7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql from file selectRegularTable2.txt and validate unordered result resultRegularTable8.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: As Admin, Update rows using select INNER Join as a subquery
	When As User Admin Run cql from file updateRegularTable104.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data16 | Part Time                                                                                   |
	Then As User Admin Run cql from file selectRegularTable100.txt and validate unordered result resultRegularTable108.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User Admin Run cql from file selectRegularTable1240.txt and validate unordered result resultRegularTable109.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: As Admin, Update rows using select LEFT Join as a subquery
	When As User Admin Run cql from file updateRegularTable105.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data16 | Part Time                                                                                   |
	Then As User Admin Run cql from file selectRegularTable100.txt and validate unordered result resultRegularTable110.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User Admin Run cql from file selectRegularTable1240.txt and validate unordered result resultRegularTable111.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: As Admin, Update rows using select RIGHT Join as a subquery
	When As User Admin Run cql from file updateRegularTable106.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User Admin Run cql from file selectRegularTable100.txt and validate unordered result resultRegularTable112.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User Admin Run cql from file selectRegularTable101.txt and validate unordered result resultRegularTable113.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: As Admin, Update rows using select FULL Join as a subquery
	When As User Admin Run cql from file updateRegularTable107.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Ajax                                                                                        |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Albania AutomationDomain                                                                    |
		| data7  | Grape                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | All Edit View Row Filter12,viewonly12                                                       |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | Dev                                                                                         |
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
	Then As User Admin Run cql from file selectRegularTable100.txt and validate unordered result resultRegularTable114.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User Admin Run cql from file selectRegularTable1240.txt and validate unordered result resultRegularTable115.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest
Scenario: As Admin, Update rows using select CROSS Join as a subquery
	When As User Admin Run cql from file updateRegularTable108.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
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
	Then As User Admin Run cql from file selectRegularTable100.txt and validate unordered result resultRegularTable116.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User Admin Run cql from file selectRegularTable101.txt and validate unordered result resultRegularTable117.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |

@Rest
Scenario: As Admin, Update rows using select WHERE FROM as a subquery 
	When As User Admin Run cql from file updateRegularTable109.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 2                                                                                           |
		| data2  | 2                                                                                           |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
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
	Then As User Admin Run cql from file selectRegularTable100.txt and validate unordered result resultRegularTable118.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |
	Then As User Admin Run cql from file selectRegularTable101.txt and validate unordered result resultRegularTable119.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |

@Rest
Scenario: As Admin, Update a row based on another table for simple column types using LEFT Join
	When As User Admin Run cql from file updateRegularTable110.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Admin Run cql from file selectRegularTable102.txt and validate unordered result resultRegularTable130.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql from file selectRegularTable103.txt and validate unordered result resultRegularTable131.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: As Admin, Update a row based on another table for simple column types using RIGHT Join
	When As User Admin Run cql from file updateRegularTable111.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Admin Run cql from file selectRegularTable102.txt and validate unordered result resultRegularTable132.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Admin Run cql from file selectRegularTable103.txt and validate unordered result resultRegularTable133.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: As Admin, Update a row based on another table for simple column types using INNER Join
	When As User Admin Run cql from file updateRegularTable112.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Admin Run cql from file selectRegularTable102.txt and validate unordered result resultRegularTable134.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql from file selectRegularTable103.txt and validate unordered result resultRegularTable135.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: As Admin, Update a row based on another table for simple column types using FULL Join
	When As User Admin Run cql from file updateRegularTable113.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Admin Run cql from file selectRegularTable102.txt and validate unordered result resultRegularTable136.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql from file selectRegularTable103.txt and validate unordered result resultRegularTable137.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: As Admin, Update a row based on another table for simple column types using CROSS Join
	When As User Admin Run cql from file updateRegularTable114.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Admin Run cql from file selectRegularTable102.txt and validate unordered result resultRegularTable138.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Admin Run cql from file selectRegularTable103.txt and validate unordered result resultRegularTable139.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |

@Rest
Scenario: As Admin, Update rows based on another table for simple column types using LEFT Join
	When As User Admin Run cql from file updateRegularTable115.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
		| data2 | 33    |
	Then As User Admin Run cql from file selectRegularTable105.txt and validate unordered result resultRegularTable120.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
		| data2 | 33    |
	Then As User Admin Run cql from file selectRegularTable104.txt and validate unordered result resultRegularTable121.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
		| data2 | 33    |

@Rest
Scenario: As Admin, Update rows based on another table for simple column types using RIGHT Join
	When As User Admin Run cql from file updateRegularTable116.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User Admin Run cql from file selectRegularTable105.txt and validate unordered result resultRegularTable122.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User Admin Run cql from file selectRegularTable104.txt and validate unordered result resultRegularTable123.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: As Admin, Update rows based on another table for simple column types using INNER Join
	When As User Admin Run cql from file updateRegularTable117.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User Admin Run cql from file selectRegularTable105.txt and validate unordered result resultRegularTable124.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User Admin Run cql from file selectRegularTable104.txt and validate unordered result resultRegularTable125.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: As Admin, Update rows based on another table for simple column types using FULL Join
	When As User Admin Run cql from file updateRegularTable118.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User Admin Run cql from file selectRegularTable105.txt and validate unordered result resultRegularTable126.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User Admin Run cql from file selectRegularTable104.txt and validate unordered result resultRegularTable127.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: As Admin, Update rows based on another table for simple column types using CROSS Join
	When As User Admin Run cql from file updateRegularTable119.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User Admin Run cql from file selectRegularTable105.txt and validate unordered result resultRegularTable128.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User Admin Run cql from file selectRegularTable104.txt and validate unordered result resultRegularTable129.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |