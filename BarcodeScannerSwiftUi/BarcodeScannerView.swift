//
//  ContentView.swift
//  BarcodeScannerSwiftUi
//
//  Created by Eder  Padilla on 21/07/22.
//

import SwiftUI

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
                
                Button {
                    isShowingAlert = true
                } label: {
                    Text("Show alert")
                }
                
            }
            .navigationTitle("👓Barcode Scanner")
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("Hello mf"),
                      message: Text("Hello mf message"),
                      dismissButton: .default(Text("Goodby mf")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
