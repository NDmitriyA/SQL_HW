CREATE TABLE IF NOT EXISTS executor (
     id SERIAL PRIMARY KEY,
	 name VARCHAR(100) NOT NULL,
	 pseudonym VARCHAR(100)	
	 );
CREATE TABLE IF NOT EXISTS album (
	 id SERIAL PRIMARY KEY,		
	 title VARCHAR(100) NOT NULL,
	 year_of_issue INTEGER NOT NULL
	 );
CREATE TABLE IF NOT EXISTS songs (	 
	 id SERIAL PRIMARY KEY,	
	 title VARCHAR(100) NOT NULL,
	 album_id INTEGER REFERENCES album(id),
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
	 year_of_issue INTEGER
	 );
CREATE TABLE IF NOT EXISTS alb_exec (
	 album_id INTEGER REFERENCES album(id),
	 executer_id INTEGER REFERENCES executor(id),
	 CONSTRAINT alb_exe PRIMARY KEY (album_id, executer_id)
	 );
CREATE TABLE IF NOT EXISTS comp_song (
	 comp_id INTEGER REFERENCES compilation(id),
	 song_id INTEGER REFERENCES songs(id),
	 CONSTRAINT com_son PRIMARY KEY (comp_id, song_id)
	 );