--SELECTS

--clients_accounts
select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance  from accounts right join clients on clients.id = accounts.client_id;

--accounts_types
select accounts.account_no, accounts.client_id, account_types.name from accounts left join account_types on accounts.id = account_types.id;

--transactions_detail
select transactions.id, transactions.amount, transactions_types.name from transactions_types right join transactions on transactions_types.id = transactions.id;

--transations_types_detail
select transactions.id, transactions.amount, transactions_types.name from transactions left join transactions_types on transactions.id = transactions_types.id;




--VISTAS

--1. v_clients_accounts
create view v_clients_accounts as select clients.id, clients.first_name, clients.last_name, clients.email, accounts.account_no, accounts.balance  from accounts right join clients on clients.id = accounts.client_id;

--2. v_accounts_types
create view v_accounts_types as select accounts.account_no, accounts.client_id, account_types.name from accounts left join account_types on accounts.id = account_types.id;

--3. v_transactions_detail
create view v_transactions_detail as select transactions.id, transactions.amount, transactions_types.name from transactions_types right join transactions on transactions_types.id = transactions.id;

--4. v_transations_types_detail
create view v_transations_types_detail as select transactions.id, transactions.amount, transactions_types.name from transactions left join transactions_types on transactions.id = transactions_types.id;