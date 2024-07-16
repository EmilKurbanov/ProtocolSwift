//
//  SecondVC.swift
//  ProtocolSwiftExample
//
//  Created by emil kurbanov on 15.07.2024.
//

import UIKit

class SecondVC: UIViewController {
 
    weak var delegate: TextDelegate!

    init(delegate: TextDelegate!) {
        self.delegate = delegate
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
        self.delegate.textDestination(text: "Починил")
    }
}
