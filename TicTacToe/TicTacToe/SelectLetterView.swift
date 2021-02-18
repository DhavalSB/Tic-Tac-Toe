//
//  SelectLetterView.swift
//  TicTacToe
//
//  Created by Dhaval Biradar on 2/14/21.
//

import SwiftUI
import Combine

struct SelectLetterView: View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack {
            Text("Player 1")
                .font(.title)
                .padding(.bottom, 100)
            HStack {
                Button(action: {
                    print(Player1.letter)
                    print(Player2.letter)
                    setPlayers("x")
                    turn = Player1.letter
                    print(Player1.letter)
                    print(Player2.letter)
                    print(turn)
                    print(displayPlayer())
                    clearBoard()
                    viewRouter.currentPage = .page2
                }) {
                    Text("X")
                        .font(.title)
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(Color("textColors"))
                }
                Button(action: {
                    print(Player1.letter)
                    print(Player2.letter)
                    setPlayers("o")
                    turn = Player1.letter
                    print(Player1.letter)
                    print(Player2.letter)
                    print(turn)
                    print(displayPlayer())
                    clearBoard()
                    viewRouter.currentPage = .page2
                }) {
                    Text("O")
                        .font(.title)
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(Color("textColors"))
                    }
                }
                .padding(.bottom, 100)
            }
        }
    }

struct SelectLetterView_Previews: PreviewProvider {
    static var previews: some View {
        SelectLetterView(viewRouter: ViewRouter())
            .previewDevice("iPhone 12 mini")
    }
}
