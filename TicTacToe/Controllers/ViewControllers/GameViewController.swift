//
//  GameViewController.swift
//  TicTacToe
//
//  Created by Jon Corn on 2/12/20.
//  Copyright © 2020 Jon Corn. All rights reserved.
//⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⠶⣿⣭⡧⡤⣤⣻⣛⣹⣿⣿⣿⣶⣄
//⢀⢀⢀⢀⢀⢀⢀⢀⢀⣼⣊⣤⣶⣷⣶⣧⣤⣽⣿⣿⣿⣿⣿⣿⣷
//⢀⢀⢀⢀⢀⢀⢀⢀⢀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
//⢀⢀⢀⢀⢀⢀⢀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧
//⢀⢀⢀⢀⢀⢀⠸⠿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣻⣿⣿⣿⣿⣿⡆
//⢀⢀⢀⢀⢀⢀⢀⢸⣿⣿⡀⠘⣿⡿⢿⣿⣿⡟⣾⣿⣯⣽⣼⣿⣿⣿⣿⡀
//⢀⢀⢀⢀⢀⢀⡠⠚⢛⣛⣃⢄⡁⢀⢀⢀⠈⠁⠛⠛⠛⠛⠚⠻⣿⣿⣿⣷
//⢀⢀⣴⣶⣶⣶⣷⡄⠊⠉⢻⣟⠃⢀⢀⢀⢀⡠⠔⠒⢀⢀⢀⢀⢹⣿⣿⣿⣄⣀⣀⣀⣀⣀⣀
//⢠⣾⣿⣿⣿⣿⣿⣿⣿⣶⣄⣙⠻⠿⠶⠒⠁⢀⢀⣀⣤⣰⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄
//⢿⠟⠛⠋⣿⣿⣿⣿⣿⣿⣿⣟⡿⠷⣶⣶⣶⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄
//⢀⢀⢀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⠙⠻⠿⣿⣿⡿
//⢀⢀⢀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⢀⢀⢀⠈⠁
//⢀⢀⢀⢀⢸⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
//⢀⢀⢀⢀⢸⣿⣿⣿⣿⣄⠈⠛⠿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣹⣿⣿⣿⣿⣿⣿⣿⣿⠇
//⢀⢀⢀⢀⢀⢻⣿⣿⣿⣿⣧⣀⢀⢀⠉⠛⠛⠋⠉⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⠏
//⢀⢀⢀⢀⢀⢀⢻⣿⣿⣿⣿⣿⣷⣤⣄⣀⣀⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋
//⢀⢀⢀⢀⢀⢀⢀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛
//⢀⢀⢀⢀⢀⢀⢀⢀⢀⢹⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁
//⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸⣿⡇⢀⠈⠙⠛⠛⠛⠛⠛⠛⠻⣿⣿⣿⠇
//⢀⢀⢀⢀⢀⢀⢀⢀⢀⣸⣿⡇⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢨⣿⣿
//⢀⢀⢀⢀⢀⢀⢀⢀⣾⣿⡿⠃⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢸⣿⡏
//⢀⢀⢀⢀⢀⢀⢀⢀⠻⠿⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢀⢠⣿⣿⡇

import UIKit

class GameViewController: UIViewController {
    
    // MARK: - PROPERTIES
    var currentPlayer: Player?
    let playerOne = Player(name: "Player 1")
    let playerTwo = Player(name: "Player 2")
    var playerOneWinCount: Int = 0
    var playerTwoWinCount: Int = 0
    var turnCount: Int = 0
    var winningSet: [[Int]] = [[1, 2, 3], [1, 4, 7], [2, 5, 8], [3, 6, 9], [4, 5, 6], [7, 8, 9], [3, 5, 7], [1, 5, 9]]
    var buttons: [UIButton] {
        return [topLeftButton, topCenterButton, topRightButton, middleLeftButton, middleCenterButton, middleRightButton, bottomLeftButton, bottomCenterButton, bottomRightButton]
    }
    
    // MARK: - OUTLETS
    // Win count labels
    @IBOutlet weak var playerOneWinCountLabel: UILabel!
    @IBOutlet weak var playerTwoWinCountLabel: UILabel!
    // top row of buttons
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topCenterButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    // middle row of buttons
    @IBOutlet weak var middleLeftButton: UIButton!
    @IBOutlet weak var middleCenterButton: UIButton!
    @IBOutlet weak var middleRightButton: UIButton!
    // bottom row of buttons
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomCenterButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    
    // MARK: - VIEW LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        currentPlayer = playerOne
    }
    
    // MARK: - ACTIONS
    // Each of the 9 buttons are linked to this action
    @IBAction func gridButtonTapped(_ sender: UIButton) {
        if currentPlayer == playerOne {
            sender.adjustsImageWhenDisabled = false
            sender.setBackgroundImage(#imageLiteral(resourceName: "transparentX2"), for: .normal)
            sender.isEnabled = false
        } else {
            sender.adjustsImageWhenDisabled = false
            sender.setBackgroundImage(#imageLiteral(resourceName: "transparentO"), for: .normal)
            sender.isEnabled = false
        }
        currentPlayer?.locations.append(sender.tag)
        didGameEnd()
        turnCount += 1
        // once turn count reaches max number of moves on board, draw game
        if turnCount == 9 {
            presentGameDraw()
        }
        toggleCurrentPlayer()
    }
    
    // MARK: - METHODS
    func updateWinCount() {
        guard let currentPlayer = currentPlayer else {return}
        if currentPlayer == playerOne {
            playerTwoWinCount += 1
        } else {
            playerOneWinCount += 1
        }
    }
    
    // updating the win counter with the win count values
    func updateWinCountLabel() {
        playerOneWinCountLabel.text = "\(playerOneWinCount)"
        playerTwoWinCountLabel.text = "\(playerTwoWinCount)"
    }
    
    // if the value of currentPlayer is equal to playerTwo, then switch the value to playerOne, otherwise if it's not equal to playerTwo switch it to playerTwo
    func toggleCurrentPlayer() {
        if currentPlayer == playerTwo {
            currentPlayer = playerOne
        } else {
            currentPlayer = playerTwo
        }
    }
    
    // method that checks current marks on board to see if any match the winning set of moves in winningSet
    func didGameEnd() {
        for set in winningSet {
            guard let currentPlayer = currentPlayer else {return}
            // If it's player one's turn, and his moves equal a winning combo, end the game
            if currentPlayer == playerOne {
                if currentPlayer.locations.contains(set[0]) {
                    if currentPlayer.locations.contains(set[1]) {
                        if currentPlayer.locations.contains(set[2]) {
                            presentGameWon()
                        }
                    }
                }
                // else, if it's player two's turn, and his moves equal a wining combo, end the game
            } else if currentPlayer == playerTwo {
                if currentPlayer.locations.contains(set[0]) {
                    if currentPlayer.locations.contains(set[1]) {
                        if currentPlayer.locations.contains(set[2]) {
                            presentGameWon()
                        }
                    }
                }
            }
        }
    }
    
    // clears the players' location properties, and clears marks off the board
    func clear() {
        playerOne.locations = []
        playerTwo.locations = []
        for button in buttons {
            button.setBackgroundImage(#imageLiteral(resourceName: "256px-Blank_square"), for: .normal)
            button.isEnabled = true
        }
        turnCount = 0
    }
    
    // presents a custom alert for when the game is won by a player
    func presentGameWon() {
        guard let currentPlayer = currentPlayer else {return}
        let alert = UIAlertController(title: "Game Over!", message: "\(currentPlayer.name) annihilated his opponent", preferredStyle: .alert)
        let winAction = UIAlertAction(title: "Continue the manslaughter!", style: .default) { (action) in
            // clears the board
            self.clear()
            // updates the win count
            self.updateWinCount()
            // updates the win count label
            self.updateWinCountLabel()
            
        }
        alert.addAction(winAction)
        present(alert, animated: true)
    }
    
    // presents a custom alert for when the players draw
    func presentGameDraw() {
        let alert = UIAlertController(title: "Game Over!", message: "The game was a draw", preferredStyle: .alert)
        let drawAction = UIAlertAction(title: "It can't end like this!", style: .default) { (action) in
            self.clear()
        }
        alert.addAction(drawAction)
        present(alert, animated: true)
    }
}


