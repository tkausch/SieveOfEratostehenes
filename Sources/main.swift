import Foundation
import ArgumentParser


struct Primes: ParsableCommand {
    
    static let configuration = CommandConfiguration(
        abstract: "Print all prime numbers up to n using  Sieve of Eratosthenes algorithm. This algorithm is using O(n) memory and has runtime complexity O(n log log n). This restricts the maximum size of primes that can be computed to the available memory on the mac. Also note RAM access is slow so algorithm is not optimal.")

    @Argument(help: "Upper limit  n  for computing prime numbers.")
    var upTo: Int
    
    func validate() throws {
        guard upTo >= 2 else {
            throw ValidationError("'<n>' must be at least 2.")
        }
    }
    
    func run() {
        let primes = generatePrimes(upTo: upTo)
        for p in primes {
            print(p)
        }
    }
    
}


/// Generate a list of primes using the Sieve of Eratosthenes upTo n.  This algorithm is using O(n) memory and has tuntime complexity O(n log log n).
/// Note: This restricts the maximum size of primes that can be computed to the available memory on the computer. Also note RAM access is slow.
/// - Parameter limit: Upper limit  n  for computing prime numbers.
/// - Returns: Array of prime numbers
func generatePrimes(upTo limit: Int) -> [Int] {
        var isPrime = [Bool](repeating: true, count: limit + 1)
        isPrime[0] = false
        isPrime[1] = false
        for i in 2...Int(sqrt(Double(limit))) {
            if isPrime[i] {
                for multiple in stride(from: i * i, through: limit, by: i) {
                    isPrime[multiple] = false
                }
            }
        }
        return (2...limit).filter { isPrime[$0] }
}

let clock = ContinuousClock()
let elapsed = clock.measure {
    Primes.main()
}
print("Time: \(elapsed)")
