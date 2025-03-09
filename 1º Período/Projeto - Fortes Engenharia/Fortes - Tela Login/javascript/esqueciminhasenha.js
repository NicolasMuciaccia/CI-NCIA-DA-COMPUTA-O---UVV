document.getElementById('passwordResetForm').addEventListener('submit', function(event) {
    event.preventDefault();
    const messageElement = document.getElementById('message');
    messageElement.textContent = 'O email não foi enviado. Por favor, tente novamente.';
});
