-- Table: public.Admin

-- DROP TABLE IF EXISTS public."Admin";

CREATE TABLE IF NOT EXISTS public."Admin"
(
    id bigint NOT NULL,
    name character(100) COLLATE pg_catalog."default" NOT NULL,
    created_at time with time zone NOT NULL,
    updated_at time with time zone NOT NULL,
    deleted_at time with time zone NOT NULL,
    CONSTRAINT "Admin_pkey" PRIMARY KEY (id),
    CONSTRAINT users_id FOREIGN KEY (id)
        REFERENCES public."User" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Admin"
    OWNER to postgres;