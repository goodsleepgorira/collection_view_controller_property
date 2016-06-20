//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testImageView: UIImageView!
    
    var testTitle:String!
    var testImage:UIImage!
    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //タイトルと画像を設定する。
        self.title = testTitle
        testImageView.image = testImage

    }
    
}
