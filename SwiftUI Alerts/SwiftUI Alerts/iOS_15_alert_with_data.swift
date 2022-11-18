import SwiftUI
struct TVShow: Identifiable {
    var id: String { name }
    let name: String
}

struct iOS_15_alert_with_data: View {
    @State private var selectedShow: TVShow?

    var body: some View {
        VStack(spacing: 20) {
            Text("What is your favorite TV show?")
                .font(.headline)

            Button("Select Ted Lasso") {
                selectedShow = TVShow(name: "Ted Lasso")
            }

            Button("Select Bridgerton") {
                selectedShow = TVShow(name: "Bridgerton")
            }
        }
        .alert(item: $selectedShow) { show in
            Alert(title: Text(show.name), message: Text("Great choice!"), dismissButton: .cancel())
        }
    }
}
