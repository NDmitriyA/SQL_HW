CREATE TABLE IF NOT EXISTS executor (
     id SERIAL PRIMARY KEY,
	 name VARCHAR(100) NOT NULL,
	 pseudonym VARCHAR(100)	
	 );
CREATE TABLE IF NOT EXISTS album (
	 id SERIAL PRIMARY KEY,
	 executer_id INTEGER REFERENCES executor(id),	
	 title VARCHAR(100) NOT NULL,
	 year_of_issue INTEGER NOT NULL
	 );
CREATE TABLE IF NOT EXISTS songs (	 
	 id SERIAL PRIMARY KEY,
	 album_id INTEGER REFERENCES album(id),
	 title VARCHAR(100) NOT NULL,
     duration NUMERIC	 
     );	 
CREATE TABLE IF NOT EXISTS genre_of_music (
     id SERIAL PRIMARY KEY,	 
	 title VARCHAR(30) NOT NULL
	 );
CREATE TABLE IF NOT EXISTS executor_genre (
	 executor_id INTEGER REFERENCES executor(id),
     genre_id INTEGER REFERENCES genre_of_music(id),
	 CONSTRAINT ex_gen PRIMARY KEY (executor_id, genre_id)
	 );
CREATE TABLE IF NOT EXISTS compilation (
	 id SERIAL PRIMARY KEY,
	 name VARCHAR(100) NOT NULL,
	 song_id INTEGER REFERENCES songs(id),
	 year_of_issue INTEGER
	 );