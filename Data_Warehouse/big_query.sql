--CREATE TABLE NON EXTERNAL FROM EXTERNAL TABLE FOR OPTIMIZATION
CREATE OR REPLACE TABLE dtc-de-project-344521.dataset.mexbike_non_partitioned 
AS SELECT Genero_Usuario,Edad_Usuario,Bici,Ciclo_Estacion_Retiro,safe.PARSE_DATE('%m/%d/%Y', Fecha_Retiro) as Fecha_Retiro,PARSE_TIME("%T", Hora_Retiro) as Hora_Retiro,
Ciclo_Estacion_Arribo, PARSE_DATE('%d/%m/%Y', Fecha_Arribo) as Fecha_Arribo,PARSE_TIME("%T", Hora_Arribo) as Hora_Arribo
FROM dtc-de-project-344521.dataset.mexbike_external_table
--CREATE PARTITIONED TABLE BY Fecha Horario 
CREATE OR REPLACE TABLE dtc-de-project-344521.dataset.mexbike_partitioned 
PARTITION BY Fecha_Retiro 
AS SELECT * FROM dtc-de-project-344521.dataset.mexbike_non_partitioned ;