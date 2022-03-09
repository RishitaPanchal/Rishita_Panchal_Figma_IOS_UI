//
//  CollectionViewCelll.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 10/03/22.
//

import UIKit

protocol RemoveDataProtocol {
    func removeData(idx: Int)
}

class CollectionViewCelll: UICollectionViewCell {
    
    // MARK: IBOutlet
    @IBOutlet weak var label: UILabel!
    
    // MARK: Instance variable
    var index: IndexPath?
    var delegate: RemoveDataProtocol?
    
    // MARK: IBAction
    @IBAction func deleteData(_ sender: UIButton) {
        delegate?.removeData(idx: index?.row ?? 1)
    }
    
}
