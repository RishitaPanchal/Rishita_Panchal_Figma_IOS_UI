//
//  BaseViewModel.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 07/06/22.
//

import Foundation

class BaseViewModel {
    
    // MARK: - Instance variables
    var onSuccedd = Dynamic<String?>(nil)
    var onFailure = Dynamic<String?>(nil)
    var isLoading = Dynamic<Bool>(true)
    
}
