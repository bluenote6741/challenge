//
//  ViewController.swift
//  BookPrototype
//


import UIKit
//TableViewを使うために、classの継承を追加
var giveCellCount: Int = 0

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //UITableView、numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BookTitle.count //戻り値の設定(表示するcell数)
    }
    
    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TitleCellに表示するための変数を作る
        //（重要）ポイントはindexPathの最初の文字が小文字になる
        let TitleCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TitleCell", for: indexPath)
        
        TitleCell.textLabel!.text = BookTitle[indexPath.row] //TitleCell変数に入力した本のタイトルを入れる
        
        return TitleCell //戻り値の設定（表示する中身）
    }
    
    //UITableViewのセルをスワイプで削除する
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            BookTitle.remove(at: indexPath.row)
            BookReleaseDate.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            //var deleteTitle: [String] = UserDefaults.standard.array(forKey: "TitleList") as! [String]
            //var deleteReleaseDate: [String] = UserDefaults.standard.array(forKey: "ReleaseDateList") as! [String]
            //deleteTitle.remove(at: indexPath.row)
            //deleteReleaseDate.remove(at: indexPath.row)
            UserDefaults.standard.set(BookTitle,forKey: "TitleList")
            UserDefaults.standard.set(BookReleaseDate,forKey: "ReleaseDateList")
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        giveCellCount = indexPath.row
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toNext", sender: nil)
    }
    
    
    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //追加画面で入力した内容を取得する
        //画面を起動した時に、TitleList（入力した本のタイトルが入っている場所）に何かしらのデータがあるかどうか確認する
        if UserDefaults.standard.object(forKey: "TitleList") != nil {
            //TitleListにデータがあった場合、BookTitle変数にデータを渡す
            BookTitle = UserDefaults.standard.object(forKey: "TitleList") as! [String]
        }
        
        if UserDefaults.standard.object(forKey: "ReleaseDateList") != nil{
            BookReleaseDate = UserDefaults.standard.object(forKey: "ReleaseDateList") as! [String]
        }
    }

}
