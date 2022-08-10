CREATE TABLE IF NOT EXISTS Categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR (20) NOT NULL UNIQUE 
);
   
CREATE TABLE IF NOT EXISTS Musicians (
    id SERIAL PRIMARY KEY,
    name VARCHAR (20) NOT NULL
);
   
CREATE TABLE IF NOT EXISTS Categ_Musicians (
    id_category INTEGER REFERENCES	Categories(id),
    id_musician INTEGER REFERENCES	Musicians(id),
    CONSTRAINT pk PRIMARY KEY (id_category, id_musician)
);

CREATE TABLE IF NOT EXISTS Albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR (20) NOT NULL,
    album_year DATE    
);

CREATE TABLE IF NOT EXISTS Music_Albums (
    id_musician INTEGER REFERENCES	Musicians(id),
    id_album INTEGER REFERENCES	Albums(id),
    CONSTRAINT pk1 PRIMARY KEY (id_musician, id_album)
);    

CREATE TABLE IF NOT EXISTS Collections (
    id SERIAL PRIMARY KEY,
    name VARCHAR (20) NOT NULL,
    collection_year INTEGER CHECK (collection_year > 1950)   
);

CREATE TABLE IF NOT EXISTS Trucks (
    id SERIAL PRIMARY KEY,
    name VARCHAR (40) NOT NULL,
    truck_time integer,  
    id_album INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Truck_Collections (
    id_truck INTEGER REFERENCES	Trucks(id),
    id_collection INTEGER REFERENCES	Collections(id),
    CONSTRAINT pk2 PRIMARY KEY (id_truck, id_collection)
);


