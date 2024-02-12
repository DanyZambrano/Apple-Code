
import Foundation

struct Objetos {
    
    var imagen: String
    var identificador: String
    var confidence: String
    
    init(imagen: String, identificador: String, confidence: String) {
        self.imagen = imagen
        self.identificador = identificador
        self.confidence = confidence
    }
    
    init() {
        self.init(imagen: "", identificador: "", confidence: "")
    }
}
