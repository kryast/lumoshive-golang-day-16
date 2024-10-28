-- Table: public.User

-- DROP TABLE IF EXISTS public."User";

CREATE TABLE IF NOT EXISTS public."User"
(
    id bigint NOT NULL,
    username character(100) COLLATE pg_catalog."default" NOT NULL,
    password character(100) COLLATE pg_catalog."default" NOT NULL,
    created_at time with time zone,
    updated_at time with time zone,
    deleted_at time with time zone,
    CONSTRAINT user_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."User"
    OWNER to postgres;