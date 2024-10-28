-- Table: public.Course

-- DROP TABLE IF EXISTS public."Course";

CREATE TABLE IF NOT EXISTS public."Course"
(
    id bigint NOT NULL,
    name character(100) COLLATE pg_catalog."default" NOT NULL,
    created_at time with time zone,
    updated_at time with time zone,
    deleted_at time with time zone,
    video_url character(100) COLLATE pg_catalog."default",
    CONSTRAINT "Course_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Course"
    OWNER to postgres;