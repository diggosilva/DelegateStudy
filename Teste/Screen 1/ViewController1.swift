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
        addTargetToVC2()
    }
    
    func addTargetToVC2() {
        vc1View.button.addTarget(self, action: #selector(didTapButtonGoToVC2), for: .touchUpInside)
    }
    
    @objc func didTapButtonGoToVC2() {
        let vc2 = ViewController2()
        vc2.delegate = self
        navigationController?.pushViewController(vc2, animated: true)
    }
}

extension ViewController1: ViewController2Delegate {
    func updateLabel(value: String) {
        vc1View.label.text = value
    }
}
