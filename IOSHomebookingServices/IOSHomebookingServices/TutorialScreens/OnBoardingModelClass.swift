//
//  OnBoardingModelClass.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 05/05/22.
//

import Foundation
import UIKit
import Rswift

// MARK: Onboarding model class
struct OnBoardingModelClass {
    
    // MARK: - Instance variables
    let image: ImageResourceType
    let title: String
    let descreption: String
    
    // MARK: - Initializer
    init(image: ImageResourceType, title: String, description: String) {
        self.image = image
        self.title = title
        self.descreption = description
    }

}

// MARK: - Onboarding array
class OnBoardingData {
    
    static let onBoardingData = [
        OnBoardingModelClass(image: R.image.onBoardingScreenOne, title: R.string.localizable.title1(), description: R.string.localizable.description1()),
        OnBoardingModelClass(image: R.image.onBoardingScreenTwo, title: R.string.localizable.title1(), description: R.string.localizable.description1()),
        OnBoardingModelClass(image: R.image.onBoardingScreenThree, title: R.string.localizable.title1(), description: R.string.localizable.description1())
    ]
    
}
