
-- JSON TYPE -- Retorna o tipo

SELECT JSON_TYPE('{"A":[10, true]}'); #OBJECT
SELECT JSON_EXTRACT('{"A":[10, true]}', "$.A"); #[10, true]
SELECT JSON_TYPE(JSON_EXTRACT('{"A":[10, true]}', "$.A")); #ARRAY
SELECT JSON_EXTRACT('{"A":[10, true]}', "$.A[0]"); #10
SELECT JSON_TYPE(JSON_EXTRACT('{"A":[10, true]}', "$.A[0]")); #INTEGER
SELECT JSON_TYPE(JSON_EXTRACT('{"A":[10, true]}', "$.A[1]")); #BOOLEAN

-- JSON VALID -- JSON VALIDO OU NAO?--

select JSON_VALID('{"A":[10, true]}'); #JSON válido
select JSON_VALID('{"A":[10, true]'); #JSON inválido