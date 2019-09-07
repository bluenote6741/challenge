//
//  ViewController.swift
//  BookPrototype
//


import UIKit
//TableViewを使うために、classの継承を追加
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //UITableView、numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定(表示するcell数)
        return BookTitle.count
    }
    
    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TitleCellに表示するための変数を作る
        //（重要）ポイントはindexPathの最初の文字が小文字になる
        let TitleCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TitleCell", for: indexPath)
        //TitleCell変数に入力した本のタイトルを入れる
        TitleCell.textLabel!.text = BookTitle[indexPath.row]
        //戻り値の設定（表示する中身）
        return TitleCell
    }
    
    
    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //追加画面で入力した内容を取得する
        //画面を起動した時に、TitleList（入力した本のタイトルが入っている場所）に何かしらのデータがあるかどうか確認する
        if UserDefaults.standard.object(forKey: "TitleList") != nil {
            //TitleListにデータがあった場合、TodoKobetsunonakami変数にデータを渡す
            BookTitle = UserDefaults.standard.object(forKey: "TitleList") as! [String]
        }
    }

}
