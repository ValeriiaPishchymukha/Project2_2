@import java.util.List
@import com.example.demo.data.Author
@import com.example.demo.data.Book
@import com.example.demo.data.Genre

@param List<Author> authors
@param List<Book> books
@param List<Genre> genres
@param Boolean isAuthenticated

<!DOCTYPE html>
<html>
<head>
    <title>Books</title>
</head>
<body>
<h1>Books List</h1>
<ul>
    @for(Book book : books)
        <ul>
            <div>
                <h2>${book.getTitle()} - ${book.getAuthor().getName()}</h2>
                <p>
                    @for(Genre genre : book.getGenres())
                        <li>${genre.getName()}</li>
                    @endfor
                </p>
            </div>
        </ul>
    @endfor
</ul>
</body>
</html>
