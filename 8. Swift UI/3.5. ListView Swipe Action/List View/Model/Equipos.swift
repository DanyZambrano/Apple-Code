
import Foundation

struct Equipos {
    
    var name: String
    var image: String
    var location: String
    var isFavorite: Bool
    
    init(name: String, image: String, location: String, isFavorite: Bool) {
        self.name = name
        self.image = image
        self.location = location
        self.isFavorite = isFavorite
    }
    
    init() {
        self.init(name: "", image: "", location: "", isFavorite: false)
    }
}
