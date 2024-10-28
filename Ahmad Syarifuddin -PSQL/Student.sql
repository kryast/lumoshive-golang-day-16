-- Table: public.Student

-- DROP TABLE IF EXISTS public."Student";

CREATE TABLE IF NOT EXISTS public."Student"
(
    id bigint NOT NULL,
    name character(100) COLLATE pg_catalog."default" NOT NULL,
    age bigint,
    city character(100) COLLATE pg_catalog."default",
    created_at time with time zone,
    updated_at time with time zone,
    deleted_at time with time zone,
    CONSTRAINT "Student_pkey" PRIMARY KEY (id),
    CONSTRAINT users_id FOREIGN KEY (id)
        REFERENCES public."User" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Student"
    OWNER to postgres;