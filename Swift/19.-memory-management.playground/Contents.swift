

class Tutorial {
  let title: String
  unowned let author: Author
  weak var editor: Editor?
  
  init(title: String, author: Author) {
    self.title = title
    self.author = author
  }
  
  deinit {
    print("Goodbye tutorial \(title)!")
  }
  
  /*
  lazy var description: () -> String = {
    [unowned self] in
    "\(self.title) by \(self.author.name)"
  }
  
  lazy var description: () -> String = {
    [weak self] in
    "\(self?.title) by \(self?.author.name)"
  }
  */
  
  lazy var description: () -> String = {
    [weak self] in
    guard let self = self else {
      return "The tutorial is no longer available."
    }
    return "\(self.title) by \(self.author.name)"
  }
}

class Editor {
  let name: String
  var tutorials: [Tutorial] = []
  
  init(name: String) {
    self.name = name
  }
  
  deinit {
    print("Goodbye editor \(name)!")
  }
}

class Author {
  let name: String
  var tutorials: [Tutorial] = []
  
  init(name: String) {
    self.name = name
  }
  
  deinit {
    print("Goodbye author \(name)!")
  }
}

do {
  let author = Author(name: "Cosmin")
  let tutorial = Tutorial(title: "Memory management", author: author)
  print(tutorial.description())
  let editor = Editor(name: "Ray")
  author.tutorials.append(tutorial)
  tutorial.editor = editor
  editor.tutorials.append(tutorial)
}

var counter = 0
var f = { print(counter) }
counter = 1
f()

counter = 0
f = { [c = counter] in print(c) }
counter = 1
f()

counter = 0
f = { [counter] in print(counter) }
counter = 1
f()

let tutorialDescription: () -> String
do {
  let author = Author(name: "Cosmin")
  let tutorial = Tutorial(title: "Memory management", author: author)
  tutorialDescription = tutorial.description
}
print(tutorialDescription())









