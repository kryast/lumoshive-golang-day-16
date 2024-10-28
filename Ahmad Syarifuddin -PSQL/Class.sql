-- Table: public.Class

-- DROP TABLE IF EXISTS public."Class";

CREATE TABLE IF NOT EXISTS public."Class"
(
    id bigint NOT NULL,
    name character(1) COLLATE pg_catalog."default" NOT NULL,
    created_at time with time zone,
    updated_at time with time zone,
    deleted_at time with time zone,
    CONSTRAINT "Class_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Class"
    OWNER to postgres;