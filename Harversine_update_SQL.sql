-- Añade una columna "distancia" a la tabla "TU_TABLA"
ALTER TABLE "TU_TABLA" ADD COLUMN distancia FLOAT;

-- Actualiza la tabla "TU_TABLA" con la distancia en metros utilizando la fórmula Haversine
UPDATE "TU_TABLA"
SET distancia = 6371000 * 2 * ASIN(SQRT(POWER(SIN(RADIANS((lat2 - lat1) / 2)), 2) + COS(RADIANS(lat1)) * COS(RADIANS(lat2)) * POWER(SIN(RADIANS((long2 - long1) / 2)), 2)));
