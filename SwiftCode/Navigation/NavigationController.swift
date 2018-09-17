//
//  ViewController.swift
//  swift-11
//
//  Created by MLeo on 2018/8/27.
//  Copyright © 2018年 swift. All rights reserved.
//

import UIKit

class NavigationController: UIViewController {

    
    var button:UIButton!
    
    override func loadView() {
        self.view = UIView()
        self.title = "Navigation"
        self.view.backgroundColor = UIColor.white
        addNavigationBar()
        addButton()
    }

    
    func addNavigationBar(){
        let leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(closeView))
        let rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.action, target: self, action: #selector(openView))
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
    
    @objc func closeView(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func openView(){
        self.navigationController?.pushViewController(NewNavigationViewController(), animated: true)
    }
    
    
    func addButton(){
        button = UIButton(type: .system)
        button.setTitle("Close", for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(closeView), for: .touchUpInside)
        addButtonConstraint(child: button, parent: nil)
    }
    
    func addButtonConstraint(child:UIView,parent:UIView?){
        child.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            child.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
