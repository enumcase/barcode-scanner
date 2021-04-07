//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Margulan Daribayev on 08.04.2021.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        return scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        return scannedCode.isEmpty ? .red : .green
    }
}
