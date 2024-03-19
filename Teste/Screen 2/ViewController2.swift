//
//  ViewController2.swift
//  Teste
//
//  Created by Diggo Silva on 18/03/24.
//

import UIKit

class ViewController2: UIViewController {
    
    var vc2View = VC2View()
    
    override func loadView() {
        super.loadView()
        view = vc2View
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ViewController 2"
    }
    
}
