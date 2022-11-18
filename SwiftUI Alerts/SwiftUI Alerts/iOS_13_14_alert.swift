import SwiftUI

struct iOS_13_14_alert: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show iOS 13-14 Alert") {
            showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
                }

        
    }
}
