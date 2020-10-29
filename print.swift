import Foundation
print(ProcessInfo().processIdentifier)
for _i in 0..<1000 {Thread.sleep(forTimeInterval: 0.01)}
if let value = ProcessInfo.processInfo.environment["PATH"] {
  print(value)
}