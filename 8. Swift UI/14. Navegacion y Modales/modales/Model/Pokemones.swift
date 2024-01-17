
import Foundation

struct Pokemones: Identifiable {
    var id = UUID()
    var titulo: String
    var power: Int
    var resumen: String
    var image: String
    var contenido: String
}

let pokemones = [
              Pokemones(titulo: "Bulbasaur",
                        power: 3,
                        resumen: "Bulbasaur es un Pokémon cuadrúpedo de color verde.",
                        image: "Bulbasaur",
                        contenido: "Bulbasaur es un Pokémon cuadrúpedo de color verde, posee manchas de una tonalidad más oscura del mismo color con distintas formas geométricas. Su cabeza representa cerca de un tercio de su cuerpo. En su frente se ubican tres manchas que pueden cambiar de posición, forma o lugar dependiendo del ejemplar.\n\nTiene como orejas muñones pequeños y puntiagudos. Sus ojos son grandes y de color rojo. Sus patas son cortas y posee tres garras en cada una. Este Pokémon tiene plantado un bulbo en el lomo desde que nace, esta semilla crece y se desarrolla a lo largo del ciclo de vida de Bulbasaur a medida que suceden sus evoluciones."),
              Pokemones(titulo: "Pikachu",
                        power: 5,
                        resumen: "Pikachu es un Pokémon de tipo eléctrico introducido en la primera generación.",
                        image: "Pikachu",
                        contenido: "Pikachu en japonés) es un Pokémon de tipo eléctrico introducido en la primera generación. \n\nEs el Pokémon más conocido de la historia, mayormente por ser el acompañante del protagonista del anime, Ash Ketchum y la mascota representante de la franquicia Pokémon."),
              Pokemones(titulo: "Snorlax",
                        power: 4,
                        resumen: "Snorlax es una especie de Pokémon de Nintendo y de la franquicia de Pokémon de Game Freak.",
                        image: "Snorlax",
                        contenido: "Snorlax es una especie de Pokémon de Nintendo y de la franquicia de Pokémon de Game Freak. En la pokédex original es el Pokémon 143.º. \n\nSnorlax es de gran tamaño y con pelaje adiamantado a poco pulir, se caracteriza en el anime y los videojuegos por limitarse a comer y dormir."),
              Pokemones(titulo: "Eevee",
                        power: 3,
                        resumen: "Eevee es un personaje de ficción de la franquicia de Nintendo y Game Freak Pokémon.",
                        image: "Eevee",
                        contenido: "Eevee es un personaje de ficción de la franquicia de Nintendo y Game Freak Pokémon. Creado por Ken Sugimori, su primera aparición fue en los videojuegos Pokémon Rojo y Azul. \n\nHa aparecido en diversos medios, títulos especiales, y adaptaciones animadas de la franquicia."),
              Pokemones(titulo: "Charmander",
                        power: 1,
                        resumen: "Es un Pokémon de tipo fuego introducido en la primera generación.",
                        image: "Charmander",
                        contenido: "Charmander es un Pokémon de tipo fuego introducido en la primera generación. \n\nEs uno de los tres Pokémon iniciales que pueden elegir los entrenadores que empiezan su aventura en la región de Kanto, junto a Bulbasaur y Squirtle.")
]
