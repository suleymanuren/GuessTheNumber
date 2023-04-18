//
//  GameScreenView.swift
//  GuessTheNumber
//
//  Created by Süleyman Üren on 18.04.2023.
//

import SwiftUI

struct GameScreenView: View {
    @State private var sonucEkraninaGecis = false
    @State private var count = 5
    @State private var randomNumber = 0
    @State private var input = ""
    @State private var close = ""
    var body: some View {
        VStack(spacing:50){
            Text("Kalan Hakkınız: \(count)")
                .bold()
                .foregroundColor(.red)
                .font(.title2)
                .padding(10)
            Text("Tahmin: \(close)")
                .bold()
                .foregroundColor(.blue)
                .font(.title2)
                .padding(10)
                
            TextField("Tahmin",text: $input)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            Button("Tahmin Et") {
                if input == String(randomNumber){
                    sonucEkraninaGecis = true
                }
                else{
                    count -= 1
                    if input < String(randomNumber) {
                        close = "Yukarı"
                    }else{
                        close = "Aşağı"
                    }
                    guard count != 0 else {
                        sonucEkraninaGecis = true
                        return
                    }
                }
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red) // set background color to red
            .cornerRadius(12)

        }.navigationDestination(isPresented: $sonucEkraninaGecis){
            EndScreenView(status: sonucEkraninaGecis)
        }.onAppear{
            randomNumber = Int.random(in: 0...100)
            count = 5
            input = ""
            close = ""
            sonucEkraninaGecis = false
            print(randomNumber )
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView()
    }
}
