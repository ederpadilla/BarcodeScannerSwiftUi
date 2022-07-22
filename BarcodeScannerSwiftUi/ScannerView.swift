//
//  ScannerView.swift
//  BarcodeScannerSwiftUi
//
//  Created by Eder  Padilla on 22/07/22.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode: String
    
    func makeUIViewController(context: Context) -> ScannerViewCcontroller {
        ScannerViewCcontroller(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewCcontroller, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    class Coordinator: NSObject, ScannerVCDelegate {
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            print("Bardcoe \(barcode)🚀")
            scannerView.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            scannerView.scannedCode = ""
            print("Error \(error)🤖")
        }
    }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView(scannedCode: .constant("123456"))
    }
}
