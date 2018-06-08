$PBExportHeader$fdfds.sra
$PBExportComments$Generated Application Object
forward
global type fdfds from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type fdfds from application
string appname = "fdfds"
end type
global fdfds fdfds

on fdfds.create
appname = "fdfds"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on fdfds.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

