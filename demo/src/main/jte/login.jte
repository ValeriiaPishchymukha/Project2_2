@import java.util.List
@import com.example.demo.data.Author
@import com.example.demo.data.Book
@import com.example.demo.data.Genre

@param List<Author> authors
@param List<Book> books
@param List<Genre> genres

<!DOCTYPE html>
<html>
<head>
    <title>Authorization</title>
</head>
<body>
    <div>
        <div>Login</div>
        <form id="loginForm" action="/login" method="post">
            <div>
                <label>Username</label>
                <input type="text" id="username" name="username" placeholder="Username" required>
            </div>
            <div>
                <label>Password</label>
                <input type="password" id="password" name="password" placeholder="Password" required>
            </div>
            <button type="submit" class="login-button">Login</button>
            <div class="create-account">
                <p>Don't have an account? <a href="/signup">Create Account</a></p>
            </div>
        </form>
    </div>


</body>
</html>
