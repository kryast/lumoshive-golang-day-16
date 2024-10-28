-- Table: public.Announcement_show

-- DROP TABLE IF EXISTS public."Announcement_show";

CREATE TABLE IF NOT EXISTS public."Announcement_show"
(
    id bigint NOT NULL,
    CONSTRAINT "Announcement_show_pkey" PRIMARY KEY (id),
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

ALTER TABLE IF EXISTS public."Announcement_show"
    OWNER to postgres;