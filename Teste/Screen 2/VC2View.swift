//
//  VC2View.swift
//  Teste
//
//  Created by Diggo Silva on 18/03/24.
//

import UIKit

protocol VC2ViewDelegate: AnyObject {
    func sendMessageToVC1()
}

class VC2View: UIView {
    weak var delegateVC2: VC2ViewDelegate?
    
    lazy var textfield: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "Your message here.."
        textfield.borderStyle = .roundedRect
        return textfield
    }()
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Send Message to VC1", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(didTapButtonSendMessageToVC1), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapButtonSendMessageToVC1() {
        delegateVC2?.sendMessageToVC1()
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy () {
        backgroundColor = .systemBackground
        addSubview(textfield)
        addSubview(button)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            textfield.centerXAnchor.constraint(equalTo: centerXAnchor),
            textfield.centerYAnchor.constraint(equalTo: centerYAnchor),
            textfield.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            textfield.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            button.centerXAnchor.constraint(equalTo: textfield.centerXAnchor),
            button.topAnchor.constraint(equalTo: textfield.bottomAnchor, constant: 10),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
