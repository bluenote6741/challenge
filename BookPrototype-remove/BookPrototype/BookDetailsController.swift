//
//  BookDetailsControllerViewController.swift
//  BookPrototype
//
//  Created by 今冨　滉太 on 2019/09/17.
//

import UIKit

class BookDetailsController: UIViewController {

    
    @IBOutlet weak var BookTitleLabel: UILabel!
    @IBOutlet weak var BookReleaseDateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a: [String] = UserDefaults.standard.array(forKey: "TitleList") as! [String]
        let b: [String] = UserDefaults.standard.array(forKey: "ReleaseDateList") as! [String]
        BookTitleLabel.text = a[giveCellCount]
        BookReleaseDateLabel.text = b[giveCellCount]
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
