-- Table: public.Assignment

-- DROP TABLE IF EXISTS public."Assignment";

CREATE TABLE IF NOT EXISTS public."Assignment"
(
    id bigint NOT NULL,
    CONSTRAINT "Assignment_pkey" PRIMARY KEY (id),
    CONSTRAINT course_id FOREIGN KEY (id)
        REFERENCES public."Course" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT mentor_id FOREIGN KEY (id)
        REFERENCES public."Mentor" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Assignment"
    OWNER to postgres;