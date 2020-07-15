//
//  SampleCollectionViewController+CollectionView.swift
//  SampleCollectionView
//
//  Created by Nur If Alan Farizi on 14/07/20.
//  Copyright © 2020 Nur If Alan Farizi. All rights reserved.
//

import UIKit

extension SampleCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 300
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}
