import SwiftUI

@main
struct Main {
    
    static func main() {
        if NSClassFromString("XCTestCase") != nil {
            TestApp.main()
            return
        }
        
        GitInboxApp.main()
    }
}
