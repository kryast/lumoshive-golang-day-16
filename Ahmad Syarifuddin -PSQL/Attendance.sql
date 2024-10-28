-- Table: public.Attendance

-- DROP TABLE IF EXISTS public."Attendance";

CREATE TABLE IF NOT EXISTS public."Attendance"
(
    id bigint NOT NULL,
    present boolean,
    CONSTRAINT "Attendance_pkey" PRIMARY KEY (id),
    CONSTRAINT schedule_class_id FOREIGN KEY (id)
        REFERENCES public."Schedule_Class" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Attendance"
    OWNER to postgres;