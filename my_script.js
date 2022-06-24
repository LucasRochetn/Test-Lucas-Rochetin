const nom = document.getElementById("nom");
const email = document.getElementById("email");

form.addEventListener('Ajouter', (e) => {
    e.preventDefault();

    checkInputs();
})

function checkInputs() {
    const nomValue = nom.value.trim();
    const emailValue = email.value.trim();

    if(nomValue === ' '){
        setErrorFor(nom, 'Vous devez entrer un nom valide')
      }else {
        setSuccessFor(nom);
      }

      if(emailValue === ' ') {
        setErrorFor(email, 'Vous devez entrer un email valide')
      }else if(!isEmail(emailValue)) {
        setErrorFor(email, 'Vous devez entrer un email')
      }else {
        setSuccessFor(email);
      } 

}  
      function isEmail(email) {
        return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
      }
