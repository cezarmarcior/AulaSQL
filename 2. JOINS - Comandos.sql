--Lista as duas tabelas com alias. 
select * from Cargo a
select * from Funcionario b

--JOINS  ############

-- 1) INNER JOIN
select * from Cargo a
    inner join Funcionario b
        on a.CodCargo = b.CodCargo

-- 2) LEFT JOIN
select * from Cargo a
    left join Funcionario b
        on a.CodCargo = b.CodCargo

select * from Cargo a
    left join Funcionario b
        on a.CodCargo = b.CodCargo
        where b.CodCargo is null 
-- 3) RIGHT JOIN
select * from Cargo a
    right join Funcionario b
        on a.CodCargo = b.CodCargo

select * from Cargo a
    right join Funcionario b
        on a.CodCargo = b.CodCargo
        where b.CodCargo is null 

-- 4) FULL JOIN
select * from Cargo a
    full join Funcionario b
        on a.CodCargo = b.CodCargo

select * from Cargo a
    full join Funcionario b
        on a.CodCargo = b.CodCargo
        where a.CodCargo is null or b.CodCargo is null

-- 5) CROSS JOIN
select * from Cargo a
cross join Funcionario b

