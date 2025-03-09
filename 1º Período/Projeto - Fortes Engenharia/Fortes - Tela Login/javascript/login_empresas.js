
function verificar(){

    var validUsername = "Donatario01"; 
    var validPassword = "dona123"; 

    var username = document.getElementById("login").value;
    var password = document.getElementById("password").value;

    if (username === validUsername && password === validPassword) {
        window.location.href = "TelaInicialEmpresa.html";
    } else {
        alert("Login ou senha incorretos!");
        document.getElementById("password").value = "";
    }
};

function versenha(inputId) {
    var passwordInput = document.getElementById(inputId);
    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        document.querySelector('.toggle-password').textContent = 'Ocultar Senha';
    } else {
        passwordInput.type = "password";
        document.querySelector('.toggle-password').textContent = 'Mostrar Senha';
    }
}