CREATE TABLE "tasks" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "start_date" date,
  "finish_date" date,
  "state" bool DEFAULT false
);

select * from tasks
insert into tasks values(
	'b8f735e6-00e1-47f7-9e2f-bf94ed881717',
	'Crear usuarios',
	'2022-09-21',
	'2022-09-22',
	true
);
insert into tasks values(
	'e2ca3f7e-0d17-426e-b663-b62bd150d2bc',
	'Editar usuarios',
	'2022-09-21',
	'2022-09-21',
	false
);
insert into tasks values(
	'caeee074-f9c7-4be0-8263-f9f96d59f692',
	'Eliminar usuarios',
	'2022-09-22',
	'2022-09-23',
	true
);

select id, title from tasks

select * from tasks where state = true