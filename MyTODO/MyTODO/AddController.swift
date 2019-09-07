//
//  AddController.swift
//  MyTODO
//
//  Created by 合澤勝之 on 2019/09/07.
//

import UIKit
var TodoKobetsunonakami = [String]()

class AddController: UIViewController {
    @IBOutlet weak var TodoTextField: UITextField!
    @IBAction func TodoAddButton(_ sender: Any) {
        
        TodoKobetsunonakami.append(TodoTextField.text!)
        TodoTextField.text = ""
        
        UserDefaults.standard.set(TodoKobetsunonakami, forKey: "TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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



