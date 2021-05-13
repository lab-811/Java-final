CREATE TABLE Books(
                      id BIGINT GENERATED ALWAYS AS IDENTITY,
                      title varchar,
                      author varchar,
                      image varchar,
                  PRIMARY KEY (id)
)