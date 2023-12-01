//
//  ContentView.swift
//  Careful Scrolling
//
//  Created by Aleksey Sabantsev on 01.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack(alignment: .bottom) {
                ScrollView(.vertical) {
                    VStack {
                        ForEach(1...100, id: \.self) { index in
                            Text("\(index)")
                                .monospaced()
                                .foregroundColor(.gray)
                                .font(.system(size: 24))
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .safeAreaInset(edge: .bottom) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: 50)
                        .opacity(0.75)
                }
            }
            .tabItem {
                Label("First", systemImage: "star")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
