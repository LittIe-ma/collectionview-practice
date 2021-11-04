//
//  ViewController.swift
//  collectionview-practice
//
//  Created by yasudamasato on 2021/11/04.
//

import UIKit
import Kingfisher

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
    }

    let url = [
        URL(string: "https://livedoor.blogimg.jp/ya_susu/imgs/7/3/7391e5c4.jpg"),
        URL(string: "https://livedoor.blogimg.jp/ya_susu/imgs/3/4/34862d5d.jpg"),
        URL(string: "https://livedoor.blogimg.jp/ya_susu/imgs/8/e/8e7104d8.jpg"),
        URL(string: "https://livedoor.blogimg.jp/ya_susu/imgs/9/b/9b25350f.jpg"),
        URL(string: "https://livedoor.blogimg.jp/ya_susu/imgs/8/d/8d26f195.jpg"),
        URL(string: "https://livedoor.blogimg.jp/ya_susu/imgs/2/e/2e7f6f73.jpg")
    ]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        url.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        imageView.kf.setImage(with: url[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizonalSpace: CGFloat = 20
        let cellSize: CGFloat = self.view.bounds.width/2 - horizonalSpace
        return CGSize(width: cellSize, height: cellSize)
    }


}

