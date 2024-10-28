-- Table: public.Class-Student

-- DROP TABLE IF EXISTS public."Class-Student";

CREATE TABLE IF NOT EXISTS public."Class-Student"
(
    id bigint NOT NULL,
    CONSTRAINT "Class-Student_pkey" PRIMARY KEY (id),
    CONSTRAINT class_id FOREIGN KEY (id)
        REFERENCES public."Class" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT mentor_id FOREIGN KEY (id)
        REFERENCES public."Mentor" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT student_id FOREIGN KEY (id)
        REFERENCES public."Student" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Class-Student"
    OWNER to postgres;