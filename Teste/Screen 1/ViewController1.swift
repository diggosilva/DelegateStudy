//
//  ViewController.swift
//  Teste
//
//  Created by Diggo Silva on 18/03/24.
//

import UIKit

class ViewController1: UIViewController {
    
    var vc1View = VC1View()
    
    override func loadView() {
        super.loadView()
        view = vc1View
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ViewController 1"
        setDelegateProtocol()
    }
    
    func setDelegateProtocol() {
        vc1View.delegateVC1 = self
        vc1View.delegateVC2 = self
    }
}

extension ViewController1: VC1ViewDelegate {
    func goToVC2() {
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
}

extension ViewController1: VC2ViewDelegate {
    func sendMessageToVC1() {
//        vc1View.label.text = vc1View.delegateVC2?.sendMessageToVC1()
        navigationController?.popToRootViewController(animated: true)
    }
}
