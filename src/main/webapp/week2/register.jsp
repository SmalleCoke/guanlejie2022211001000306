<!-- register.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function(){
            $("form").submit(function(e){
                var username = $("#username").val();
                var password = $("#password").val();
                var email = $("#email").val();
                var birthdate = $("#birthdate").val();

                if(username === ""){
                    alert("Please enter a username");
                    e.preventDefault();
                }

                if(password.length < 8){
                    alert("Password must be at least 8 characters long");
                    e.preventDefault();
                }

                if(email === ""){
                    alert("Please enter a valid email address");
                    e.preventDefault();
                }

                if(!isValidEmail(email)){
                    alert("Please enter a valid email address");
                    e.preventDefault();
                }

                if(birthdate === "" || !isValidDate(birthdate)){
                    alert("Please enter a valid birthdate in yyyy-dd-mm format");
                    e.preventDefault();
                }
            });

            function isValidEmail(email){
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return emailPattern.test(email);
            }

            function isValidDate(date){
                var datePattern = /^\d{4}-\d{2}-\d{2}$/;
                return datePattern.test(date);
            }
        });
    </script>
</head>
<body>
<h1>User Registration</h1>
<form action="registerServlet" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br><br>

    <label for="birthdate">Birthdate (yyyy-dd-mm):</label>
    <input type="text" id="birthdate" name="birthdate" required><br><br>

    <input type="submit" value="Register">
</form>
</body>
<html>
