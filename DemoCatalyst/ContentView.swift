import SwiftUI

struct ContentView: View {
    let eventHandler = EventHandler()
    
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, World!")
            Spacer()
            Button(action: self.eventHandler.buttonATapped) {
                Text("Button A")
            }
            Spacer()
            Button(action: self.eventHandler.buttonBTapped) {
                Text("Button B")
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
