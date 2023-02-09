import Cocoa


// 4
enum Sqrt: Error {
    case outOfBound
}

func squareCalc(_ number: Double) throws -> Double {
    if number <= 10_000 && number >= 1 {
        return sqrt(number)
    }
    throw Sqrt.outOfBound
}
print(try squareCalc(3))
print(try squareCalc(10_000))


// 3
for i in 1...100 {
    if i % 5 == 0 && i % 3 == 0 { //Correction: use i.isMultiple(of: 3)
        print("FizzBuzz")
    }
    if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}


// 2
let albums = ["Red", "Fearless"]
print(albums)
let albumsSet = Set(albums)
print(albumsSet)


// 1
let celsius = 3.0

extension Double {
    public func celsiusToFahrenheit() -> Double {
        return self * 9 / 5 + 32
    }
}

print("Celsius -> \(celsius)")
print("Fahrenheit -> \(celsius.celsiusToFahrenheit())")
