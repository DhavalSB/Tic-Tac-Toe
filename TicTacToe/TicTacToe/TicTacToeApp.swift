//
//  TicTacToeApp.swift
//  TicTacToe
//
//  Created by Dhaval Biradar on 2/12/21.
//

import SwiftUI

@main
struct TicTacToeApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MainView(viewRouter: viewRouter)
        }
    }
}
