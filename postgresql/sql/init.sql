CREATE TABLE public.auth_user (
	id serial NOT NULL,
	full_name varchar(255) NOT NULL,
	email varchar(50) NOT NULL,
	password varchar(100) NOT NULL,
	is_admin bool NOT NULL DEFAULT false,
	created_at timestamptz NOT NULL DEFAULT now(),
	updated_at timestamptz NOT NULL DEFAULT now(),
	username varchar(50) NOT NULL,
	is_active bool NOT NULL DEFAULT true,
	gravatar varchar NOT NULL DEFAULT ''::character varying,
	CONSTRAINT auth_user_pk PRIMARY KEY (id),
	CONSTRAINT auth_user_un UNIQUE (username)
)
WITH (
	OIDS=FALSE
) ;
CREATE INDEX auth_user_email_idx ON auth_user USING btree (email) ;
CREATE INDEX auth_user_full_name_idx ON auth_user USING btree (full_name) ;
CREATE INDEX auth_user_is_active_idx ON auth_user USING btree (is_active) ;
CREATE INDEX auth_user_is_admin_idx ON auth_user USING btree (is_admin) ;
CREATE INDEX auth_user_username_idx ON auth_user USING btree (username) ;

INSERT INTO public.auth_user
(full_name, username, email, password, is_admin)
VALUES('Administrator', 'admin', '', '$2a$10$jcbeT4xXbg8ir/kxveXJ4egfJmZoxktWdwyOD2XjLXIaNaStQEO6W', true);
