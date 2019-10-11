//
//  EditViewController.swift
//  BookPrototype
//
//  Created by 今冨　滉太 on 2019/10/12.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var BookTitleTextField: UITextField!
    @IBOutlet weak var BookReleaseDateTextField: UITextField!

    @IBAction func SaveButton() {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        BookTitleTextField.text = BookTitle[giveCellCount]
        BookReleaseDateTextField.text = BookReleaseDate[giveCellCount]
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
