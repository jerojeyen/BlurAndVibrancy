//
//  ContentView.swift
//  BlurAndVibrancy
//
//  Created by Jerozan Jeyendrarasa on 17/05/2021.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Image(uiImage: colorScheme == .dark ? #imageLiteral(resourceName: "wallpaper-dark") : #imageLiteral(resourceName: "wallpaper-light"))
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                VisualEffectBlur(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill) {
                    VStack {
                        Label("Hello", systemImage: "applelogo")
                            .font(.largeTitle)
                            .padding(20)
                        Divider()
                        Text("@devwithjero")
                            .font(.footnote)
                            .padding(10)
                    }
                }
                .frame(width: 300, height: 150)
                .cornerRadius(24)
            }
        }
        .statusBar(hidden: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
