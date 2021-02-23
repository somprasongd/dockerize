--master db
create table t_vs (id serial, vn text, weight text, height text, temp text);

insert into t_vs (vn, weight, height, temp) values ('v001', '80', '180', '37'), ('v002', '70', '170', '36'), ('v003', '60', '160', '36.5');

create publication t_vsfeed for table t_vs;

-- -rep -db

create table t_vs (id serial, vn text, weight text, height text, temp text);

create subscription t_vs_sub connection 'host=127.0.0.1 dbname=master_db user=postgres' publication t_vsfeed;

https://www.postgresql.org/docs/10/logical-replication-quick-setup.html

https://pgdash.io/blog/distributing-data-postgres.html?fbclid=IwAR0ZlYuelZ-vaGzkYbaJZ0CnvaA7678noAOzee17kDIYaalZyNU8mSyZQjU

CREATE TABLE widgets
(
id text,
name TEXT,
price DECIMAL,
CONSTRAINT widgets_pkey PRIMARY KEY (id)
);

-- master

CREATE ROLE user_rep WITH REPLICATION LOGIN PASSWORD 'rep_password';

GRANT ALL PRIVILEGES ON DATABASE hosce TO user_rep;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user_rep;

CREATE PUBLICATION hosce_publication;

ALTER PUBLICATION hosce_publication ADD TABLE t_visit, t_visit_vital_sign;

-- rep
CREATE SUBSCRIPTION hosce_subscription CONNECTION 'host=db-master port=5432 user=user_rep password=rep_password dbname=hosce' PUBLICATION hosce_publication;

--- master
INSERT INTO widgets VALUES ('1', 'iPhone', 9999), ('2', 'iPad', 999), ('3', 'Apple watch', 999);

-- rep
INSERT INTO widgets VALUES ('4', 'S20', 9999);

-- master
INSERT INTO widgets VALUES ('5', 'Note10', 9999);

SELECT \* FROM widgets;

https://www.digitalocean.com/community/tutorials/how-to-set-up-logical-replication-with-postgresql-10-on-ubuntu-18-04

INSERT INTO vitalsigns (id, weight, height, temp) VALUES ('1', '60', '160', '36'), ('2', '70', '170', '37'), ('3', '80', '180', '38');
