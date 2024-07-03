# SieveOfEratostehenes
Generate a list of primes using the Sieve of Eratosthenes upTo n.  This algorithm is using O(n) memory and has runtime complexity O(n log log n). 
This restricts the maximum size of primes that can be computed to the available memory on the computer. Also note RAM access is slow so this
algorithm is far from optimal. 


## Building
Building a Swift package involves using the Swift Package Manager (SPM), which is a tool for managing the distribution of Swift code. 
SPM can create libraries and executables and handle dependencies. Below are the steps to build a Swift package:

```
cd <DIRECTORY_SIEVE_OF_ERATOSTEHENES>
swift build
```
After running swift build, the binary generated is located in the `.build/debug` directory, and this is indeed the binary you can use for 
debugging and development purposes. For production use, you should create a release build, which is optimized for performance.

```
cd <DIRECTORY_SIEVE_OF_ERATOSTEHENES>
swift build -c release 
```
The binary for the release build will be located in the `.build/release` directory.
 
```
macbook-pro % .build/release/PrimesSieve 1000000 > primeNumbers.txt
```

Have FUN! 






