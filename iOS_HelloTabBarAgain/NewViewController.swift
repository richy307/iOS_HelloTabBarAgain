//
//  NewViewController.swift
//  iOS_HelloTabBarAgain
//
//  Created by 王麒翔 on 2023/7/21.
//

import UIKit

class NewViewController: UIViewController {
    
    
    @IBOutlet weak var myTextInput: UITextField!
    
    @IBAction func ok(_ sender: UIButton) {
        if let inputText = myTextInput.text {
            print(inputText)
        }
        
        myTextInput.text = ""
        myTextInput.resignFirstResponder() // 讓鍵盤掉下去的方法
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myTextInput.becomeFirstResponder()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
