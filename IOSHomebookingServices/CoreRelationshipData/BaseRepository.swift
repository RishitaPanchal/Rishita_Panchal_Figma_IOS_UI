//
//  BaseRepository.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 16/06/22.
//

import Foundation

// MARK: - Protocol
protocol BaseRepository {
    
    associatedtype T
    func create(data: T, completion: @escaping (Bool) -> Void)
    
}

