/*
 * Copyright 2018-2019 Bytes & Brains
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

-- ---------- ---------- ---------- ---------- ---------- ---------- ----------
-- Miscellaneous H3 Functions (miscellaneous.c)
-- ---------- ---------- ---------- ---------- ---------- ---------- ----------

-- Availability: 3.5.0
CREATE OR REPLACE FUNCTION h3_hex_area(resolution integer, km boolean DEFAULT FALSE) RETURNS float
    AS 'h3' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;
    COMMENT ON FUNCTION h3_hex_area(integer, boolean) IS
'Average hexagon area in square (kilo)meters at the given resolution.';

-- Availability: 3.5.0
CREATE OR REPLACE FUNCTION h3_edge_length(resolution integer, km boolean DEFAULT FALSE) RETURNS float
    AS 'h3' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;
    COMMENT ON FUNCTION h3_edge_length(integer, boolean) IS
'Average hexagon edge length in (kilo)meters at the given resolution.';

-- Availability: 0.2.0
CREATE OR REPLACE FUNCTION h3_num_hexagons(resolution integer) RETURNS bigint
    AS 'h3' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;
    COMMENT ON FUNCTION h3_num_hexagons(integer) IS
'Number of unique H3 indexes at the given resolution.';

-- Availability: 1.0.0
CREATE OR REPLACE FUNCTION h3_get_res_0_indexes() RETURNS SETOF h3index
    AS 'h3' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;
    COMMENT ON FUNCTION h3_get_res_0_indexes() IS
'Returns all 122 resolution 0 indexes.';

-- Availability: 3.6.0
CREATE OR REPLACE FUNCTION h3_get_pentagon_indexes(resolution integer) RETURNS SETOF h3index
    AS 'h3' LANGUAGE C IMMUTABLE STRICT PARALLEL SAFE;
    COMMENT ON FUNCTION h3_get_res_0_indexes() IS
'All the pentagon H3 indexes at the specified resolution.';