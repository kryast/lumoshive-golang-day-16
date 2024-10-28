-- Table: public.Leaderboard

-- DROP TABLE IF EXISTS public."Leaderboard";

CREATE TABLE IF NOT EXISTS public."Leaderboard"
(
    id bigint NOT NULL,
    CONSTRAINT "Leaderboard_pkey" PRIMARY KEY (id),
    CONSTRAINT assign_id FOREIGN KEY (id)
        REFERENCES public."Assign" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Leaderboard"
    OWNER to postgres;