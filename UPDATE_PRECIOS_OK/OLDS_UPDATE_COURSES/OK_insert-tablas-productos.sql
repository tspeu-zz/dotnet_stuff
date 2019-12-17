--TABLA 1 - PRECIOS DE REFERENCIA POR PRODUCTO --ProductAmount
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'grado', 1450.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'master-universitario', 3900.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'master', 3900.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'experto', 1750.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'curso', 65.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'oposiciones', 790.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'Clases en directo', 940.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'curso-idiomas A1 - B2', 390.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'curso-idiomas C1 - C2', 490.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'Examen Oficial', 210.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'Evaluación Oficial', 210.00, 1, 1);
INSERT INTO ProductAmount VALUES(GETDATE(),GETDATE(),0,'CFC', 99.00, 1, 1);
------------------------------



---TABLA 2 - CORRECTOR POR PRODUCTO Y PAIS	--ProductCountryModifiers										
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'grado', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'master', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'experto-universitario', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'ope-enfermeria', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'evaluacion-oficial', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'cfc', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'licenciatura', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'diplomado', 1.23, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'licenciatura', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'maestria-oficial', 0.98, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'maestria', 0.98, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'especializacion', 0.91, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'diplomado', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'curso  a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'curso  c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'licenciatura', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'maestria-rvoe', 1.17, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'maestria', 1.17, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'especializacion', 1.16, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'diplomado', 2.43, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'licenciatura', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'maestria-oficial', 1.03, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'maestria', 1.03, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'especializacion', 0.97, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'diplomado', 1.00, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'evaluacion-oficial', 0, 1, 1);
---
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'grado', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'master', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'master-universitario', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'experto-universitario', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'ope-enfermeria', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'evaluacion-oficial', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'cfc', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'evaluacion-oficial', 0, 1, 1);
----
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'maestria-oficial', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'maestria', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'especializacion', 0.56, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'clases-conversacion-online', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'curso a1-b2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'curso c1-c2', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'examenes-oficiales', 0, 1, 1);
INSERT INTO ProductCountryModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'evaluacion-oficial', 0, 1, 1);
------------------------------



---TABLA 3 - POR FACULTAD Y ESTUDIO	 --ProductFacultyStudyModifiers
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'curso', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'curso', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'medicina', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'grado', 1.25, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'master-universitario', 1.25, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'master', 1.25, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'experto', 1.25, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'curso', 1.25, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'odontologia', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'curso', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'farmacia', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'curso', 0.80, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'curso', 0.70, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'curso', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'nutricion', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'curso', 0.70, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'psicologia', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'curso', 0.60, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'educacion', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'curso', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'filosofia', 'CFC', 0, 1, 1);
----
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'grado', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'master-universitario', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'master', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'experto', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'curso', 1.00, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'oposiciones', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'Clases en directo', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'curso-idiomas A1 - B2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'curso-idiomas C1 - C2', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'Examen Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'Evaluación Oficial', 0, 1, 1);
INSERT INTO ProductFacultyStudyModifiers VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'CFC', 0, 1, 1);
------------------------------



---TABLA 4 - CORRECTOR POR FACULTAD Y PAIS	OK	--ProductCountryFacultyModifiers							
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'escuela-de-negocios', 1.00 ,1 , 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'medicina', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'odontologia', 1.25 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'farmacia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'enfermeria', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'fisioterapia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'nutricion', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'psicologia', 1.00 , 1,1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'educacion', 1.00 , 1,1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'filosofia', 1.00 , 1,1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'ES', 'escuela-de-idiomas', 1.00  , 1, 1);		
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'escuela-de-negocios', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'medicina', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'odontologia', 1.25 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'AR', 'escuela-de-idiomas', 1.00 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'escuela-de-negocios', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'medicina', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'odntologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'efermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'fisoterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'utricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'picologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'ducacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'ilosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CO', 'escuela-d-idiomas', 1.00 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'escuela-de-negocios', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'medicina', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'MX', 'escuela-de-idiomas', 1.00 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'escuela-de-negocios', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'medicina', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PE', 'escuela-de-idiomas', 1.00 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BO', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'BR', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CR', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'CU', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'EC', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'US', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GT', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'GQ', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'HN', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'NI', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PA', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PY', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PT', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'PR', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'DO', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'SV', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'UY', 'escuela-de-idiomas', 0.70 , 1, 1);
--
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'escuela-de-negocios', 0.70 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'medicina', 0.80 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'odontologia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'farmacia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'enfermeria', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'fisioterapia', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'nutricion', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'psicologia', 0.60 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'educacion', 0.50 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'filosofia', 1.00 , 1, 1);
INSERT INTO ProductCountryFacultyModifiers VALUES(GETDATE(),GETDATE(),0,'VE', 'escuela-de-idiomas', 0.70 , 1, 1);
------------------------------



---TABLA 5  CUPON DE DESCUENTO POR PAIS	 --ProductCouponDiscountCountryModifier
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'grado', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'master-universitario', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'master', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'experto-universitario', 0.7142, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'ope-enfermeria', 0.8100, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'evaluacion-oficial', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'cfc', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'maestria-oficial', 0.7104, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'maestria', 0.7104, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'especializacion', 0.7104, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'curso c1-c2', 0.7929, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'licenciatura', 0.8643, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'maestria-oficial', 0.7368, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'maestria', 0.7368, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'especializacion', 0.5833, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'clases-conversacion-online', 0.8906, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'curso  a1-b2', 0.7407, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'curso  c1-c2', 0.7941, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'examenes-oficiales', 0.4927, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'evaluacion-oficial', 0.4927, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'licenciatura', 0.8621, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'maestria-rvoe', 0.7000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'maestria', 0.7000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'especializacion', 0.7000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'clases-conversacion-online', 0.8999, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'curso a1-b2', 0.7775, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'curso c1-c2', 0.8230, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'examenes-oficiales', 0.9109, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'evaluacion-oficial', 0.9109, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'licenciatura', 0.8637, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'maestria-oficial', 0.9000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'maestria', 0.9000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'clases-conversacion-online', 0.8892, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'curso a1-b2', 0.7466, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'curso c1-c2', 0.7989, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'examenes-oficiales', 0.4933, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'evaluacion-oficial', 0.4933, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'grado', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'master', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'master-universitario', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'experto-universitario', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'ope-enfermeria', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'evaluacion-oficial', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'cfc', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'evaluacion-oficial', 0.5238, 1, 1);
---
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'licenciatura', 0.8620, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'maestria-oficial', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'maestria', 0.7564, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'especializacion', 0.8986, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'diplomado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'clases-conversacion-online', 0.8936, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'curso a1-b2', 0.7435, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'curso c1-c2', 0.7959, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'examenes-oficiales', 0.5238, 1, 1);
INSERT INTO ProductCouponDiscountCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'evaluacion-oficial', 0.5238, 1, 1);
------------------------------



---TABLA 6 - CORRECTOR CUPoN DE DESCUENTO POR FACULTAD --ProductCouponDiscountFacultyStudyModifier										
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-negocios', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'curso idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'curso idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'medicina', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'master-universitario', 1.0657, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'master', 1.0657, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'experto', 1.1455, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'odontologia', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'farmacia', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'enfermeria', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'fisioterapia', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'nutricion', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'psicologia', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'educacion', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'filosofia', 'CFC', 1.0000, 1, 1);
---
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'grado', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'master-universitario', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'master', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'experto', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'curso', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'oposiciones', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'Clases en directo', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'curso-idiomas A1 - B2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'curso-idiomas C1 - C2', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'Examen Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'Evaluación Oficial', 1.0000, 1, 1);
INSERT INTO ProductCouponDiscountFacultyStudyModifier VALUES(GETDATE(),GETDATE(),0,'escuela-de-idiomas', 'CFC', 1.0000, 1, 1);
------------------------------


---TABLA 7  PRECIO BECA POR PAIS  --ProductScholarshipCountryModifier						
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'grado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'master-universitario', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'master', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'experto-universitario', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'ope-enfermeria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'curso-universitario c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'evaluacion-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 'cfc', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'examenes-oficiales', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 'evaluacion-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'curso  a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'curso  c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'maestria-rvoe', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'licenciatura', 0.80, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'grado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'master', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'master-universitario', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'experto-universitario', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'ope-enfermeria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'curso-universitario c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'evaluacion-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 'cfc', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 'evaluacion-oficial', 0.50, 1, 1);
---
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'licenciatura', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'maestria-oficial', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'maestria', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'especializacion', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'diplomado', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'clases-conversacion-online', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'curso a1-b2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'curso c1-c2', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'examenes-oficiales', 0.50, 1, 1);
INSERT INTO ProductScholarshipCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 'evaluacion-oficial', 0.50, 1, 1);
------------------------------




---TABLA 9  TIPO DE INTERES POR PAIS  --ProductInterestCountryModifier
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'ES', 0.00, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'AR', 0.16, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'CO', 0.12, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'MX', 0.00, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'PE', 0.00, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'BO', 0.12, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'BR', 0.12, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'CR', 0.12, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'CU', 0.12, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'EC', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'US', 0.05, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'GT', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'GQ', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'HN', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'NI', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'PA', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'PY', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'PT', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'PR', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'DO', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'SV', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'UY', 0.15, 1, 1);
INSERT INTO ProductInterestCountryModifier VALUES(GETDATE(),GETDATE(),0,'VE', 0.15, 1, 1);
------------------------------