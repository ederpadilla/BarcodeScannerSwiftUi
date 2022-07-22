import Foundation

class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var isScannedEmpty: Bool {
        scannedCode.isEmpty
    }
    
    var statusText: String {
        isScannedEmpty ? "Not scanned yet" : "🤖 \(scannedCode) 🤖"
    }
}
