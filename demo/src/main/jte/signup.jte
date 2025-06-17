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
<h1>Sign Up</h1>
<form id="signupForm">
    <div id="usernameGroup">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Username" required>
    </div>
    <div id="passwordGroup">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Password" required>
    </div>
    <button type="submit">Sign Up</button>
    <div>
        <p>Already have an account? <a href="/login">Log In</a></p>
    </div>
</form>

<script>
    const signupButton = document.querySelector('#signupForm button');
    const originalButtonText = signupButton.textContent;

    document.getElementById('signupForm').addEventListener('submit', function(e) {
        e.preventDefault();
        const username = document.getElementById('username');
        const password = document.getElementById('password');
        const formData = {
            userName: username.value.trim(),
            password: password.value,
        };

        submitSignupForm(formData);
    });

    function submitSignupForm(formData) {

        const apiUrl = 'http://localhost:8080/signup';

        fetch(apiUrl, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(formData)
        })
            .then(response => {
                if (!response.ok) {
                    return response.json().then(errorData => {
                        throw new Error(errorData.message || 'Registration failed');
                    });
                }
                return response.json();
            })
            .then(data => {
                window.location.href = '/login';
            })
            .catch(error => {
                alert(`Registration failed: ` + error.message);
            })
            .finally(() => {
                signupButton.textContent = originalButtonText;
                signupButton.disabled = false;
            });
    }
</script>

</body>
</html>
