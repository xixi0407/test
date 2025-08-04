//
//  ContentView.swift
//  testing
//
//  Created by Xiying Fan on 8/4/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var vm = ViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Voice Assistance")
                .font(.title2)
            
            switch vm.state {
                case .idle, .error:
                    startCaptureBu3tton
            }
            
            
        }
        .padding()
    }
}

#Preview("Idle") {
    ContentView()
}

#Preview("Recording Speech") {
    let vm = ViewModel()
    vm.state = .recordingSpeech
    return ContentView(vm: vm)
}

#Preview("Processing Speech") {
    let vm = ViewModel()
    vm.state = .processingSpeech
    return ContentView(vm: vm)
}

#Preview("Playing Speech") {
    let vm = ViewModel()
    vm.state = .playingSpeech
    return ContentView(vm: vm)
}

#Preview("Error Speech") {
    let vm = ViewModel()
    vm.state = .error("An error has occured")
    return ContentView(vm: vm)
}

