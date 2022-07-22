import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeciveInput = AlertItem(title: Text("Invalid Device Input"),
                                              message: Text("Sorry theres not camera bro🥲"),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: Text("Invalid Scanned Input"),
                                              message: Text("The value is not supported is not EAN-8 or EAN-13👓"),
                                              dismissButton: .default(Text("Ok")))
}
