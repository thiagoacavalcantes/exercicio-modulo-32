#Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros
#encontrados pela busca

SELECT count(fm.title) FROM film as fm 
inner join film_category as fc
on fm.film_id = fc.film_id
inner join category as c
on fc.category_id = c.category_id


SELECT COUNT(*) AS total_atores_com_filmes
FROM (
  SELECT ac.actor_id
  FROM actor AS ac
  INNER JOIN film_actor AS fa ON ac.actor_id = fa.actor_id
  GROUP BY ac.actor_id
) AS subselect;


SELECT COUNT(*) AS total_atores_em_filmes_longos
FROM (
  SELECT ac.actor_id
  FROM actor AS ac
  INNER JOIN film_actor AS fa ON ac.actor_id = fa.actor_id
  INNER JOIN film AS fm ON fa.film_id = fm.film_id
  WHERE fm.length > 120
  GROUP BY ac.actor_id
) AS subselect;

