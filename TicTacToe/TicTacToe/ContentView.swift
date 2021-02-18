//
//  ContentView.swift
//  TicTacToe
//
//  Created by Dhaval Biradar on 2/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewRouter: ViewRouter

    @State var opacity = Array(repeating: 0.0, count: 18)
    
//    var letterImage1: String {
//        if board[0] == "x" {
//            return "x"
//        } else if board[0] == "o" {
//            return "o"
//        }else {
//            return "placeholderImage"
//        }
//    }
//  Image(letterImage1)
//    .resizable()
//    .scaledToFill()
//    .frame(width: 120, height: 120, alignment: .center)
//    .padding(.leading, 9)

    
        var body: some View {
        VStack {
            Text(displayPlayer())
                .font(.title)
                .padding()
                .padding(.bottom, 40)

            
            
            ZStack {
                Image("BoardGrid")
                         .resizable()
                         .frame(width: 360, height: 360, alignment: .center)
                       .padding()
                
                Group {
   
                    Group {
                        Image("x")
                            .resizable()
                            .position(x: -75, y: -85)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[0])
                        Image("o")
                            .resizable()
                            .position(x: -75, y: -85)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[1])
                
                        Image("x")
                            .resizable()
                            .position(x: 45, y: -85)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[2])
                        Image("o")
                            .resizable()
                            .position(x: 45, y: -85)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[3])
                    
                        Image("x")
                           .resizable()
                            .position(x: 165, y: -85)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[4])
                        Image("o")
                            .resizable()
                            .position(x: 165, y: -85)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[5])
                    }
                    Group {
                        Image("x")
                            .resizable()
                            .position(x: -75, y: 40)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[6])
                        Image("o")
                            .resizable()
                            .position(x: -75, y: 40)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[7])
                                    
                        Image("x")
                            .resizable()
                            .position(x: 45, y: 40)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[8])
                        Image("o")
                            .resizable()
                            .position(x: 45, y: 40)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[9])
                                    
                        Image("x")
                            .resizable()
                            .position(x: 165, y: 40)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[10])
                        Image("o")
                            .resizable()
                            .position(x: 165, y: 40)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[11])
                    }
                    Group {
                        Image("x")
                            .resizable()
                            .position(x: -75, y: 165)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[12])
                        Image("o")
                            .resizable()
                            .position(x: -75, y: 165)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[13])
                                    
                        Image("x")
                            .resizable()
                            .position(x: 45, y: 165)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[14])
                        Image("o")
                            .resizable()
                            .position(x: 45, y: 165)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[15])
                                    
                        Image("x")
                            .resizable()
                            .position(x: 165, y: 165)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[16])
                        Image("o")
                            .resizable()
                            .position(x: 165, y: 165)
                            .frame(width: 80, height: 80, alignment: .center)
                            .opacity(opacity[17])
                    }
                }
                
                
                
                VStack {
                
                    Group {
                        // Button Row #1
                        HStack {
                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                              
                                if board[0] == "1" {
                                    if turn == "x" {
                                        opacity[0] = 1
                                        board[0] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        opacity[1] = 1
                                        board[0] = "o"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    
                                    if !gameIsOver {changeTurn()}
                                }
                                print(board[0])
                                }) {
                                Text("")
                                    .frame(width: 120, height: 125, alignment: .center)
                                    .padding(.leading, 9)
                            }

                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                              
                                if board[1] == "2" {
                                    if turn == "x" {
                                        opacity[2] = 1
                                        board[1] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        board[1] = "o"
                                        opacity[3] = 1
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    if !gameIsOver {changeTurn()}

                                }
                                print(board[1])
                            }) {
                                Text("")
                                    .frame(width: 119, height: 125, alignment: .center)
                            }
                            
                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                              
                                if board[2] == "3" {
                                    if turn == "x" {
                                        opacity[4] = 1
                                        board[2] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        board[2] = "o"
                                        opacity[5] = 1
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    if !gameIsOver {changeTurn()}

                                }
                                print(board[2])
                            }) {
                                Text("")
                                    .frame(width: 115, height: 125, alignment: .center)
                                    .padding(.trailing, 9)
                            }
                            

                        }
                    }
                    Group {
                        // Button Row #2
                        HStack {
                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                              
                                if board[3] == "4" {
                                    if turn == "x" {
                                        opacity[6] = 1
                                        board[3] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        board[3] = "o"
                                        opacity[7] = 1
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    if !gameIsOver {changeTurn()}

                                }
                                print(board[3])
                            }) {
                                Text("")
                                    .frame(width: 120, height: 125, alignment: .center)
                                    .padding(.leading, 9)
                            }

                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                              
                                if board[4] == "5" {
                                    if turn == "x" {
                                        opacity[8] = 1
                                        board[4] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        board[4] = "o"
                                        opacity[9] = 1
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    if !gameIsOver {changeTurn()}

                                }
                                print(board[4])
                            }) {
                                Text("")
                                    .frame(width: 119, height: 125, alignment: .center)
                            }
                            
                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                              
                                if board[5] == "6" {
                                    if turn == "x" {
                                        opacity[10] = 1
                                        board[5] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        board[5] = "o"
                                        opacity[11] = 1
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    if !gameIsOver {changeTurn()}

                                }
                                print(board[5])
                            }) {
                                Text("")
                                    .frame(width: 115, height: 125, alignment: .center)
                                    .padding(.trailing, 9)
                            }
                            

                        }
                    }
                    Group {
                        //Button Row #3
                        HStack {
                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                              
                                if board[6] == "7" {
                                    if turn == "x" {
                                        opacity[12] = 1
                                        board[6] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        board[6] = "o"
                                        opacity[13] = 1
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    if !gameIsOver {changeTurn()}

                                }
                                print(board[6])
                            }) {
                                Text("")
                                    .frame(width: 120, height: 125, alignment: .center)
                                    .padding(.leading, 9)
                            }

                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                              
                                if board[7] == "8" {
                                    if turn == "x" {
                                        opacity[14] = 1
                                        board[7] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        board[7] = "o"
                                        opacity[15] = 1
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    if !gameIsOver {changeTurn()}

                                }
                                print(board[7])
                            }) {
                                Text("")
                                    .frame(width: 119, height: 125, alignment: .center)
                            }
                            
                            Button(action: {
                                print(board)
                                print(gameIsOver)
                                print(playerHasWon())
                                if board[8] == "9" {
                                    if turn == "x" {
                                        opacity[16] = 1
                                        board[8] = "x"
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    else if turn == "o" {
                                        board[8] = "o"
                                        opacity[17] = 1
                                        print(board)
                                        print(gameIsOver)
                                        print(playerHasWon())
                                        if gameIsOver {
                                            viewRouter.currentPage = .page3
                                        }
                                    }
                                    if !gameIsOver {changeTurn()}
                                }
                                print(board[8])
                            }) {
                                Text("")
                                    .frame(width: 115, height: 125, alignment: .center)
                                    .padding(.trailing, 9)
                            }
                            

                        }
                    }
                }
            }
            .padding(.bottom, 60)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
            .previewDevice("iPhone 12 Pro Max")
            .preferredColorScheme(.dark)
    }
}

/* MIGHT USE
 VStack {
 Button(action: {}) {
     /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Button")/*@END_MENU_TOKEN@*/
 }
 .frame(width: 85, height: 90, alignment: .center)
 //change accent color to clear later
 .accentColor(.blue)
 .padding()
 .padding(.top, 110.0)
 
 Spacer()
 
 Button(action: {}) {
     /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Button")/*@END_MENU_TOKEN@*/
 }
 .frame(width: 85, height: 90, alignment: .center)
 //change accent color to clear later
 .accentColor(.blue)
 .padding()
 Spacer()
}*/



