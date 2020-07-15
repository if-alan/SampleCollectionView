//
//  SampleCollectionViewController.swift
//  SampleCollectionView
//
//  Created by Nur If Alan Farizi on 14/07/20.
//  Copyright © 2020 Nur If Alan Farizi. All rights reserved.
//
import UIKit

class SampleCollectionViewController: UIViewController {
    var cellId = "testId"
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .gray
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        view.addSubview(collectionView)
        
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }
}



