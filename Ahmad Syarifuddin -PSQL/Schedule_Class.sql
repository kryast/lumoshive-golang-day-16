-- Table: public.Schedule_Class

-- DROP TABLE IF EXISTS public."Schedule_Class";

CREATE TABLE IF NOT EXISTS public."Schedule_Class"
(
    id bigint NOT NULL,
    CONSTRAINT "Schedule_Class_pkey" PRIMARY KEY (id),
    CONSTRAINT class_student_id FOREIGN KEY (id)
        REFERENCES public."Class-Student" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT course_id FOREIGN KEY (id)
        REFERENCES public."Course" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Schedule_Class"
    OWNER to postgres;