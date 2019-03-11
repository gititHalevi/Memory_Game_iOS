//
//  GameViewController.swift
//  MemoryGameIOS
//
//  Created by hackeru on 11/03/2019.
//  Copyright © 2019 humgry Hackeru. All rights reserved.
//

import UIKit


class GameViewController: UIViewController {
    
    var lblMemoryGame: UILabel!
    var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Memory Game Here
        
        view.backgroundColor = UIColor.white
        
        lblMemoryGame = UILabel(frame: CGRect(x: 10, y: 120, width: view.frame.width - 20, height: 30))
        lblMemoryGame.text = "Memory Game"
        lblMemoryGame.textAlignment = .center
        view.addSubview(lblMemoryGame)
        
        btnBack = UIButton(type: .system)
        btnBack.frame = CGRect(x: 10, y: 180, width: view.frame.width - 20, height: 120)
        btnBack.setTitle("Back", for: .normal)
        btnBack.addTarget(self, action: #selector(handleBtnBackClicked(sender:)), for: .touchUpInside)
        view.addSubview(btnBack)
    }
    
    @objc func handleBtnBackClicked(sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    
}
