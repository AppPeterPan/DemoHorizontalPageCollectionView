//
//  ViewController.swift
//  DemoHorizontalPageCollectionView
//
//  Created by Peter Pan on 2022/4/14.
//

import UIKit

class ViewController: UIViewController {
    
    let photos = (1...10).map { "\($0).circle.fill" }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NumberCollectionViewCell.reuseIdentifier, for: indexPath) as! NumberCollectionViewCell
        let photo = photos[indexPath.item]
        cell.imageView.image = UIImage(systemName: photo)
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.bounds.size
    }
}
