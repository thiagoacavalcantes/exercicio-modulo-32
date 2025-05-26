# - Faça uma consulta que retorne a lista de filmes e suas categorias correspondentes.
SELECT fm.title as titulo, c.name as categoria FROM film as fm 
inner join film_category as fc
on fm.film_id = fc.film_id
inner join category as c
on fc.category_id = c.category_id
ORDER BY c.name
LIMIT 100

# -  Faça uma consulta que retorne a lista de todos os atores com o número filmes que cada ator
# participou. Ordene a lista pelo numero de filmes, iniciando pelos atores que mais atuaram.
SELECT ac.first_name as ator, COUNT(*) as quantidade_filme FROM actor as ac 
inner join film_actor as fa
on ac.actor_id = fa.actor_id
inner join film as fm
on fa.film_id = fm.film_id
GROUP BY ator
order by quantidade_filme desc
LIMIT 100

#Faça uma consulta que retorne a lista de atores que atuaram em filmes com mais de duas horas de
# duração (120min). Ordene a lista pelo numero de filmes que cada ator participou

SELECT ac.first_name as ator FROM actor as ac 
inner join film_actor as fa
on ac.actor_id = fa.actor_id
inner join film as fm
on fa.film_id = fm.film_id
WHERE fm.length > 120
GROUP BY ator