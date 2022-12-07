
import Foundation

func log(message: String) {
  let thread = Thread.current.isMainThread ? "Main" : "Background"
  print("\(thread) thread: \(message).")
}

func addNumbers(upTo range: Int) -> Int {
  log(message: "Adding numbers...")
  return (1...range).reduce(0, +)
}

let queue = DispatchQueue(label: "queue")

func execute<Result>(backgroundWork: @escaping () -> Result, mainWork: @escaping (Result) -> ()) {
  queue.async {
    let result = backgroundWork()
    DispatchQueue.main.async {
      mainWork(result)
    }
  }
}

execute(backgroundWork: { addNumbers(upTo: 100) }, mainWork:  { log(message: "The sum is \($0)") })

struct Tutorial {
  let title: String
  let author: String
}

enum TutorialError: Error {
  case rejected
}

func feedback(for tutorial: Tutorial) -> Result<String, TutorialError> {
  Bool.random() ? .success("published") : .failure(.rejected)
}

func edit(_ tutorial: Tutorial) {
  queue.async {
    let result = feedback(for: tutorial)
    DispatchQueue.main.async {
      switch result {
        case let .success(data):
          print("\(tutorial.title) by \(tutorial.author) was \(data) on the website.")
        case let .failure(error):
          print("\(tutorial.title) by \(tutorial.author) was \(error).")
      }
    }
  }
}

let tutorial = Tutorial(title: "What's new in Swift 5.1", author: "Cosmin Pupăză")
edit(tutorial)

let result = feedback(for: tutorial)
do {
  let data = try result.get()
  print("\(tutorial.title) by \(tutorial.author) was \(data) on the website.")
} catch {
  print("\(tutorial.title) by \(tutorial.author) was \(error).")
}

