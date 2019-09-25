//
//  ViewController.swift
//  EditableViewControllerPractice
//
//  Created by Hanyu on 2019/9/25.
//  Copyright © 2019 Hanyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var _editButtonItem: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(buttonItemPressed(_:)))
        return barButtonItem
    }()
    
    lazy var _doneButtonItem: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(buttonItemPressed(_:)))
        return barButtonItem
    }()
    
    override var editButtonItem: UIBarButtonItem {
        return _editButtonItem
    }

    override func viewDidLoad() {
        super.viewDidLoad()
  
        navigationItem.setRightBarButton(editButtonItem, animated: true)
    }
    
    @objc func buttonItemPressed(_ sender: Any) {
        setEditing(!isEditing, animated: true)
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        
        if editing {
            navigationItem.setRightBarButton(_doneButtonItem, animated: animated)
        } else {
            navigationItem.setRightBarButton(_editButtonItem, animated: animated)
        }
    }
}

