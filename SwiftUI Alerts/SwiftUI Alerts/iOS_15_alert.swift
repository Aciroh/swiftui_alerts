import SwiftUI

struct iOS_15_alert: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show iOS 15+ Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Ok", role: .cancel) { }
            Button("First", role: .destructive) { }
            Button("Second") { }
            Button("Third") { }
        }
    }
}
