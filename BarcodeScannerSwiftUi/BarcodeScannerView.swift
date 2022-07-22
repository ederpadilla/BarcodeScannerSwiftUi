//
//  ContentView.swift
//  BarcodeScannerSwiftUi
//
//  Created by Eder  Padilla on 21/07/22.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity,
                           maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode",
                      systemImage: "barcode.viewfinder")
                .font(.title)
                .padding()
                
                Text("Not scanned yet")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.red)
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
