//
//  SecondVC.swift
//  ProtocolSwiftExample
//
//  Created by emil kurbanov on 15.07.2024.
//

import UIKit
enum ChoiceRepair: String {
    case repair = "Починили"
    case unRepair = "Сломан"
}
class SecondVC: UIViewController {
    var choiseRepair: ChoiceRepair
    weak var delegate: TextDelegate!

    init(delegate: TextDelegate!, choiseRepair: ChoiceRepair) {
        self.delegate = delegate
        self.choiseRepair = choiseRepair
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
    }

    func textDest(){
        self.delegate.textDestination(text: choiseRepair.rawValue)
    }
}
