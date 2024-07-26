import Foundation

@objc public class TCPPlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
