//
//  TestCollectionViewController.swift
//

import UIKit


class TestCollectionViewController: UICollectionViewController {
    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor.whiteColor()
        //clearsSelectionOnViewWillAppear = false
    }
    
    
    //データの個数を返すメソッド
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    //データを返すメソッド
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        //セルを取得し、イメージビューに画像を設定して返す。
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("TestCell", forIndexPath: indexPath)
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: "item" + String(indexPath.row) + ".png")
        
        return cell
    }
    
    
    
    //セル選択時の呼び出しメソッド
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        //セグエを実行する。
        performSegueWithIdentifier("TestSegue", sender: nil)
        
    }
    
    
    
    //画面遷移実行前の呼び出しメソッド
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        //選択中のセルの画像を取得する。
        let index = collectionView?.indexPathsForSelectedItems()?.first
        let cell = collectionView?.cellForItemAtIndexPath(index!)
        let imageView = cell!.viewWithTag(1) as! UIImageView
        
        
        //遷移先のビューコントローラーを取得し、インスタンス変数に画像とテキストを設定する。
        let controller:ViewController = (segue.destinationViewController as? ViewController)!
        controller.testTitle = String(index!.row)
        controller.testImage = imageView.image
    }
    
}