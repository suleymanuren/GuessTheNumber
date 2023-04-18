//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Süleyman Üren on 18.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tahminEkraninaGecis = false
    var body: some View {
        NavigationStack {
            VStack (spacing: 50){
                Text("Tahmin Oyunu").font(Font.title).bold()
                Image("zar").resizable().frame(width: 70,height: 70)
                
                Button("Oyuna Başla"){
                    tahminEkraninaGecis = true
                }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red) // set background color to red
                    .cornerRadius(12)
            }.navigationDestination(isPresented: $tahminEkraninaGecis){
                GameScreenView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
