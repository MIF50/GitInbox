import SwiftUI

@main
struct Main {
    
    static func main() {
        guard isProduction() else {
            TestApp.main()
            return
        }
        
        GitInboxApp.main()
    }
    
    private static func isProduction() -> Bool {
        return NSClassFromString("XCTestCase") == nil
    }
}
