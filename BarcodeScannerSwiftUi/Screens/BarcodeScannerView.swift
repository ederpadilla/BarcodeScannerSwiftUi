//
//  ContentView.swift
//  BarcodeScannerSwiftUi
//
//  Created by Eder  Padilla on 21/07/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject private var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity,
                       maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode",
                      systemImage: "barcode.viewfinder")
                .font(.title)
                .padding()
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.isScannedEmpty ? .red : .green)
                    .padding()
                
            }
            .navigationTitle("👓 Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
