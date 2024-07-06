




// Function to create an HTML element for each CD
function createCdElement(cd) {
    const cdDiv = document.createElement('div');
    cdDiv.className = 'cd';
  
    const title = document.createElement('h2');
    title.textContent = cd.TITLE;
  
    const artist = document.createElement('p');
    artist.textContent = `Artist: ${cd.ARTIST}`;
  
    const country = document.createElement('p');
    country.textContent = `Country: ${cd.COUNTRY}`;
  
    const COMPANY = document.createElement('p');
    COMPANY.textContent = `COMPANY: ${cd.COMPANY}`;
  
    const price = document.createElement('p');
    price.textContent = `Price: ${cd.PRICE}`;
  
    const year = document.createElement('p');
    year.textContent = `Year: ${cd.YEAR}`;
  
    cdDiv.appendChild(title);
    cdDiv.appendChild(artist);
    cdDiv.appendChild(country);
    cdDiv.appendChild(COMPANY);
    cdDiv.appendChild(price);
    cdDiv.appendChild(year);
  
    return cdDiv;
  }
  function createPlantElement(plant) {
    const plantDiv = document.createElement('div');
    plantDiv.className = 'plant';
  
    const COMMON = document.createElement('h2');
    COMMON.textContent = plant.COMMON;
  
    const BOTANICAL = document.createElement('p');
    BOTANICAL.textContent = `BOTANICAL: ${plant.BOTANICAL}`;
  
    const ZONE = document.createElement('p');
    ZONE.textContent = `ZONE: ${plant.ZONE}`;
  
    const LIGHT = document.createElement('p');
    LIGHT.textContent = `LIGHT: ${plant.LIGHT}`;
  
    const price = document.createElement('p');
    price.textContent = `Price: ${plant.PRICE}`;
  
    const AVAILABILITY = document.createElement('p');
    AVAILABILITY.textContent = `AVAILABILITY: ${plant.AVAILABILITY}`;
  
    plantDiv.appendChild(COMMON);
    plantDiv.appendChild(BOTANICAL);
    plantDiv.appendChild(ZONE);
    plantDiv.appendChild(LIGHT);
    plantDiv.appendChild(price);
    plantDiv.appendChild(AVAILABILITY);
  
    return plantDiv;
  }
  function createSimpleElement(simple) {
    const simpleDiv = document.createElement('div');
    simpleDiv.className = 'simple';
  
    const name = document.createElement('h2');
    name.textContent = simple.name;function posicionarpieza(){
  if (type == rook){
    
  }
}
  
    const description = document.createElement('p');
    description.textContent = `description: ${simple.description}`;
  
    const calories = document.createElement('p');
    calories.textContent = `calories: ${simple.calories}`;

    const price = document.createElement('p');
    price.textContent = `price: ${simple.price}`;
    
   
  
   
  
    simpleDiv.appendChild(name);
    simpleDiv.appendChild(description);
    simpleDiv.appendChild(calories);
    simpleDiv.appendChild(price);function posicionarpieza(){
  if (type == rook){
    
  }
}
   
  
    return simpleDiv;
  }

  // Function to load the JSON file and display the catalog
  function displayCatalog() {
    fetch('cd_catalog.json') // Path to your JSON file
      .then(response => response.json())
      .then(catalog => {
        const catalogContainer = document.getElementById('cd-catalog');
        catalog.forEach(cd => {
          const cdElement = createCdElement(cd);
          catalogContainer.appendChild(cdElement);
        });
      })
      .catch(error => {
        console.error('Error loading the CD catalog:', error);
      });
  }
  function displayCatalog2() {
    fetch('cd_catalog2.json') // Path to your JSON file
      .then(response => response.json())
      .then(catalog => {
        const catalogContainer = document.getElementById('cd-catalog2');
        catalog.forEach(cd => {
          const cdElement = createCdElement(cd);
          catalogContainer.appendChild(cdElement);
        });
      })
      .catch(error => {
        console.error('Error loading the CD catalog:', error);
      });
  }
  function displayCatalogPlantes() {
    fetch('../plant_catalog.json') // Path to your JSON file
      .then(response => response.json())
      .then(catalog => {
        const catalogContainer = document.getElementById('plant-catalog');
        catalog.forEach(plant => {
          const plantElement = createPlantElement(plant);
          catalogContainer.appendChild(plantElement);
        });
      })
      .catch(error => {
        console.error('Error loading the CD catalog:', error);
      });
  }
  function displayCatalogSimple() {
    fetch('../simple.json') // Path to your JSON file
      .then(response => response.json())
      .then(catalog => {
        const catalogContainer = document.getElementById('simple');
        catalog.forEach(simple => {
          const simpleElement = createSimpleElement(simple);
          catalogContainer.appendChild(simpleElement);
        });
      })
      .catch(error => {
        console.error('Error loading the CD catalog:', error);
      });
  }
  function displayCatalogChess() {
    var chess = document.getElementById("chess");
    var table = document.createElement("table");
    for (var i = 1; i < 9; i++) {
        var tr = document.createElement('tr');
        for (var j = 1; j < 9; j++) {
            var td = document.createElement('td');
            if (i % 2 == j % 2) {
                td.className = "pink";
            } else {
                td.className = "black";
            }
            tr.appendChild(td);
        }
        table.appendChild(tr);
    }

    chess.appendChild(table);
    table.setAttribute("border", "2");
    
 

    // Constante con códigos Unicode de piezas
    const pieceUnicode = {
        black: {
            bishop: "♝",
            king: "♚",
            knight: "♞",
            pawn: "♟",
            queen: "♛",
            rook: "♜",
        },
        white: {
            bishop: "♗",
            king: "♔",
            knight: "♘",
            pawn: "♙",
            queen: "♕",
            rook: "♖",
        },
    };

    // Realizar una solicitud AJAX para cargar el JSON
    fetch('../chess.json')
        .then(response => response.json())
        .then(data => {
            if (data && data.partida && data.partida.board && Array.isArray(data.partida.board.piece)) {
                data.partida.board.piece.forEach(function (piece) {
                    var span = document.createElement("span");
                    span.classList.add("piezas");
                    span.innerHTML = pieceUnicode[piece["color"]][piece["type"]];
 
                    // Obtener la celda de la tabla según los valores de column y row
                    var row =  parseInt(piece["row"]);
                    var column = parseInt(piece["column"]);

                    // Verificar que la fila y columna estén en el rango adecuado
                    if (row >= 0 && row < table.rows.length && column >= 0 && column < table.rows[row].cells.length) {
                        var cell = table.rows[row].cells[column];

                        // Agregar la pieza a la celda
                        cell.appendChild(span);
                    } 
                        console.log('Posición de fila y columna fuera de rango para la pieza:', piece);
                    
                });
            } 
                console.log('La estructura del archivo JSON no es la esperada:', data);
            
        })
        .catch(error => {
            console.error('Error cargando el catálogo de ajedrez:', error);
        });
      /*  var button = document.createElement("button");
    button.textContent = "Avanzar";
    button.addEventListener("click", avanzar);
    chess.appendChild(button);
    
    var currentMoveIndex = 0; // Índice actual del movimiento
    
    // Función para avanzar al siguiente estado
    var tableroEstado = [];

// Función para avanzar al siguiente movimiento
function avanzar() {
    // Limpiar el tablero antes de avanzar
    limpiarTablero();

    // Realizar una solicitud AJAX para cargar el JSON
    fetch('../chess.json')
        .then(response => response.json())
        .then(data => {
            if (data && data.partida && data.partida.history && Array.isArray(data.partida.history.move)) {
                // Verificar si hay movimientos adicionales para avanzar
                if (currentMoveIndex < data.partida.history.move.length) {
                    // Obtener el conjunto de piezas para el movimiento actual
                    var piecesForMove = data.partida.history.move[currentMoveIndex].piece;

                    // Iterar sobre las piezas y actualizar sus posiciones en el tablero
                    piecesForMove.forEach(function (piece) {
                        // Verificar que se proporcionen valores válidos para color, type, row y column
                        if (
                            piece &&
                            piece["color"] &&
                            piece["type"] &&
                            piece["row"] !== undefined &&
                            piece["column"] !== undefined
                        ) {
                            // Crear un elemento span para la pieza
                            var span = document.createElement("span");
                            span.classList.add("piece");
                            span.innerHTML = pieceUnicode[piece["color"]][piece["type"]];

                            // Obtener la celda de la tabla según los valores de column y row
                            var row = parseInt(piece["row"]);
                            var column = parseInt(piece["column"]);

                            // Verificar que la fila y columna estén en el rango adecuado
                            if (row >= 0 && row < 8 && column >= 0 && column < 8) {
                                var cell = table.rows[row].cells[column];

                                // Agregar la pieza a la celda
                                cell.appendChild(span);

                                // Actualizar el estado del tablero en el array
                                tableroEstado[row * 8 + column] = span;
                            } else {
                                console.log('Posición de fila y columna fuera de rango para la pieza:', piece);
                            }
                        } else {
                            console.log('Datos de pieza incompletos o incorrectos:', piece);
                        }
                    });

                    // Incrementar el índice del movimiento actual
                    currentMoveIndex++;
                    } else {
                        console.log('No hay más movimientos para avanzar.');
                    }
                } else {
                    console.log('La estructura del archivo JSON no es la esperada:', data);
                }
            })
            .catch(error => {
                console.error('Error cargando el catálogo de ajedrez:', error);
            });
    }
    
 
// Función para limpiar el tablero
function limpiarTablero() {
  // Iterar sobre las celdas y eliminar cualquier pieza existente
  for (var i = 0; i < table.rows.length; i++) {
      for (var j = 0; j < table.rows[i].cells.length; j++) {
          var cell = table.rows[i].cells[j];
          while (cell.firstChild) {
              cell.removeChild(cell.firstChild);
          }
      }
  }
}


    
    // Función para colocar las piezas en el tablero
}
*/ //no tengo ni idea de como hacerlo
  }



// Llamar a la función displayCatalogChess cuando la ventana cargue
window.addEventListener('load', displayCatalogChess);

  
  
  // Call the displayCatalog function when the window loads
  window.addEventListener('load', displayCatalog);
  window.addEventListener('load', displayCatalog2);
  window.addEventListener('load', displayCatalogPlantes);
  window.addEventListener('load', displayCatalogSimple);

  