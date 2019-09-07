//
//  AddController.swift
//  BookPrototype
//
//追加画面で本のタイトルを入手し、メイン画面にのリストに追加するプログラム

import UIKit
//本のTitleを保存するための変数（今回はタイトルのため配列型で変数名はBookTitle）
//classをまたいで使用するため、class前に記述
var BookTitle = [String]()

class AddController: UIViewController {
    //Titleを入力するためのテキストフィールド
    //テキストフィールドの設定
    @IBOutlet weak var TitleTextField: UITextField!
    //追加ボタンの設定
    @IBAction func TitleAddButton(_ sender: Any) {
        //変数に入力内容を入れる
        BookTitle.append(TitleTextField.text!)
        //追加ボタンを押すとテキストフィールドを空にする
        TitleTextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set(BookTitle, forKey: "TitleList")
    }
    
    //最初からあるコード
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
