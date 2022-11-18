import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        iOS_15_alert()
        Spacer()
        iOS_13_14_alert()
        Spacer()
        iOS_15_alert_with_data()
    }
}
