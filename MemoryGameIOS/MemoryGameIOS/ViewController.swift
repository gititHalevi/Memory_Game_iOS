//
//  ViewController.swift
//  MemoryGameIOS
//
//  Created by hackeru on 11/03/2019.
//  Copyright © 2019 humgry Hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lblMemoryGame: UILabel!
    var btnPlay: UIButton!
    var btnSettings: UIButton!
    var btnHigheScore: UIButton!
    var btnLogin: UIButton!
    var btnSingUp: UIButton!
    var loginAlertController :UIAlertController!
    var singUpAlertController :UIAlertController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let marginHorizontal: CGFloat = 10
        let marginVertical: CGFloat = 30
        
        let width =  view.frame.width - marginHorizontal * 2
        let height: CGFloat = 90
        
        lblMemoryGame = UILabel(frame: CGRect(x: marginHorizontal, y: 200, width: width, height: height))
        lblMemoryGame.text = "Memory Game"
        lblMemoryGame.textAlignment = .center
        lblMemoryGame.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(lblMemoryGame)
        
        btnPlay = UIButton(type: .system)
        btnPlay.frame = CGRect(x: marginHorizontal, y: lblMemoryGame.frame.maxY + marginVertical * 2, width: width, height: height)
        btnPlay.setTitle("Play", for: .normal)
        btnPlay.addTarget(self, action: #selector(handleBtnPlayClicked(sender:)), for: .touchUpInside)
        view.addSubview(btnPlay)
        
        btnSettings = UIButton(type: .system)
        btnSettings.frame = CGRect(x: marginHorizontal, y: btnPlay.frame.maxY + marginVertical, width: width, height: height)
        btnSettings.setTitle("Settings", for: .normal)
        btnSettings.addTarget(self, action: #selector(handleBtnSettingsClicked(sender:)), for: .touchUpInside)
        view.addSubview(btnSettings)
        
        btnHigheScore = UIButton(type: .system)
        btnHigheScore.frame = CGRect(x: marginHorizontal, y: btnSettings.frame.maxY + marginVertical, width: width, height: height)
        btnHigheScore.setTitle("Highe score", for: .normal)
        btnHigheScore.addTarget(self, action: #selector(handleBtnHigheScoreClicked(sender:)), for: .touchUpInside)
        view.addSubview(btnHigheScore)
        
        btnLogin = UIButton(type: .system)
        btnLogin.frame = CGRect(x: 0, y: btnHigheScore.frame.maxY + marginVertical * 2, width: view.frame.width/2, height: height)
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.addTarget(self, action: #selector(handleBtnLoginClicked(sender:)), for: .touchUpInside)
        view.addSubview(btnLogin)
        
        btnSingUp = UIButton(type: .system)
        btnSingUp.frame = CGRect(x: view.frame.width/2, y: btnLogin.frame.minY, width: view.frame.width/2, height: height)
        btnSingUp.setTitle("Sing up", for: .normal)
        btnSingUp.addTarget(self, action: #selector(handleBtnSingUpClicked(sender:)), for: .touchUpInside)
        view.addSubview(btnSingUp)
        
        
    }
    
    @objc func handleBtnPlayClicked(sender: UIButton){
        present(GameViewController(), animated: true, completion: nil)
        
    }
    @objc func handleBtnSettingsClicked(sender: UIButton){
        present(SettingsViewController(), animated: true, completion: nil)

    }
    @objc func handleBtnHigheScoreClicked(sender: UIButton){
        present(HigheScoreViewController(), animated: true, completion: nil)

    }
    @objc func handleBtnLoginClicked(sender: UIButton){
        loginAlertController = UIAlertController(title: "Login", message: nil, preferredStyle: .alert)
        loginAlertController.addTextField { (textField: UITextField) in
            textField.placeholder = "enter your name"
        }
        loginAlertController.addTextField { (textField: UITextField) in
            textField.placeholder = "enter your password"
            textField.textContentType = .password
        }
        let actionOk = UIAlertAction(title: "Login", style: .default) { (action: UIAlertAction) in
            print("ok")
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        loginAlertController.addAction(actionOk)
        loginAlertController.addAction(actionCancel)
        present(loginAlertController!, animated: true, completion: nil)
    }
    
    @objc func handleBtnSingUpClicked(sender: UIButton){
        
    }


}

