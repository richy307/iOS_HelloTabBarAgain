//
//  NewViewController.swift
//  iOS_HelloTabBarAgain
//
//  Created by 王麒翔 on 2023/7/21.
//

import UIKit

class NewViewController: UIViewController {
    
    var messageFromViewOne: String?
    
    @IBOutlet weak var myTextInput: UITextField!
    
    @IBAction func ok(_ sender: UIButton) {
        
        if let inputText = myTextInput.text {
            print(inputText)
            myTextInput.text = ""
            myTextInput.resignFirstResponder() // 讓鍵盤掉下去的方法
            
            // 取得 第一個ViewController 的屬性
            if let firstViewController = self.tabBarController?.viewControllers?[0] as? ViewController {
                firstViewController.myLabel.text = inputText
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextInput.becomeFirstResponder() // 鍵盤出現
        myTextInput.text = messageFromViewOne // 取得 page1 的值 // 利用optional屬性，將值傳給 UI元件。
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
