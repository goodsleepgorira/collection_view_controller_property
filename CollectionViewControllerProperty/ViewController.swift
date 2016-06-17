//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var testNavBar: UINavigationBar!
    @IBOutlet weak var testImageView: UIImageView!
    
    var testTitle:String!
    var testImage:UIImage!
    
    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //タイトルと画像を設定する。
        testNavBar.topItem!.title = testTitle
        testImageView.image = testImage
        
    }
    
    
    //ボタン押下時の呼び出しメソッド
    @IBAction func pushButton(sender: UIBarButtonItem) {
        
        //モーダル表示されているビューコントローラーを解放する。
        self.dismissViewControllerAnimated(true, completion:nil)
    }
    
}
