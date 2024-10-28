-- Table: public.Mentor

-- DROP TABLE IF EXISTS public."Mentor";

CREATE TABLE IF NOT EXISTS public."Mentor"
(
    id bigint NOT NULL,
    name character(100) COLLATE pg_catalog."default" NOT NULL,
    created_at time with time zone,
    updated_at time with time zone,
    deleted_at time with time zone,
    CONSTRAINT "Mentor_pkey" PRIMARY KEY (id),
    CONSTRAINT users_id FOREIGN KEY (id)
        REFERENCES public."User" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Mentor"
    OWNER to postgres;