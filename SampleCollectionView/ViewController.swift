//
//  ViewController.swift
//  SampleCollectionView
//
//  Created by Nur If Alan Farizi on 14/07/20.
//  Copyright © 2020 Nur If Alan Farizi. All rights reserved.
//

import UIKit

struct CalData {
    var label: String
    var color: UIColor
}

class ViewController: UIViewController {
    let calTemplate = [
        [CalData(label: "C", color: .yellow), CalData(label: "C", color: .black), CalData(label: "C", color: .black), CalData(label: "C", color: .black)],
       [CalData(label: "C", color: .black), CalData(label: "C", color: .black), CalData(label: "Z", color: .black), CalData(label: "C", color: .black)],
        [CalData(label: "C", color: .black), CalData(label: "C", color: .red), CalData(label: "O", color: .black), CalData(label: "C", color: .black)],
        [CalData(label: "C", color: .black), CalData(label: "C", color: .black), CalData(label: "C", color: .black), CalData(label: "C", color: .black)],
        [CalData(label: "D", color: .blue), CalData(label: "C", color: .black), CalData(label: "C", color: .black), CalData(label: "C", color: .black)]
    ]
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution = .fillEqually
        sv.spacing  = 10
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "UIStackView"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareView()
        prepareStackView()
        // Do any additional setup after loading the view.
    }
    
    func prepareStackView() {
        for arr in calTemplate {
            let stackViewHoriz = UIStackView()
            stackViewHoriz.axis = .horizontal
            stackViewHoriz.distribution = .fillEqually
            stackViewHoriz.spacing = 10
            
            for value in arr {
                let button = UIButton()
                button.setTitle(value.label, for: .normal)
                button.backgroundColor = value.color
                stackViewHoriz.addArrangedSubview(button)
            }
            
            stackView.addArrangedSubview(stackViewHoriz)
        }
    }

    func prepareView() {
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(stackView)
        
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
    }
}
