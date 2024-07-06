// Array donde almacearmos las preguntas y respues
const preguntas = [];

// Función para agregar preguntas a la array
function addAnswer() {
   // Obtiene referencias a los elementos HTML necesarios
   const respuestas= document.getElementById('respuesta');
   const correctas = document.getElementById('correcta');


   // Obtiene el valor de la respuesta y si está marcada como correcta
   const respuesta = respuestas.value.trim();
   const correcta = correctas.checked;


   // Verifica si ya se alcanzó el límite máximo de respuestas para la pregunta actual
   if (preguntas.length > 0 && preguntas[preguntas.length - 1].respuesta.length >= 5) {
       alert('Has alcanzado el limite');
       return;
   }


   // Verifica si la respuesta no está vacía
   if (respuesta !== '') {
       // Agrega la respuesta al último objeto de preguntas en el array
       preguntas[preguntas.length - 1].respuesta.push({ respuesta, correcta });


       // Limpiar los campos después de agregar la respuesta
       respuestas.value = '';
       correctas.checked = false;


       // Mostrar la lista actualizada de preguntas
       listaPreguntas();
   } else {
       // Verifica si la respuesta no está vacía
       alert('Escribe la respuesta por favor');
   }
}


// Función para agregar respuestas a la array con un limite de 5 repuestas posibles
function addQuestion() {
   // Obtiene la referencia al elemento de entrada de pregunta en el DOM
   const preguntasp = document.getElementById('pregunta');
   // Obtiene el valor de la pregunta y elimina espacios en blanco al principio y al final
   const pregunta = preguntasp.value.trim();
   // Verifica si la pregunta no está vacía
   if (pregunta !== '') {
       // Verifica si ya se alcanzó el límite máximo de preguntas
       if (preguntas.length >= 5) {
           alert('Se ha alcanzado el límite máximo de 5 preguntas.');
           return;// Sale de la función si se alcanza el límite
       }
       // Agrega la nueva pregunta al array de preguntas con un array vacío de respuestas
       preguntas.push({ pregunta, respuesta: [] });


       // Limpiar los campos después de agregar la pregunta
       preguntasp.value = '';


       // Mostrar la lista actualizada de preguntas
       listaPreguntas();
   } else {
       // Muestra una alerta si la pregunta está vacía
       alert('No ha rellenado el apartado de pregunta, porfavor completalo para poder seguir :)');
   }
}


// Función para mostrar la lista de preguntas y respuestas por pantalla
function listaPreguntas() {
   // Obtiene la referencia al elemento de lista en el DOM
   const listaPreguntas = document.getElementById('listaPreguntas');


   // Limpia el contenido existente del elemento de lista
   listaPreguntas.innerHTML = '';


   // Itera sobre cada pregunta en el array 'questions'
   preguntas.forEach((q, index) => {
       // Crea un nuevo elemento de lista (<li>)
       const lista = document.createElement('li');


       // Establece el contenido de texto del elemento de lista
       lista.textContent = `${index + 1}. Pregunta: ${q.pregunta}, Respuestas: ${formatAnswers(q.respuesta)}`;


       // Agrega el elemento de lista al elemento de lista principal
       listaPreguntas.appendChild(lista);
   });
}
// Función para marcar la respuesta como correcta
function formatAnswers(respuestasp) {
   // Utiliza el método 'map' para transformar cada respuesta en una cadena formateada
   return respuestasp.map(a => `${a.respuesta}${a.correcta ? ' (Correcta)' : ''}`).join(', ');
}


// Función para mostrar el código XML generado
function mostrarCodigoXML() {
   // Obtiene la referencia al elemento de código en el DOM
   const codigoPreguntaXML = document.getElementById('codigoXML');


   // Genera el código XML llamando a la función 'generateXMLString()'
   const xmlString = generarCadenaXML();


   // Establece el contenido de texto del elemento de código con el código XML generado
   codigoPreguntaXML.textContent = xmlString;
}




// Función para generar y retornar un código XML formado a base de las preguntas y respuestas guardadas en la array
function generarCadenaXML() {
   // Inicializa el contenido XML con la declaración y el elemento raíz <quiz>
   let xmlContent = '<?xml version="1.0" encoding="UTF-8"?>\n<quiz>\n';


   // Itera sobre cada pregunta en el array 'questions'
   preguntas.forEach((q, index) => {
       // Añade un comentario con el número de la pregunta
       xmlContent += `  <!-- question: ${index + 1} -->\n`;


       // Abre el elemento de pregunta tipo "multichoice"
       xmlContent += '  <question type="multichoice">\n';


       // Agrega el elemento <name> con el texto de la pregunta
       xmlContent += '    <name>\n';
       xmlContent += `      <text>${q.pregunta}</text>\n`;
       xmlContent += '    </name>\n';


       // Agrega el elemento <questiontext> con el formato HTML (puedes personalizar esto)
       xmlContent += '    <questiontext format="html">\n';
       xmlContent += '      <text></text>\n'; // Puedes completar esto según tus necesidades
       xmlContent += '    </questiontext>\n';


       // Agrega el elemento <generalfeedback> con formato HTML (puedes personalizar esto)
       xmlContent += '    <generalfeedback format="html">\n';
       xmlContent += '      <text></text>\n'; // Puedes completar esto según tus necesidades
       xmlContent += '    </generalfeedback>\n';


       // Agrega otros elementos relacionados con la pregunta (puedes personalizar estos valores)
       xmlContent += '    <defaultgrade>1</defaultgrade>\n';
       xmlContent += '    <penalty>0.3333333</penalty>\n';
       xmlContent += '    <hidden>0</hidden>\n';
       xmlContent += '    <idnumber></idnumber>\n';
       xmlContent += `    <single>${q.respuesta.length === 1}</single>\n`; // Cambia a 'true' si solo hay una respuesta
       xmlContent += '    <shuffleanswers>true</shuffleanswers>\n';
       xmlContent += '    <answernumbering>abc</answernumbering>\n';
       xmlContent += '    <showstandardinstruction>0</showstandardinstruction>\n';
       xmlContent += '    <correctfeedback format="html">\n';
       xmlContent += '      <text>La teva resposta és correcta.</text>\n';
       xmlContent += '    </correctfeedback>\n';
       xmlContent += '    <partiallycorrectfeedback format="html">\n';
       xmlContent += '      <text>La teva resposta és parcialment correcta.</text>\n';
       xmlContent += '    </partiallycorrectfeedback>\n';
       xmlContent += '    <incorrectfeedback format="html">\n';
       xmlContent += '      <text>La teva resposta és incorrecta.</text>\n';
       xmlContent += '    </incorrectfeedback>\n';
       xmlContent += '    <shownumcorrect/>\n';


       // Let para guardar las respuestas correctas
      let totalCorrectAnswers = q.respuesta.filter(answer => answer.correct).length;
      
       // Let para para repartir los puntos
       let pointsPerCorrectAnswer = totalCorrectAnswers > 0 ? 1 / totalCorrectAnswers : 0;

       // Itera sobre cada respuesta asociada a la pregunta
       q.respuesta.forEach((respuesta) => {


        // Agrega el elemento <answer> con la fracción y el formato HTML
           xmlContent += `    <answer fraction="${respuesta.correct ? pointsPerCorrectAnswer * 100 : '0'}" format="html">\n`;
           xmlContent += `      <text>${respuesta.respuesta}</text>\n`;


           // Agrega el elemento <feedback> con formato HTML (puedes personalizar esto)
           xmlContent += '      <feedback format="html">\n';
           xmlContent += '        <text></text>\n'; // Puedes completar esto según tus necesidades
           xmlContent += '      </feedback>\n';


           // Cierra el elemento <answer>
           xmlContent += '    </answer>\n';
       });


       // Cierra el elemento de pregunta
       xmlContent += '  </question>\n';
   });


   // Cierra el elemento raíz <quiz>
   xmlContent += '</quiz>';


   // Devuelve la cadena de texto con el contenido XML generado
   return xmlContent;
}


// Función para mostrar el código XML generado y lo muestra por pantalla
function mostrarCodigoXML() {
   // Obtiene la referencia al elemento en el DOM donde se mostrará el código XML
   const xmlCodeElement = document.getElementById('codigoXML');


   // Genera el código XML llamando a la función 'generateXMLCode()'
   const xmlContent = generarCadenaXML();


   // Establece el contenido de texto del elemento con el código XML generado
   xmlCodeElement.textContent = xmlContent;
}
