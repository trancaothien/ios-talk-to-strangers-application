import SwiftUI

@main
struct StrangersApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
