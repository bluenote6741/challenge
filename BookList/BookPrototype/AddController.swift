//
//  AddController.swift
//  BookPrototype
//
//追加画面で本のタイトルを入手し、メイン画面にのリストに追加するプログラム

import UIKit

//classをまたいで使用するため、class前に記述
var BookTitle = [String]() //本のタイトルを格納する変数
var BookReleaseDate = [String]() //本の発売日を格納する変数

class AddController: UIViewController {
    //テキストフィールドの設定
    @IBOutlet weak var TitleTextField: UITextField! //本のタイトル用のテキストフィールド
    @IBOutlet weak var ReleaseDateTextField: UITextField! //本の発売日用のテキストフィールド
    
    //追加ボタンの設定
    @IBAction func TitleAddButton(_ sender: Any) {
        //各変数に入力内容を入れる
        BookTitle.append(TitleTextField.text!)
        BookReleaseDate.append(ReleaseDateTextField.text!)
        //追加ボタンを押すとテキストフィールドを空にする
        TitleTextField.text = ""
        ReleaseDateTextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set(BookTitle, forKey: "TitleList")
        UserDefaults.standard.set(BookReleaseDate, forKey: "ReleaseDateList")
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
