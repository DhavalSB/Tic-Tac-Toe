//
//  MainView.swift
//  TicTacToe
//
//  Created by Dhaval Biradar on 2/14/21.
//

import SwiftUI

struct MainView: View {
    
    @State var currentPage: Page = .page1
    @StateObject var viewRouter: ViewRouter

    
    var body: some View {
        
        switch viewRouter.currentPage {
        case .page1:
            SelectLetterView(viewRouter: viewRouter)
        case .page2:
            ContentView(viewRouter: viewRouter)
        case .page3:
            WinningPage(viewRouter: viewRouter)
        }
        
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewRouter: ViewRouter())
    }
}
