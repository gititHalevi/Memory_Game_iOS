//
//  HighScoreViewController.swift
//  MemoryGameIOS
//
//  Created by hackeru on 11/03/2019.
//  Copyright © 2019 humgry Hackeru. All rights reserved.
//

import UIKit


class HigheScoreViewController: UIViewController {
    
    var lblHigheScore: UILabel!
    var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Highe Score Here
        
        view.backgroundColor = UIColor.white
        
        lblHigheScore = UILabel(frame: CGRect(x: 10, y: 120, width: view.frame.width - 20, height: 30))
        lblHigheScore.text = "Highe score"
        lblHigheScore.textAlignment = .center
        view.addSubview(lblHigheScore)
        
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





