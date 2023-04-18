//
//  EndScreenView.swift
//  GuessTheNumber
//
//  Created by Süleyman Üren on 18.04.2023.
//

import SwiftUI


struct EndScreenView: View {
    var status = false

    var body: some View {
        VStack{
            if status {
                Image("mutlu").resizable().frame(width: 150,height: 150)
                Text("Kazandınız").font(Font.title).bold()

            }else{
                Image("uzgun").resizable().frame(width: 150,height: 150)
                    .padding(60)
                Text("Kaybettiniz").font(Font.title).bold()

            }
        }
    }
}

struct EndScreenView_Previews: PreviewProvider {
    static var previews: some View {
        EndScreenView()
    }
}
