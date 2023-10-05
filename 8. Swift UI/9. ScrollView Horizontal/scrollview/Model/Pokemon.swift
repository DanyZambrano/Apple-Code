
import Foundation

struct Pokemon {
    
    var imagen: String
    var titulo: String
    var descripcion: String
    
    init(imagen: String, titulo: String, descripcion: String) {
        self.imagen = imagen
        self.titulo = titulo
        self.descripcion = descripcion
    }
    
    init() {
        self.init(imagen: "", titulo: "", descripcion: "")
    }
}
