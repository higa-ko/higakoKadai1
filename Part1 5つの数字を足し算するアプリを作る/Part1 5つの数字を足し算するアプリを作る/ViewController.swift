//
//  ViewController.swift
//  Part1 5つの数字を足し算するアプリを作る
//
//  Created by 葡萄酒 on 2021/07/03.
//

import UIKit

class ViewController: UIViewController {
    
    //テキストフィールド
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    
    //ラベル
    @IBOutlet weak var answerLabel: UILabel!

    //ボタン
    @IBAction func actionButton(_ sender: UIButton) {
        
        //変数の宣言と初期化
        var answer:Int = 0
        var numbersArray:[Int] = [0,0,0,0,0]

        //テキストフィールドのデータを文字列から数値に変換して配列に格納
        numbersArray[0] = Int(textField1.text!) ?? 0
        numbersArray[1] = Int(textField2.text!) ?? 0
        numbersArray[2] = Int(textField3.text!) ?? 0
        numbersArray[3] = Int(textField4.text!) ?? 0
        numbersArray[4] = Int(textField5.text!) ?? 0
        
        //配列の要素をすべて足し算
        for i in 0..<numbersArray.count {
            answer += numbersArray[i]
        }
        //数字をラベルに表示
        answerLabel.text = String(answer)
    }
}
