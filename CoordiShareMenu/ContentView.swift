//
//  ContentView.swift
//  CoordiShareMenu
//
//  Created by Srikrishna Pothukuchi on 31/10/25.
//

// ContentView.swift
import SwiftUI

struct ContentView: View {
    @State private var coords = "13.0827° N, 80.2707° E" // Chennai mock
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("📍 CoordiShare")
                .font(.headline)
            
            Text(coords)
                .font(.system(.body, design: .monospaced))
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(6)
            
            Button("Copy to Clipboard") {
                NSPasteboard.general.clearContents()
                NSPasteboard.general.setString(coords, forType: .string)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .frame(width: 220)
    }
}
