Feature: CA - Update - EditAll Update

# Use Table UpdateCAEmployee5
# User - EditAll
@Rest
Scenario: CA - As user with edit all columns, Update a row using select INNER Join as a subquery
	When As User EditAll Run cql from file updateRegularTable27.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 100000                         |
		| data2  | 09090990090                    |
		| data3  | 32                             |
		| data4  | Toronto                        |
		| data5  | FirstName Test3 LastName Test3 |
		| data6  | Brazil Cinchy                  |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,32                          |
		| data10 | 2020-03-03 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | QA                             |
		| data13 | true                           |
		| data14 | 15 Mar 2017                    |
		| data15 | Automation1                    |
		| data16 | Full Time                      |
	Then As User EditAll Run cql from file selectRegularTable9.txt and validate unordered result resultRegularTable54.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User EditAll Run cql from file selectRegularTable10.txt and validate unordered result resultRegularTable55.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: CA - As user with edit all columns, Update a row using select LEFT Join as a subquery
	When As User EditAll Run cql from file updateRegularTable28.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 100000                         |
		| data2  | 09090990090                    |
		| data3  | 32                             |
		| data4  | Ajax                           |
		| data5  | FirstName Test3 LastName Test3 |
		| data6  | Brazil Cinchy                  |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,32                          |
		| data10 | 2020-03-03 00:00:00.0000000    |
		| data11 | Apple                          |
		| data12 | QA                             |
		| data13 | false                          |
		| data14 | 15 Mar 2017                    |
		| data15 | Automation33                   |
		| data16 | Full Time                      |
	Then As User EditAll Run cql from file selectRegularTable9.txt and validate unordered result resultRegularTable56.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User EditAll Run cql from file selectRegularTable10.txt and validate unordered result resultRegularTable57.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: CA - As user with edit all columns, Update a row using select RIGHT Join as a subquery
	When As User EditAll Run cql from file updateRegularTable29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                       |
		| data1  | 100000                      |
		| data2  | 09090990090                 |
		| data3  | 32                          |
		| data4  | Toronto                     |
		| data5  | FirstNameTest LastNameTest  |
		| data6  | Brazil Cinchy               |
		| data7  | Apple                       |
		| data8  | Play,Jump                   |
		| data9  | 12,32                       |
		| data10 | 2020-03-03 00:00:00.0000000 |
		| data11 | Apple                       |
		| data12 | QA                          |
		| data13 | true                        |
		| data14 | 15 Mar 2017                 |
		| data15 | Part Time                   |
		| data16 | Automation32                |
	Then As User EditAll Run cql from file selectRegularTable9.txt and validate unordered result resultRegularTable58.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User EditAll Run cql from file selectRegularTable10.txt and validate unordered result resultRegularTable59.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: CA - As user with edit all columns, Update a row using select FULL Join as a subquery
	When As User EditAll Run cql from file updateRegularTable30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                       |
		| data1  | 100000                      |
		| data2  | 09090990090                 |
		| data3  | 32                          |
		| data4  | Toronto                     |
		| data5  | FirstNameTest LastNameTest  |
		| data6  | Brazil Cinchy               |
		| data7  | Apple                       |
		| data8  | Play,Jump                   |
		| data9  | 12,32                       |
		| data10 | 2020-03-03 00:00:00.0000000 |
		| data11 | Apple                       |
		| data12 | QA                          |
		| data13 | true                        |
		| data14 | 15 Mar 2017                 |
		| data15 | Part Time                   |
		| data16 | Automation31                |
	Then As User EditAll Run cql from file selectRegularTable9.txt and validate unordered result resultRegularTable60.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User EditAll Run cql from file selectRegularTable10.txt and validate unordered result resultRegularTable61.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: CA - As user with edit all columns, Update a row using select CROSS Join as a subquery
	When As User EditAll Run cql from file updateRegularTable31.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                       |
		| data1  | 100000                      |
		| data2  | 09090990090                 |
		| data3  | 32                          |
		| data4  | Toronto                     |
		| data5  | FirstNameTest LastNameTest  |
		| data6  | Brazil Cinchy               |
		| data7  | Apple                       |
		| data8  | Play,Jump                   |
		| data9  | 12,32                       |
		| data10 | 2020-03-03 00:00:00.0000000 |
		| data11 | Apple                       |
		| data12 | QA                          |
		| data13 | true                        |
		| data14 | 15 Mar 2017                 |
		| data15 | Full Time                   |
		| data16 | Automation30                |
	Then As User EditAll Run cql from file selectRegularTable9.txt and validate unordered result resultRegularTable62.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User EditAll Run cql from file selectRegularTable10.txt and validate unordered result resultRegularTable63.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: CA - As user with edit all columns, Update a row using select WHERE IN as a subquery
	When As User EditAll Run cql from file updateRegularTable32.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Run cql from file selectRegularTable9.txt and validate unordered result resultRegularTable64.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User EditAll Run cql from file selectRegularTable10.txt and validate unordered result resultRegularTable65.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: CA - As user with edit all columns, Update a row using select WHERE FROM as a subquery
	When As User EditAll Run cql from file updateRegularTable33.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Run cql from file selectRegularTable9.txt and validate unordered result resultRegularTable66.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User EditAll Run cql from file selectRegularTable10.txt and validate unordered result resultRegularTable67.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: CA - As user with edit all columns, Update a row using select WHERE ANY as a subquery
	When As User EditAll Run cql from file updateRegularTable34.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Run cql from file selectRegularTable9.txt and validate unordered result resultRegularTable68.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User EditAll Run cql from file selectRegularTable10.txt and validate unordered result resultRegularTable69.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: CA - As user with edit all columns, Update rows using select INNER Join as a subquery
	When As User EditAll Run cql from file updateRegularTable35.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | 32                             |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Brazil Cinchy                  |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,32                          |
		| data10 | 2020-12-06 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | QA                             |
		| data13 | true                           |
		| data14 | 15 Mar 2017                    |
		| data16 | Part Time                      |
	Then As User EditAll Run cql from file selectRegularTable11.txt and validate unordered result resultRegularTable70.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User EditAll Run cql from file selectRegularTable12.txt and validate unordered result resultRegularTable71.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: CA - As user with edit all columns, Update rows using select LEFT Join as a subquery
	When As User EditAll Run cql from file updateRegularTable36.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | 32                             |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Brazil Cinchy                  |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,32                          |
		| data10 | 2020-12-06 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | Dev                            |
		| data13 | true                           |
		| data14 | 15 Mar 2017                    |
		| data16 | Part Time                      |
	Then As User EditAll Run cql from file selectRegularTable11.txt and validate unordered result resultRegularTable72.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User EditAll Run cql from file selectRegularTable12.txt and validate unordered result resultRegularTable73.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: CA - As user with edit all columns, Update rows using select RIGHT Join as a subquery
	When As User EditAll Run cql from file updateRegularTable37.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | 32                             |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Ghana Shared                   |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,32                          |
		| data10 | 2020-03-03 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | UserGroup                      |
		| data13 | false                          |
		| data14 | 15 Mar 2017                    |
		| data16 | Full Time                      |
	Then As User EditAll Run cql from file selectRegularTable11.txt and validate unordered result resultRegularTable74.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User EditAll Run cql from file selectRegularTable12.txt and validate unordered result resultRegularTable75.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: CA - As user with edit all columns, Update rows using select FULL Join as a subquery
	When As User EditAll Run cql from file updateRegularTable38.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                       |
		| data1  | 100000                      |
		| data2  | 09090990090                 |
		| data3  | 32                          |
		| data4  | Ajax                        |
		| data5  | FirstNameTest LastNameTest  |
		| data6  | Albania AutomationDomain    |
		| data7  | Grape                       |
		| data8  | Play,Jump                   |
		| data9  | 12,32                       |
		| data10 | 2020-03-03 00:00:00.0000000 |
		| data11 | Apple                       |
		| data12 | Dev                         |
		| data13 | true                        |
		| data14 | 15 Mar 2017                 |
		| data15 | Part Time                   |
	Then As User EditAll Run cql from file selectRegularTable11.txt and validate unordered result resultRegularTable76.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User EditAll Run cql from file selectRegularTable12.txt and validate unordered result resultRegularTable77.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest
Scenario: CA - As user with edit all columns, Update rows using select CROSS Join as a subquery
	When As User EditAll Run cql from file updateRegularTable39.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                       |
		| data1  | 100000                      |
		| data2  | 09090990090                 |
		| data3  | 32                          |
		| data4  | Toronto                     |
		| data5  | FirstNameTest LastNameTest  |
		| data6  | Brazil Cinchy               |
		| data7  | Apple                       |
		| data8  | Play,Jump                   |
		| data9  | 12,32                       |
		| data10 | 2020-03-03 00:00:00.0000000 |
		| data11 | Apple                       |
		| data12 | QA                          |
		| data13 | false                       |
		| data14 | 15 Mar 2017                 |
		| data15 | Full Time                   |
	Then As User EditAll Run cql from file selectRegularTable11.txt and validate unordered result resultRegularTable78.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User EditAll Run cql from file selectRegularTable12.txt and validate unordered result resultRegularTable79.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |

@Rest
Scenario: CA - As user with edit all columns, Update rows using select WHERE FROM as a subquery
	When As User EditAll Run cql from file updateRegularTable40.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                       |
		| data1  | 2                           |
		| data2  | 2                           |
		| data3  | 32                          |
		| data4  | Toronto                     |
		| data5  | FirstNameTest LastNameTest  |
		| data6  | Brazil Cinchy               |
		| data7  | Apple                       |
		| data8  | Play,Jump                   |
		| data9  | 12,32                       |
		| data10 | 2020-12-06 00:00:00.0000000 |
		| data11 | Apple                       |
		| data12 | UserGroup                   |
		| data13 | false                       |
		| data14 | 15 Mar 2017                 |
		| data15 | Co-op                       |
		| data16 | 5                           |
		| data17 | 9                           |
	Then As User EditAll Run cql from file selectRegularTable11.txt and validate unordered result resultRegularTable80.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |
	Then As User EditAll Run cql from file selectRegularTable12.txt and validate unordered result resultRegularTable81.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |