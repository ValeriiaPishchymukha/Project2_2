DELETE FROM books;

INSERT INTO books (id, title, author_id) VALUES (1, 'Les Miserables', 1);
INSERT INTO books (id, title, author_id) VALUES (2, 'Notre-Dame de Paris', 1);
INSERT INTO books (id, title, author_id) VALUES (3, 'Faust', 2);
INSERT INTO books (id, title, author_id) VALUES (4, 'Iphigenie auf Tauris', 2);
INSERT INTO books (id, title, author_id) VALUES (5, 'Harry Potter and the Philosopher’s Stone', 3);
INSERT INTO books (id, title, author_id) VALUES (6, '1984', 4);
INSERT INTO books (id, title, author_id) VALUES (7, 'The Hobbit', 5);
INSERT INTO books (id, title, author_id) VALUES (8, 'The Lord of the Rings', 5);


INSERT INTO book_genres (book_id, genre_id) VALUES (1, 1);
INSERT INTO book_genres (book_id, genre_id) VALUES (1, 2);
INSERT INTO book_genres (book_id, genre_id) VALUES (2, 1);
INSERT INTO book_genres (book_id, genre_id) VALUES (2, 3);
INSERT INTO book_genres (book_id, genre_id) VALUES (3, 4);
INSERT INTO book_genres (book_id, genre_id) VALUES (3, 5);
INSERT INTO book_genres (book_id, genre_id) VALUES (4, 4);
INSERT INTO book_genres (book_id, genre_id) VALUES (4, 6);
INSERT INTO book_genres (book_id, genre_id) VALUES (5, 7);
INSERT INTO book_genres (book_id, genre_id) VALUES (5, 8);
INSERT INTO book_genres (book_id, genre_id) VALUES (6, 2);
INSERT INTO book_genres (book_id, genre_id) VALUES (6, 9);
INSERT INTO book_genres (book_id, genre_id) VALUES (7, 7);
INSERT INTO book_genres (book_id, genre_id) VALUES (7, 8);
INSERT INTO book_genres (book_id, genre_id) VALUES (8, 7);
INSERT INTO book_genres (book_id, genre_id) VALUES (8, 10);
