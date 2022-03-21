Feature: Format

@Rest
Scenario: As Admin, Run Format Function for option DD MMM YYYY - d
	Then As User Builder Run cql statement DECLARE @e DATE = '15 Mar 2018';SELECT FORMAT( @e, 'd' ) 'Result';  and validate text result Result3/15/2018 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function for option MMM DD YYYY HH:mm:ss AM - d
	Then As User Builder Run cql statement DECLARE @e DATE = 'Dec 1, 2021 12:00:00 AM';SELECT FORMAT( @e, 'd' ) 'Result'; and validate text result Result12/1/2021 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function for option CASE DD MMM YYYY - D
	Then As User Builder Run cql statement DECLARE @e DATE = '15 Mar 2018';SELECT FORMAT( @e, 'D' ) 'Result'; and validate text result ResultThursday, March 15, 2018 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function for option CASE MMM DD YYYY HH:mm:ss AM - D
	Then As User Builder Run cql statement DECLARE @e DATE = 'Dec 1, 2021 12:00:00 AM';SELECT FORMAT( @e, 'D' ) 'Result';  and validate text result ResultWednesday, December 1, 2021 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with custom formatting strings
	Then As User Builder Run cql statement DECLARE @d DATE = '10/12/2021'; SELECT FORMAT( @d, 'dd/MM/yyyy' ) AS 'Date',FORMAT(123456789,'###-##-####') AS 'Custom Number'; and validate text result Date,Custom Number12/10/2021,123-45-6789 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with numeric types
	Then As User Builder Run cql statement SELECT FORMAT(1.211,  'N') AS 'N',FORMAT(1.211, 'G') AS 'G' ,FORMAT(1.211, 'C') AS 'C',FORMAT(-1234, 'D6') as D,FORMAT(1.211, 'E') as E, FORMAT(1.211, 'F') as F,FORMAT(1.211, 'P') as P,FORMAT(-1234567890.12345678, 'R') as R,FORMAT(255, 'X') as X;  and validate text result N,G,C,D,E,F,P,R,X1.21,1.211,$1.21,-001234,1.211000E+000,1.21,121.10%,,FF with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype . not escaped
	Then As User Builder Run cql statement SELECT FORMAT(cast('07:35' as time), N'hh.mm') as Result; and validate text result Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype : not escaped
	Then As User Builder Run cql statement SELECT FORMAT(cast('07:35' as time), N'hh:mm') as Result; and validate text result Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype . escaped
	Then As User Builder Run cql statement SELECT FORMAT(cast('07:35' as time), N'hh\.mm') as Result; and validate text result Result07.35 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype : escaped
	Then As User Builder Run cql statement SELECT FORMAT(cast('07:35' as time), N'hh\:mm') as Result; and validate text result Result07:35 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype and formatted current time with AM or PM specified
	Then As User Builder Run cql statement SELECT FORMAT(CAST('2021-12-10 17:15:03.8076222' as datetime2), N'hh:mm tt') as Result and validate text result Result05:15 PM with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype and formatted current time with A or P specified
	Then As User Builder Run cql statement SELECT FORMAT(CAST('2021-12-10 17:15:03.8076222' as datetime2), N'hh:mm t') as Result and validate text result Result05:15 P with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype and displaying AM
	Then As User Builder Run cql statement select FORMAT(CAST('2018-01-01 01:00' AS datetime2), N'hh:mm tt') as Result and validate text result Result01:00 AM with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest 
Scenario: As Admin, Run Format Function with time datatype and displaying A
	Then As User Builder Run cql statement select FORMAT(CAST('2018-01-01 01:00' AS datetime2), N'hh:mm t') as Result and validate text result Result01:00 A with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype and displaying PM
	Then As User Builder Run cql statement select FORMAT(CAST('2018-01-01 14:00' AS datetime2), N'hh:mm tt')as Result and validate text result Result02:00 PM with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype and displaying P
	Then As User Builder Run cql statement select FORMAT(CAST('2018-01-01 14:00' AS datetime2), N'hh:mm t') as Result and validate text result Result02:00 P with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin, Run Format Function with time datatype and specified time in 24h format
	Then As User Builder Run cql statement select FORMAT(CAST('2018-01-01 14:00' AS datetime2), N'HH:mm') as Result and validate text result Result14:00 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |	
