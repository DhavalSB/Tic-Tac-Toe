//
//  GameController.swift
//  TicTacToe
//
//  Created by Dhaval Biradar on 2/13/21.
//

import Foundation
import SwiftUI

struct Player {
    var letter: Character
    init(_ letter: Character) {
        self.letter = letter
    }
// Maybe add later if necessary idk
//    mutating func toggle() {
//        if Player1.letter == "x" {
//            Player1.letter = "o"
//            Player2.letter = "x"
//        }
//        else {
//            Player1.letter = "x"
//            Player2.letter = "o"
//        }
//    }
}

enum Page {
    case page1
    case page2
    case page3
}

var turn = Player1.letter
var Player1 = Player(" ")

var Player2 = Player(" ")

var Draw: Bool {
    return boardIsFull && !playerHasWon()
}

//set players letters
func setPlayers(_ letter1: Character) {
    Player1.letter = letter1
    if Player1.letter == "x" {
        Player2.letter = "o"
    }
    else {
        Player2.letter = "x"
    }
}
//temporary board slots as numbers
var board: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

var boardIsFull: Bool {
    var temp = false
    for index in 0..<board.count {
        if Int(board[index]) != nil {
            temp = false
            return false
        }
        else {
            temp = true
        }
    }
    return temp
}


func clearBoard() {
    board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
}


func playerHasWon() -> Bool {
        if turn == "x" {
            if ((board[0] == "x") && (board[1] == "x") && (board[2] == "x")) || ((board[3] == "x") && (board[4] == "x") && (board[5] == "x")) || ((board[6] == "x") && (board[7] == "x") && (board[8] == "x")) || ((board[0] == "x") && (board[3] == "x") && (board[6] == "x")) || ((board[1] == "x") && (board[4] == "x") && (board[7] == "x")) || ((board[2] == "x") && (board[5] == "x") && (board[8] == "x")) || ((board[0] == "x") && (board[4] == "x") && (board[8] == "x")) || ((board[2] == "x") && (board[4] == "x") && (board[6] == "x")) {
                return true
            }
        }
        else if turn == "o"{
            if ((board[0] == "o") && (board[1] == "o") && (board[2] == "o")) || ((board[3] == "o") && (board[4] == "o") && (board[5] == "o")) || ((board[6] == "o") && (board[7] == "o") && (board[8] == "o")) || ((board[0] == "o") && (board[3] == "o") && (board[6] == "o")) || ((board[1] == "o") && (board[4] == "o") && (board[7] == "o")) || ((board[2] == "o") && (board[5] == "o") && (board[8] == "o")) || ((board[0] == "o") && (board[4] == "o") && (board[8] == "o")) || ((board[2] == "o") && (board[4] == "o") && (board[6] == "o")) {
                return true
            }
        }
    return false
}

func changeTurn() {
    if turn == "x" {
        turn = "o"
    }
    else {
        turn = "x"
    }
}


var gameIsOver: Bool {
    if Draw || playerHasWon() {
        return true
    }
    else {
        return false
    }}



func clearPlayers() {
    Player1.letter = " "
    Player2.letter = " "
}



func displayPlayer() -> String {
    if ((turn == "x") && (Player1.letter == "x")) || ((turn == "o") && (Player1.letter == "o")) {
        return "Player 1"
    }
    else {
        return "Player 2"
    }
}



//if turn == "x" {
//    board[0] = "x"
//} else if turn == "o" {board[0] = "o"}
//changeTurn()
