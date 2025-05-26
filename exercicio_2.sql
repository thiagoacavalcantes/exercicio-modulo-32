#Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros
#encontrados pela busca

SELECT count(fm.title) FROM film as fm 
inner join film_category as fc
on fm.film_id = fc.film_id
inner join category as c
on fc.category_id = c.category_id


SELECT count(total_registros) AS total_linhas
FROM (
  SELECT COUNT(ac.first_name) AS total_registros
  FROM actor AS ac
  INNER JOIN film_actor AS fa ON ac.actor_id = fa.actor_id
  INNER JOIN film AS fm ON fa.film_id = fm.film_id
  GROUP BY ac.first_name
) AS subselect;

SELECT count(total_registros) AS total_linhas
FROM (
  	SELECT COUNT(ac.first_name) AS total_registros
	FROM actor as ac 
	inner join film_actor as fa
	on ac.actor_id = fa.actor_id
	inner join film as fm
	on fa.film_id = fm.film_id
	WHERE fm.length > 120
	GROUP BY ac.first_name
) AS subselect;
