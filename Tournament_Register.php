0<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Tournament Register Form</title>
  
  </head>
  <body>


  <style>

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body{
  margin: 100%;
  padding: 100%;
  background: linear-gradient(120deg,#2980b9, #8e44ad);
  height: 100vh;
  overflow: hidden;
}
.center{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 450px;
  height: 600px;
  background: white;
  border-radius: 10px;
  box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
}
.center h1{
  text-align: center;
  padding: 20px 0;
  border-bottom: 1px solid silver;
}
.center form{
  padding: 0 40px;
  box-sizing: border-box;
  flex-direction:column-reverse ;

}
form .txt_field{
  position: relative;
  border-bottom: 1px solid #adadad;
  margin: 30px 0;
  display: flex;
}
.txt_field input{
  width: 100%;
  padding: 0 5px;
  height: 40px;
  font-size: 15px;
  border: none;
  background: none;
  outline: none;
}
.txt_field label{
  position: absolute;
  top: 30%;
  left: 5px;
  color: #adadad;
  transform: translateY(-20%);
  font-size: 16px;
  pointer-events: none;
  transition: .5s;
}
.txt_field span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0%;
  height: 2px;
  background: #2691d9;
  transition: .5s;
}
.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
  top: -5px;
  color: #2691d9;
}
.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before{
  width: 100%;
}
.pass{
  margin: -5px 0 20px 5px;
  color: #2691d9;
  cursor: pointer;
}
.pass:hover{
  text-decoration: underline;
}
input[type="submit"]{
  width: 100%;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
}
input[type="submit"]:hover{
  border-color: #2691d9;
  transition: .5s;
}
.signup_link{
  margin: 30px 0;
  text-align: center;
  font-size: 16px;
  color: #666666;
}
.signup_link a{
  color: #2691d9;
  text-decoration: none;
}
.signup_link a:hover{
  text-decoration: underline;
}


  </style>

    <div class="center">
      <h1>Tournament Register</h1>
      <form method="post">
        <div class="txt_field">
          <input type="text" required>   
          <span></span>
          <label>First Name</label>
        </div>
        <div class="txt_field">
          <input type="text" required>
          <span></span>
          <label>Last Name</label>
        </div>
        
        <div class="txt_field">
          <input type="text" required>
          <span></span>
          <label>Weight</label>
        </div>
        <div class="txt_field">
          <input type="text" required>
          <span></span>
          <label>Address</label>
        </div>
        <div class="txt_field">
          <input type="text" required>
          <span></span>
          <label>Blood Group</label>
        </div>
        <div class="txt_field">
          <input type="text" required>
          <span></span>
          <label>Email</label>
        </div>
        <input type="submit" value="Continue">
                
      </form>
    </div>
  </body>
</html>
