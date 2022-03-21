Feature: Bulk Upsert Ann

#Ann - No Insert Permission
#Ann1 - Insert Permission
#
@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Text Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Name]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:Text
		| Value0 | Value1          |
		| 3      | TryToChangeName |
	Then As User Ann Run cql statement select [Name] from [Mock].[BulkUpsertNegative1] where [Cinchy Id] = 3 and validate text result NameAutomation3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Text Cell
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Name]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:Text
		| Value0 | Value1          |
		| 3      | TryToChangeName |
	Then As User Ann Run cql statement select [Name] from [Mock].[BulkUpsertNegative1] where [Cinchy Id] = 3 and validate text result NameAutomation3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to insert into read only Text Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Name]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:Text
		| Value0 | Value1          |
		|        | TryToChangeName |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Number Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Id]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Id:Number
		| Value0 | Value1 |
		| 3      | 33     |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Id

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Number Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Id]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Id:Number
		| Value0 | Value1 |
		| 3      | 33     |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Id

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Date Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Start Date]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:DateTime
		| Value0 | Value1      |
		| 3      | 20 Mar 2021 |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Start Date

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Date Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Start Date]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:DateTime
		| Value0 | Value1      |
		| 3      | 20 Mar 2021 |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Start Date

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to insert into read only Number Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Id]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Id:Number
		| Value0 | Value1 |
		|        | 33     |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Id

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to insert into read only Number Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Id]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Id:Number
		| Value0 | Value1 |
		|        | 33     |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Id

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to insert into read only Date Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Start Date]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:DateTime
		| Value0 | Value1      |
		|        | 20 Mar 2021 |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Start Date

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to insert into read only Date Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Start Date]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Name:DateTime
		| Value0 | Value1      |
		|        | 20 Mar 2021 |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Start Date

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Link Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Role]) VALUES (@data0,ResolveLink(@data1,'Name')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Role:Text
		| Value0 | Value1 |
		| 1      | QA     |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Role

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Link Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Role]) VALUES (@data0,ResolveLink(@data1,'Name')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Role:Text
		| Value0 | Value1 |
		| 1      | QA     |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Role

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to insert into read only Link Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Role]) VALUES (@data0,ResolveLink(@data1,'Name')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Role:Text
		| Value0 | Value1 |
		|        | QA     |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Role

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to insert into read only Link Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Role]) VALUES (@data0,ResolveLink(@data1,'Name')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Role:Text
		| Value0 | Value1 |
		|        | QA     |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Role

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Multi Link Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSL]) VALUES (@data0,ResolveLink(@data1,'Calculated')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Calculated:Text
		| Value0 | Value1           |
		| 1      | Test Data 1  123 |
	Then BulkUpsert cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Multi Link Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSL]) VALUES (@data0,ResolveLink(@data1,'Calculated')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Calculated:Text
		| Value0 | Value1           |
		| 1      | Test Data 1  123 |
	Then BulkUpsert cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to insert into read only Multi Link Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSL]) VALUES (@data0,ResolveLink(@data1,'Calculated')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Calculated:Text
		| Value0 | Value1           |
		|        | Test Data 1  123 |
	Then BulkUpsert cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to insert into read only Multi Link Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSL]) VALUES (@data0,ResolveLink(@data1,'Calculated')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Calculated:Text
		| Value0 | Value1           |
		|        | Test Data 1  123 |
	Then BulkUpsert cql result failed with exception Access denied on column(s) MSL

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Multi Select Choice Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSC]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:MSC:Text
		| Value0 | Value1     |
		| 3      | Jump,Sleep |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Multi Select Choice Cell
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSC]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:MSC:Text
		| Value0 | Value1     |
		| 3      | Jump,Sleep |
	Then BulkUpsert cql result failed with exception Empty

@Rest @Bug
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to insert into read only Multi Select Choice Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSC]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:MSC:Text
		| Value0 | Value1     |
		|        | Jump,Sleep |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only CheckBox Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Salaried]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Salaried:Boolean
		| Value0 | Value1 |
		| 3      | true   |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into editable CheckBox Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Salaried]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Salaried:Boolean
		| Value0 | Value1 |
		| 3      | true   |

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only CheckBox Cell
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Salaried]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Salaried:Boolean
		| Value0 | Value1 |
		| 3      | true   |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Choice Column
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Employee Term]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Employee Term:Text
		| Value0 | Value1 |
		| 3      | Co-op  |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Employee Term

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Choice Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Employee Term]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Employee Term:Text
		| Value0 | Value1 |
		| 3      | Co-op  |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Employee Term

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to insert into read only Choice Column
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[Employee Term]) VALUES (@data0,@data1) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:Employee Term:Text
		| Value0 | Value1 |
		|        | Co-op  |
	Then BulkUpsert cql result failed with exception Access denied on column(s) Employee Term

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Multi Select Hierarchy Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSH]) VALUES (@data0,ResolveLink(@data1,'Employee ID')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:MSH:Text
		| Value0 | Value1                                                                                      |
		| 3      | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
	Then BulkUpsert cql result failed with exception Empty

@Rest @Bug
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into editable Multi Select Hierarchy Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSH]) VALUES (@data0,ResolveLink(@data1,'Employee ID')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:MSH:Text
		| Value0 | Value1                     |
		| 4      | All Edit View Row Filter12 |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Multi Select Hierarchy Cell
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[MSH]) VALUES (@data0,ResolveLink(@data1,'Employee ID')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:MSH:Text
		| Value0 | Value1                                                                                      |
		| 3      | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into read only Hierarchy Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[HLink]) VALUES (@data0,ResolveLink(@data1,'Employee ID')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:HLink:Text
		| Value0 | Value1                     |
		| 3      | All Edit View Row Filter12 |
	Then BulkUpsert cql result failed with exception Empty

@Rest 
Scenario: BU - As user with edit selected columns and view all columns, Verify user is not able to update into editable Hierarchy Cell
	When As User Ann Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[HLink]) VALUES (@data0,ResolveLink(@data1,'Employee ID')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:HLink:Text
		| Value0 | Value1                     |
		| 4      | All Edit View Row Filter12 |
	Then BulkUpsert cql result failed with exception Empty

@Rest
Scenario: BU - As user with edit selected columns, view all columns and insert row permission, Verify user is not able to update into read only Hierarchy Cell
	When As User Ann1 Run Bulk Upsert cql statement Insert into [Mock].[BulkUpsertNegative1] ([Cinchy Id],[HLink]) VALUES (@data0,ResolveLink(@data1,'Employee ID')) with Parameter:Column:Type as data0:Cinchy Id:Number,data1:HLink:Text
		| Value0 | Value1                     |
		| 3      | All Edit View Row Filter12 |
	Then BulkUpsert cql result failed with exception Empty