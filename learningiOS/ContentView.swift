//
//  ContentView.swift
//  learningiOS
//
//  Created by Daksh Desai on 14/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "back"
    @State private var computerCard = "back"
    @State private var playerScore = 0
    @State private var computerScore = 0
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    // Generate a random number
                    let playerRandom = Int.random(in: 2...14)
                    let computerRandom = Int.random(in: 2...14)
                    // Update Cards
                    playerCard = "card" + String(playerRandom)
                    computerCard = "card" + String(computerRandom)
                    if(playerRandom>computerRandom){
                        playerScore += 1
                    }else{
                        computerScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        
                        Text("Player").font(.title2)
                            .foregroundColor(.white).bold().padding()
                        Text(String(playerScore)).font(.title3).foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("Computer").font(.title2)
                            .foregroundColor(.white).bold().padding()
                        Text(String(computerScore)).font(.title3).foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 11")
        }
    }
}
