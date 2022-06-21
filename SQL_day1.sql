CREATE TABLE emp (
    emp_id int,
    emp_name varchar(255),
    manager_id int,
    department_id int,
    salary int
);

select * from emp

insert into emp (emp_id, emp_name, manager_id,department_id,salary) values ('4','Dan','3','200','34000');

-- finding duplicate in a table 

select emp_id, count(1) from emp group by emp_id having count(1) > 1

-- deleting duplicate in a table
select * from emp

with cte as (select * , ROW_NUMBER() over(partition by emp_id order by emp_id) as rn from emp)
delete from cte where rn>1 