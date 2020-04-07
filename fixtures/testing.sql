CREATE EXTENSION "uuid-ossp";

CREATE TABLE public.test (
    id               UUID                      NOT NULL  PRIMARY KEY,
    created_at       TIMESTAMP WITH TIME ZONE  NOT NULL               DEFAULT CURRENT_TIMESTAMP,
    last_modified_at TIMESTAMP WITH TIME ZONE,
    value            TEXT                      NOT NULL
);

CREATE TABLE public.query_count(
    key             TEXT                      NOT NULL  PRIMARY KEY,
    last_updated_at TIMESTAMP WITH TIME ZONE,
    count           INTEGER
);

INSERT INTO public.query_count (key, last_updated_at, count)
     VALUES ('test', CURRENT_TIMESTAMP, 0);

CREATE TABLE public.test_rows (
    id               INTEGER                   NOT NULL  PRIMARY KEY  GENERATED BY DEFAULT AS IDENTITY,
    created_at       TIMESTAMP WITH TIME ZONE  NOT NULL               DEFAULT CURRENT_TIMESTAMP,
    last_modified_at TIMESTAMP WITH TIME ZONE,
    toggle           BOOLEAN                   NOT NULL
);

INSERT INTO public.test_rows (toggle) VALUES (FALSE);
INSERT INTO public.test_rows (toggle) VALUES (FALSE);
INSERT INTO public.test_rows (toggle) VALUES (FALSE);
INSERT INTO public.test_rows (toggle) VALUES (FALSE);
INSERT INTO public.test_rows (toggle) VALUES (FALSE);
