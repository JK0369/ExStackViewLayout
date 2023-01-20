//
//  ViewController.swift
//  ExStackView
//
//  Created by 김종권 on 2023/01/20.
//

import UIKit

class ViewController: UIViewController {
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let myView1: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let myView2: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(myView1)
        stackView.addArrangedSubview(myView2)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leftAnchor.constraint(greaterThanOrEqualTo: view.leftAnchor),
            stackView.rightAnchor.constraint(lessThanOrEqualTo: view.rightAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])

        NSLayoutConstraint.activate([
            myView1.heightAnchor.constraint(equalToConstant: 120),
            myView2.heightAnchor.constraint(equalToConstant: 80),
        ])

        NSLayoutConstraint.activate([
            myView1.widthAnchor.constraint(equalToConstant: 50),
            myView2.widthAnchor.constraint(equalToConstant: 50),
        ])
    }
}
