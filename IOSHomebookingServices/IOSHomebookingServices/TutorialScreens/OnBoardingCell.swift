//
//  OnBoardingCell.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 05/05/22.
//

import UIKit

class OnBoardingCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgViewOnBoarding: UIImageView!
    
    /// function to collectionview cell
    static func initData(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnBoardingCell", for: indexPath) as? OnBoardingCell else {
            return UICollectionViewCell()
        }
        cell.lblTitle.text = OnBoardingData.onBoardingData[indexPath.row].title
        cell.lblDescription.text = OnBoardingData.onBoardingData[indexPath.row].descreption
        cell.imgViewOnBoarding.image = UIImage.init(resource: OnBoardingData.onBoardingData[indexPath.row].image)
        return cell
    }
    
}
