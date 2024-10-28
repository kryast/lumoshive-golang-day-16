-- Table: public.Assign

-- DROP TABLE IF EXISTS public."Assign";

CREATE TABLE IF NOT EXISTS public."Assign"
(
    id bigint NOT NULL,
    grade bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    CONSTRAINT "Assign_pkey" PRIMARY KEY (id),
    CONSTRAINT assignment_id FOREIGN KEY (id)
        REFERENCES public."Assignment" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT student_id FOREIGN KEY (id)
        REFERENCES public."Student" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Assign"
    OWNER to postgres;