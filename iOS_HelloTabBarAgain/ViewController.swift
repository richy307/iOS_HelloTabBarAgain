//
//  ViewController.swift
//  iOS_HelloTabBarAgain
//
//  Created by 王麒翔 on 2023/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "First View"
        
        if let secondViewController = self.tabBarController?.viewControllers?[1] as? NewViewController {
            // secondViewController.myTextInput.text = "Hi" // Err, 此時 secondViewController 因為還沒有點選，所以還未產生 UI元件，無法存入。
            secondViewController.messageFromViewOne = "Hi" // 利用 optional屬性，secondViewController 產生實體的時候，就會存入
        }
    }


}

