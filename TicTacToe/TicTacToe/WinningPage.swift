//
//  WinningPage.swift
//  TicTacToe
//
//  Created by Dhaval Biradar on 2/15/21.
//

import SwiftUI

struct WinningPage: View {
    
    @StateObject var viewRouter: ViewRouter

    
    var body: some View {
        
    VStack {
        if Draw {
            Text("Game ended in a draw.")
                .font(.title)
                .padding(.top, 150.0)
        } else {Text("\(displayPlayer()) won the game!")
            .font(.title)
            .padding(.top, 150.0)
            
        }
        
        Spacer()
        
        Button(action: {
//            clearBoard()
//            clearPlayers()
            viewRouter.currentPage = .page1
        }) {
            Text("New Game")
                .fontWeight(.semibold)
                .accentColor(Color("textColors"))
        }
        .padding(.bottom, 200.0)

    }
        
        
    }
    
    
}

struct WinningPage_Previews: PreviewProvider {
    static var previews: some View {
        WinningPage(viewRouter: ViewRouter())
            .previewDevice("iPhone 12 Mini")
    }
}
