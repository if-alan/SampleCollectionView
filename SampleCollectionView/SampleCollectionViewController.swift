//
//  SampleCollectionViewController.swift
//  SampleCollectionView
//
//  Created by Nur If Alan Farizi on 14/07/20.
//  Copyright © 2020 Nur If Alan Farizi. All rights reserved.
//
import UIKit

class SampleCollectionViewController: UIViewController {
    var listData = [
        ["",""],
        ["","",""],
        [""],
        ["","","",""]
    ]
    
    var cellId = "testId"
    var headerId = "headerId"
    
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
        collectionView.register(SikatCustomCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind:  UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    /** CUSTOM CELL */
    class SikatCustomCell: UICollectionViewCell {
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            let leftView = UIView()
            leftView.backgroundColor = .green
            leftView.translatesAutoresizingMaskIntoConstraints = false
            backgroundColor = .red
            
            addSubview(leftView)
            leftView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
            leftView.trailingAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            leftView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            leftView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
