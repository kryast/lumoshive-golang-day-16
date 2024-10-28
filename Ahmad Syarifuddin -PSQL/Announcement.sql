-- Table: public.Announcement

-- DROP TABLE IF EXISTS public."Announcement";

CREATE TABLE IF NOT EXISTS public."Announcement"
(
    id bigint NOT NULL,
    title character(100) COLLATE pg_catalog."default" NOT NULL,
    content text COLLATE pg_catalog."default" NOT NULL,
    created_at time with time zone,
    updated_at time with time zone,
    deleted_at time with time zone,
    CONSTRAINT "Announcement_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Announcement"
    OWNER to postgres;