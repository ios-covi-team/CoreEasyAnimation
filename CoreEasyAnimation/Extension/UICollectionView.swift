//
//  UICollectionView.swift
//  ASAT
//
//  Created by Kai Luu on 4/25/19.
//  Copyright © 2019 Kai Luu. All rights reserved.
//

import UIKit
import Foundation

extension UICollectionView {
    func hasRowAtIndexPath(indexPath: IndexPath) -> Bool {
        return indexPath.section < self.numberOfSections && indexPath.row < self.numberOfItems(inSection: indexPath.section)
    }
}
