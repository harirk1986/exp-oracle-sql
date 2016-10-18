SET LINES 200 PAGES 0

EXPLAIN PLAN
   FOR
        SELECT /*+ index_desc(t1 (c1,c2)) */
               *
          FROM t1
         WHERE c1 BETWEEN 3 AND 5
      ORDER BY c1 DESC;


SELECT * FROM TABLE (DBMS_XPLAN.display);