//
//  ViewController2.swift
//  Teste
//
//  Created by Diggo Silva on 18/03/24.
//

import UIKit

protocol ViewController2Delegate: AnyObject {
    func updateLabel(value: String)
}

class ViewController2: UIViewController {
    
    weak var delegate: ViewController2Delegate?
    
    var vc2View = VC2View()
    
    override func loadView() {
        super.loadView()
        view = vc2View
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ViewController 2"
        sendMessageToVC1()
    }
    
    func sendMessageToVC1() {
        vc2View.button.addTarget(self, action: #selector(didTapButtonSendMessageToVC1), for: .touchUpInside)
    }
    
    @objc func didTapButtonSendMessageToVC1() {
        delegate?.updateLabel(value: vc2View.textfield.text ?? "")
        navigationController?.popToRootViewController(animated: true)
    }
}
