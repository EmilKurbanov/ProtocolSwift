//
//  FirstVC.swift
//  ProtocolSwiftExample
//
//  Created by emil kurbanov on 15.07.2024.
//

import UIKit
import SnapKit

class FirstVC: UIViewController {
    private var sec: SecondVC!
    var buttonExample: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Нажать", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(actionbutton), for: .touchUpInside)
        return button
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Испорчено"
        label.textAlignment = .center
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        sec = SecondVC(delegate: self)
        settingsConstreints()
        
    }
    
    func settingsConstreints() {
        view.addSubview(buttonExample)
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(100)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
            make.height.equalTo(50)
            
            
        }
        
        buttonExample.snp.makeConstraints { make in
            make.top.equalTo(label.snp.top).offset(100)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
            make.height.equalTo(50)
        }
    }

    @objc func actionbutton() {
        sec.textDest()
    }
}

extension FirstVC: TextDelegate {
    func textDestination(text: String) {
        label.text = text
    }
    
    
}
