//
//  ViewController.swift
//  MultiColum
//
//  Created by Misael Pérez Chamorro on 9/20/18.
//  Copyright © 2018 Misael Pérez Chamorro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var collectionView: UICollectionView!
  override func viewDidLoad() {
    super.viewDidLoad()
    setupCollectionView()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  func setupCollectionView() {
    self.collectionView.register(UINib(nibName: "ColumCollectionViewCell",
                                       bundle: nil),
                                 forCellWithReuseIdentifier: "ColumCollectionViewCell")
  }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    //Number Of Rows
    return 10
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //Number of Colums
    return 4
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ColumCollectionViewCell", for: indexPath) as? ColumCollectionViewCell
    cell?.textLabel.text = "Value"
    return cell!
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = self.view.frame.width
    let numberSize = (width * 0.10)
    let culumSize = (width * 0.90) / 3
    switch indexPath.item {
    case 0:
      return CGSize(width: numberSize, height: 46)
    case 1:
      return CGSize(width: culumSize, height: 46)
    case 2:
      return CGSize(width: culumSize, height: 46)
    case 3:
      return CGSize(width: culumSize, height: 46)
    default:
      return CGSize(width: culumSize, height: 46)
    }
    
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  func reoundedValue(number: Double, decimal: Int) -> String {
    let roundedValue = String(format: "%.\(decimal)f", number)
    return roundedValue
  }
  
  func reoundedFloatValue(number: Float, decimal:Int) -> String {
    let roundedValue = String(format: "%.\(decimal)f", number)
    return roundedValue
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
}


