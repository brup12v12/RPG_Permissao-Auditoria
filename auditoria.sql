USE [master]

GO

CREATE SERVER AUDIT [Audit-20220425-194540]
TO FILE 
(	FILEPATH = N'C:\ExemploAuditoria'
	,MAXSIZE = 100 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE)

GO

--Não consegui continuar apartir daqui, pois, as instruções do 'materialweb' não batiam com as opções que apareciam;
