//
//  ContentView.swift
//  BarcodeScannerSwiftUi
//
//  Created by Eder  Padilla on 21/07/22.
//

import SwiftUI

struct AlertItem {
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeciveInput = AlertItem(title: "Invalid Device Input",
                                              message: "Sorry theres not camera bro🥲",
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Input",
                                              message: "The value is not supported is not EAN-8 or EAN-13👓",
                                              dismissButton: .default(Text("Ok")))
}

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    @State private var isShowingAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity,
                           maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode",
                      systemImage: "barcode.viewfinder")
                .font(.title)
                .padding()
                
                Text(scannedCode.isEmpty ? "Not scanned yet" : "🤖 \(scannedCode) 🤖")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
                
            }
            .navigationTitle("👓Barcode Scanner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
