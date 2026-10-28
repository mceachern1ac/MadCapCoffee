import SwiftUI

@main struct MyApp: App {
    @State private var cart = Cart()
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(cart)
        }
    }
}
