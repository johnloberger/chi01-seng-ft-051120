# Intro to SQL

Structured Query Language

we use SQL to ask questions to a database

database - file that has tables and rows

Ruby app == database file

ruby class == table
Widget == widgets
MovieTicket == movie_tickets

movie_tickets
--------------
id     price     movie_id    customer_id

1      15        1           2

class MovieTicket
  def initialize(price, movie_id, customer_id, id=nil)
    @price = price
    @movie_id = movie_id
    @customer_id = customer
  end
end

MovieTicket.new(15, 1, 2, 1)

ruby instance == row

instance variable == cell

TYPES OF QUERIES

(META : create a table, create/change a column)
CREATE : add rows to a table
READ : retieving data from tables
UPDATE : modifying existing table rows
DELETE : remove table rows

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below

USERS
-----------
id        username
1         "coffee_dad"
2         "matcha_mom"

TWEETS
------------
id        message          user_id

1        "coffee#"         1
2        "mmmmatcha"       2
3        "love my coffee"  1 

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
SELECT * FROM artists;

```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
SELECT * FROM artists WHERE name = 'Black Sabbath';

```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
CREATE TABLE fans (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR);

```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
ALTER TABLE fans
ADD COLUMN artist_id INTEGER;

```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**

```sql
INSERT INTO fans (artist_id, name) VALUES (169, 'Libby');

```

6. Check out the [Faker gem](https://github.com/stympy/faker). `gem install faker`, open up irb, run `require 'faker'` and then generate a fake name for yourself using `Faker::Name.name`. How would you update your name in the fans table to be your new name?

```sql
UPDATE fans
SET name = "NEW NAME"
WHERE id = 1;
```

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
SELECT * FROM fans
WHERE artist_id != 169;

```

8. Write the SQL to display an artists name next to their album title

```sql
SELECT name, title FROM artists JOIN albums ON artist_id = artists.id;

```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql
SELECT artists.name, albums.title, COUNT(tracks.id) FROM artists
JOIN albums ON albums.artist_id = artists.id
JOIN tracks ON tracks.album_id = albums.id
GROUP BY albums.id;

```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql
SELECT artists.name, genres.name FROM artists
JOIN albums ON albums.artist_id = artists.id
JOIN tracks ON tracks.album_id = albums.id
JOIN genres ON tracks.genre_id = genres.id
WHERE genres.name = "Pop";

```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have move than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least

```sql

```
