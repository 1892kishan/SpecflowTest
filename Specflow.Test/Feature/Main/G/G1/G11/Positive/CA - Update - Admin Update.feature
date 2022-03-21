Feature: CA - Update Admin Update

@Rest
Scenario: CA - As Admin, Update a row using select INNER Join as a subquery
	When As User Admin Run cql from file updateRegularTable184.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | Automation9                                                                                 |
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
	Then As User Admin Run cql from file selectRegularTable124.txt and validate unordered result resultRegularTable270.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql from file selectRegularTable125.txt and validate unordered result resultRegularTable271.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: CA - As Admin, Update a row using select LEFT Join as a subquery
	When As User Admin Run cql from file updateRegularTable185.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | Automation9                                                                                 |
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
	Then As User Admin Run cql from file selectRegularTable124.txt and validate unordered result resultRegularTable272.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User Admin Run cql from file selectRegularTable125.txt and validate unordered result resultRegularTable273.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: CA - As Admin, Update a row using select RIGHT Join as a subquery
	When As User Admin Run cql from file updateRegularTable186.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | Automation9                                                                                 |
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
	Then As User Admin Run cql from file selectRegularTable124.txt and validate unordered result resultRegularTable274.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User Admin Run cql from file selectRegularTable125.txt and validate unordered result resultRegularTable275.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: CA - As Admin, Update a row using select FULL Join as a subquery
	When As User Admin Run cql from file updateRegularTable187.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | Automation9                                                                                 |
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
	Then As User Admin Run cql from file selectRegularTable124.txt and validate unordered result resultRegularTable276.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User Admin Run cql from file selectRegularTable125.txt and validate unordered result resultRegularTable277.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: CA - As Admin, Update a row using select CROSS Join as a subquery
	When As User Admin Run cql from file updateRegularTable188.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User Admin Run cql from file selectRegularTable124.txt and validate unordered result resultRegularTable278.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User Admin Run cql from file selectRegularTable125.txt and validate unordered result resultRegularTable2790.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: CA - As Admin, Update a row using select WHERE IN as a subquery
	When As User Admin Run cql from file updateRegularTable191.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectRegularTable124.txt and validate unordered result resultRegularTable280.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Admin Run cql from file selectRegularTable125.txt and validate unordered result resultRegularTable281.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: CA - As Admin, Update a row using select WHERE FROM as a subquery
	When As User Admin Run cql from file updateRegularTable192.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectRegularTable124.txt and validate unordered result resultRegularTable282.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql from file selectRegularTable125.txt and validate unordered result resultRegularTable283.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: CA - As Admin, Update a row using select WHERE ANY as a subquery
	When As User Admin Run cql from file updateRegularTable193.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectRegularTable124.txt and validate unordered result resultRegularTable284.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql from file selectRegularTable125.txt and validate unordered result resultRegularTable285.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: CA - As Admin, Update rows using select INNER Join as a subquery
	When As User Admin Run cql from file updateRegularTable189.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | Automation1                    |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Brazil Cinchy                  |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,viewonly12                  |
		| data10 | 2020-12-06 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | QA                             |
		| data13 | true                           |
		| data14 | 15 Mar 2017                    |
		| data16 | Part Time                      |
	Then As User Admin Run cql from file selectRegularTable126.txt and validate unordered result resultRegularTable286.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User Admin Run cql from file selectRegularTable127.txt and validate unordered result resultRegularTable287.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: CA - As Admin, Update rows using select LEFT Join as a subquery
	When As User Admin Run cql from file updateRegularTable190.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | Automation18                   |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Brazil Cinchy                  |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,viewonly12                  |
		| data10 | 2020-12-06 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | Dev                            |
		| data13 | true                           |
		| data14 | 15 Mar 2017                    |
		| data16 | Part Time                      |
	Then As User Admin Run cql from file selectRegularTable126.txt and validate unordered result resultRegularTable288.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User Admin Run cql from file selectRegularTable127.txt and validate unordered result resultRegularTable289.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: CA - As Admin, Update rows using select RIGHT Join as a subquery
	When As User Admin Run cql from file updateRegularTable194.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | Automation1                    |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Ghana Shared                   |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,viewonly12                  |
		| data10 | 2020-03-03 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | UserGroup                      |
		| data13 | false                          |
		| data14 | 15 Mar 2017                    |
		| data16 | Full Time                      |
	Then As User Admin Run cql from file selectRegularTable126.txt and validate unordered result resultRegularTable290.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User Admin Run cql from file selectRegularTable127.txt and validate unordered result resultRegularTable291.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: CA - As Admin, Update rows using select FULL Join as a subquery
	When As User Admin Run cql from file updateRegularTable195.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                 |
		| data1  | 100000                                |
		| data2  | 09090990090                           |
		| data3  | Automation1                           |
		| data4  | Ajax                                  |
		| data5  | FirstName Test LastName Test          |
		| data6  | Albania AutomationDomain              |
		| data7  | Grape                                 |
		| data8  | Play,Jump                             |
		| data9  | All Edit View Row Filter12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000           |
		| data11 | Apple                                 |
		| data12 | Dev                                   |
		| data13 | true                                  |
		| data14 | 15 Mar 2017                           |
		| data15 | Part Time                             |
	Then As User Admin Run cql from file selectRegularTable126.txt and validate unordered result resultRegularTable292.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User Admin Run cql from file selectRegularTable127.txt and validate unordered result resultRegularTable293.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest
Scenario: CA - As Admin, Update rows using select CROSS Join as a subquery
	When As User Admin Run cql from file updateRegularTable196.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                         |
		| data1  | 100000                                                        |
		| data2  | 09090990090                                                   |
		| data3  | All Edit View Row Filter12                                    |
		| data4  | Toronto                                                       |
		| data5  | FirstName Test LastName Test                                  |
		| data6  | Brazil Cinchy                                                 |
		| data7  | Apple                                                         |
		| data8  | Play,Jump                                                     |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                   |
		| data11 | Apple                                                         |
		| data12 | QA                                                            |
		| data13 | false                                                         |
		| data14 | 15 Mar 2017                                                   |
		| data15 | Full Time                                                     |
	Then As User Admin Run cql from file selectRegularTable126.txt and validate unordered result resultRegularTable294.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User Admin Run cql from file selectRegularTable1270.txt and validate unordered result resultRegularTable295.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |

@Rest
Scenario: CA - As Admin, Update rows using select WHERE FROM as a subquery
	When As User Admin Run cql from file updateRegularTable197.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                         |
		| data1  | 2                                                             |
		| data2  | 2                                                             |
		| data3  | All Edit View Row Filter12                                    |
		| data4  | Toronto                                                       |
		| data5  | FirstName Test LastName Test                                  |
		| data6  | Brazil Cinchy                                                 |
		| data7  | Apple                                                         |
		| data8  | Play,Jump                                                     |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-12-06 00:00:00.0000000                                   |
		| data11 | Apple                                                         |
		| data12 | UserGroup                                                     |
		| data13 | false                                                         |
		| data14 | 15 Mar 2017                                                   |
		| data15 | Co-op                                                         |
		| data16 | 5                                                             |
		| data17 | 9                                                             |
	Then As User Admin Run cql from file selectRegularTable126.txt and validate unordered result resultRegularTable296.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |
	Then As User Admin Run cql from file selectRegularTable127.txt and validate unordered result resultRegularTable297.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |

@Rest
Scenario: CA - As Admin, Update a row based on another table for simple column types using LEFT Join
	When As User Admin Run cql from file updateRegularTable198.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectRegularTable128.txt and validate unordered result resultRegularTable298.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Admin Run cql from file selectRegularTable129.txt and validate unordered result resultRegularTable299.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: CA - As Admin, Update a row based on another table for simple column types using RIGHT Join
	When As User Admin Run cql from file updateRegularTable199.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectRegularTable128.txt and validate unordered result resultRegularTable300.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Admin Run cql from file selectRegularTable129.txt and validate unordered result resultRegularTable301.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: CA - As Admin, Update a row based on another table for simple column types using INNER Join
	When As User Admin Run cql from file updateRegularTable200.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectRegularTable128.txt and validate unordered result resultRegularTable302.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Admin Run cql from file selectRegularTable129.txt and validate unordered result resultRegularTable303.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: CA - As Admin, Update a row based on another table for simple column types using FULL Join
	When As User Admin Run cql from file updateRegularTable201.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectRegularTable128.txt and validate unordered result resultRegularTable304.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Admin Run cql from file selectRegularTable129.txt and validate unordered result resultRegularTable305.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest @Bug @Ignore
Scenario: CA - As Admin, Update a row based on another table for simple column types using CROSS Join
	When As User Admin Run cql from file updateRegularTable202.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Admin Run cql from file selectRegularTable128.txt and validate unordered result resultRegularTable306.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
	Then As User Admin Run cql from file selectRegularTable129.txt and validate unordered result resultRegularTable307.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |

@Rest
Scenario: CA - As Admin, Update rows based on another table for simple column types using LEFT Join
	When As User Admin Run cql from file updateRegularTable203.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
		| data2 | 33    |
	Then As User Admin Run cql from file selectRegularTable130.txt and validate unordered result resultRegularTable308.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
		| data2 | 33    |
	Then As User Admin Run cql from file selectRegularTable131.txt and validate unordered result resultRegularTable309.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
		| data2 | 33    |

@Rest
Scenario: CA - As Admin, Update rows based on another table for simple column types using RIGHT Join
	When As User Admin Run cql from file updateRegularTable204.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User Admin Run cql from file selectRegularTable130.txt and validate unordered result resultRegularTable310.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User Admin Run cql from file selectRegularTable131.txt and validate unordered result resultRegularTable311.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: CA - As Admin, Update rows based on another table for simple column types using INNER Join
	When As User Admin Run cql from file updateRegularTable205.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User Admin Run cql from file selectRegularTable130.txt and validate unordered result resultRegularTable312.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User Admin Run cql from file selectRegularTable131.txt and validate unordered result resultRegularTable313.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: CA - As Admin, Update rows based on another table for simple column types using FULL Join
	When As User Admin Run cql from file updateRegularTable206.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User Admin Run cql from file selectRegularTable130.txt and validate unordered result resultRegularTable314.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User Admin Run cql from file selectRegularTable131.txt and validate unordered result resultRegularTable315.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest @Bug @Ignore
Scenario: CA - As Admin, Update rows based on another table for simple column types using CROSS Join
	When As User Admin Run cql from file updateRegularTable207.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User Admin Run cql from file selectRegularTable130.txt and validate unordered result resultRegularTable316.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User Admin Run cql from file selectRegularTable131.txt and validate unordered result resultRegularTable317.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |