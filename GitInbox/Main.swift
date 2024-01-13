import SwiftUI

@main
struct Main {
    
    static func main() {
        guard NSClassFromString("XCTestCase") == nil else {
            TestApp.main()
            return
        }
        
        GitInboxApp.main()
    }
}
