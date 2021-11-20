(function () {
  'use strict'
  var forms = document.querySelectorAll('.needs-validation')
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()

function validarFormulario(){
  var nombre = document.getElementById("nombre")
  var apellido = document.getElementById("apellido")
  var email = document.getElementById("email")
  var fechaNacimiento = document.getElementById("fechaNacimiento").value
  var nombreUsuario = document.getElementById("nombreUsuario")
  var contraseña = document.getElementById("contraseña")
  var error = document.getElementById("error")
  error.innerHTML = " ";

    if (txtNombre == null || txtNombre.length == 0 || /^\s+$/.test(txtNombre)) {
      error.innerHTML = "Por favor introduzca su nombre";
      return false;
      }
      if (txtNombre.length <= 2) {
        error.innerHTML = "El nombre debe tener 2 o mas letras";
        return false;
      }
      if (txtApellido == null || /^\s+$/.test(txtApellido)) {
        error.innerHTML = "Por favor introduzca su apellido";
        return false;
      }
      if (txtApellido.length <= 2) {
        error.innerHTML = "El apellido debe tener 2 o mas letras";
        return false; 
      }
    
      if (!/\S+@\S+\.\S+/.test(textEmail)) {
        error.innerHTML = "Por favor introduzca un eMail válido";
        return false;
      }
    
      if (!/\S+@\S+\.\S+/.test(dateFechaNacimiento)) {
        error.innerHTML = "Fecha no valida";
        return false;
      }
      
      if (txtNombreUsuario == null || txtNombreUsuario.length == 0 || /^\s+$/.test(txtNombreUsuario)) {
        error.innerHTML = "Por favor introduzca un nombre de usuario";
        return false;
      }
    
      if (txtNombreUsuario.length <= 6) {
        error.innerHTML = "Ingrese un nombre de usuario de mas de 5 letras";
        return false;
      }
      
      if (passwordContraseña == null || passwordContraseña == 0 || /^\s+$/.test(passwordContraseña)) {
        error.innerHTML = "Por favor introduzca una contraseña";
        return false;
      }
    
      if (passwordContraseña.length <= 5) {
        error.innerHTML = "Ingrese una contraseña de mas de 5 caracteres";
        return false;
      }
}

window.addEventListener ('load', function calcularEdad(){
    fechaNacimiento.addEventListener('change', function () {
        if (this.value) {
            edad.innerText = `Edad: ${calculoEdad(this.value)} años`
        }
    })
}) 

const fechaNacimiento = document.getElementById("fechaNacimiento");
const edad = document.getElementById("edad")
const calculoEdad = (fechaNacimiento) => {
    let fechaActual = new Date();
    const anoActual = parseInt(fechaActual.getFullYear())
    const mesActual = parseInt(fechaActual.getMonth())+1
    const diaActual = parseInt(fechaActual.getDate())
    
    const anoNacimiento = parseInt(String(fechaNacimiento).substring(0, 4))
    const mesNacimiento = parseInt(String(fechaNacimiento).substring(5, 7))
    const diaNacimiento = parseInt(String(fechaNacimiento).substring(8, 10))
    
    let edad = anoActual - anoNacimiento;
    if (mesActual < mesNacimiento) {
        edad--
    } else if (mesActual === mesNacimiento) {
        if (diaActual < diaNacimiento) {
            edad--
        }
    }
    return edad
}

function mensaje(){
    const alerta = document.getElementsByClassName("btn btn-primary")
    var msg = 'Su mensaje fue enviado con exito'
    alert(msg)
}

function redireccion() {
  setTimeout(function () {
    location.href = "/index.html";
  }, 5000); 
 }

function cambiarColor(obj, color){
    document.getElementsByClassName("evento")
    obj.style.backgroundColor = "midnightblue"
}

function volverColor(obj, color){
    document.getElementsByClassName("evento")
    obj.style.backgroundColor = "skyblue"
}

