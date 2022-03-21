Feature: Multiple Entitlements

## C<-B<-A, user has permission to columns only for currentUserID()
@Rest
Scenario: DF - Select a link column pointing to another link column as user with Multiple rows entitlement with permission to that column via currentuserID()
	When  As User Multiple Entitlements Run cql statement SELECT DRAFT([Nested Link]) FROM [Mock].[Employees3] where [User].[Cinchy Id] != CurrentUserID(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Nested Link

## C<-B<-A, user has permission to columns only for currentUserID()
@Rest
Scenario: DF - Select a multi select link column pointing to another link column as user with Multiple rows entitlement with no permission to that table, has Multiple rows permission to linked table and source column table
	When  As User Multiple Entitlements Run cql statement SELECT DRAFT([MSL]) FROM [Mock].[Employees3] where [User].[Cinchy Id] != CurrentUserID(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be MSL

## C<-B<-A, user has permission to columns only for currentUsersGroups()
@Rest
# return NULL
Scenario: DF - Select a link column pointing to another link column as user with Multiple rows entitlement with permission to that column via currentUsersGroups()
	When  As User Multiple Entitlements Run cql statement SELECT DRAFT([Groups]) FROM [Mock].[Employees3] WHERE [Groups].[Cinchy Id] NOT IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Groups

@Rest
Scenario: DF - Select Date,Text,Choice columns as user with multiple entitlements: 1. View Selected columns ; 2. Edit Selected columns with Editable and Viewable row filter based on currentUserId()
	When  As User Multiple Entitlements Run cql statement SELECT TOP 1 DRAFT([Home Address]), DRAFT([Home Phone]), DRAFT([Birthday]), DRAFT([Hobbies]) FROM [Mock].[Employees3] WHERE [user].[Cinchy id] != CurrentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Home Address,Home Phone,Birthday,Hobbies,,,

@Rest @Ignore
Scenario: DF - Select Text,Number,Date,Choice, Multi select choice, Live and Cached Calculated column as a user with multiple entitlements with no permission to the columns
	When  As User Multiple Entitlements Run cql statement SELECT DRAFT([Text]), DRAFT([Number]), DRAFT([Date]), DRAFT([Choice]), DRAFT([MSC]), DRAFT([Live Calc]), DRAFT([Cached Calc]), DRAFT([Live UDF]), DRAFT([Cached UDF]) FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied