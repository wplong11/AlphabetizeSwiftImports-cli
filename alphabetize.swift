import Foundation

func main() {
  let inputImportLines: [String] = readInputStringLines()
  guard inputImportLines.isEmpty == false else {
    return
  }

  sortImports(inputImportLines).forEach {
    print($0)
  }
}

func sortImports(_ inputLines: [String]) -> [String] {
  let systemImports: Set<String>
    = Set([
    "Foundation",
    "UIKit",
    "CoreML"
  ])

  let inputImports: Set<String>
    = inputLines
    .filter { $0.starts(with: "import ") }
    .map { $0.trimStart(by: "import ") }
    |> Set.init

  let usedSystemImports: Set<String> = inputImports.intersection(systemImports)
  let usedCustomImports: Set<String> = inputImports.subtracting(usedSystemImports)

  return usedSystemImports.sorted().map { "import \($0)" }
    + [""]
    + usedCustomImports.sorted().map { "import \($0)" }
}

infix operator |>: AdditionPrecedence
func |> <T, U>(value: T, function: ((T) -> U)) -> U {
  return function(value)
}

extension String {
  func trimStart(by toTrim: String) -> String {
    return String(self[self.index(self.startIndex, offsetBy: toTrim.count)...])
  }
}

func readInputStringLines() -> [String] {
  var inputStringList: [String] = []
  while let inputString: String = readLine() {
    inputStringList.append(inputString)
  }
  return inputStringList
}

main()
