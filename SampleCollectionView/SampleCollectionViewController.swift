//
//  SampleCollectionViewController.swift
//  SampleCollectionView
//
//  Created by Nur If Alan Farizi on 14/07/20.
//  Copyright © 2020 Nur If Alan Farizi. All rights reserved.
//
import UIKit
struct SikatData {
    var title : String
    var description : String
}

class SampleCollectionViewController: UIViewController {
    let listData: [SikatData] = [
        SikatData(title: "Farel", description: "yo yo yo"),
        SikatData(title: "Zaini", description: "yo yo yo"),
        SikatData(title: "Sukmo", description: "yo yo yo"),
        SikatData(title: "Redha", description: "yo yo yo"),
        SikatData(title: "Alan", description: "yo yo yo")
    ]
    
    var cellId = "testId"
    var headerId = "headerId"
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .red
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
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind:  UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    /** CUSTOM CELL */
    class CustomCell: UICollectionViewCell {
        let label = UILabel()
        let labelDeskripsi = UILabel()
        override init(frame: CGRect) {
            super.init(frame: frame)
            let cardView = UIView()
            cardView.backgroundColor = .green
            cardView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(cardView)
            
            cardView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
            cardView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
            cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            cardView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
            
            label.translatesAutoresizingMaskIntoConstraints = false
            labelDeskripsi.translatesAutoresizingMaskIntoConstraints = false
            
            cardView.addSubview(label)
            cardView.addSubview(labelDeskripsi)
            
            label.leadingAnchor.constraint(equalTo: cardView.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: cardView.trailingAnchor).isActive = true
            
            labelDeskripsi.leadingAnchor.constraint(equalTo: cardView.leadingAnchor).isActive = true
            labelDeskripsi.trailingAnchor.constraint(equalTo: cardView.trailingAnchor).isActive = true
            labelDeskripsi.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
        }
        
        func sikatSet(data:SikatData){
            label.text = data.title
            labelDeskripsi.text = data.description
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
