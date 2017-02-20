//
//  ViewController.swift
//  MTablesView
//
//  Created by ziyin1996@gmail.com on 02/18/2017.
//  Copyright (c) 2017 ziyin1996@gmail.com. All rights reserved.
//

import UIKit
import MTablesView

class ViewController: UIViewController,MTableViewDelegate {

    var bottomAnchor:NSLayoutConstraint?
    var viewHalfHeight:CGFloat = 0
    
    var sectionTitles = ["ABC", "BCD", "CDE"]
    
    var mainData = [["ABC","BCD","CDE"],["ABC","BCD","CDE"]]
    var detailedData = [[["ABC","ABC"],["BCD","BCD"],["CDE","CDE"]],[["ABC","ABC"],["BCD","BCD"],["CDE","CDE"]]]
        
    lazy var mainView:MTablesView = {
        let mTable = MTablesView(viewTitle: "Hi", sectionTitles: self.sectionTitles, mainData: self.mainData, detailedData: self.detailedData)
        mTable.delegate = self
        mTable.selectingOption = true
        mTable.segueDirection = .bottom
        return mTable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        self.title = "Demo"
        let barButton = UIBarButtonItem(title: "Show", style: .plain, target: self, action: #selector(showTable(sender: )))
        
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupViews()
    }
    
    private func setupViews()
    {
        view.addSubview(mainView)
        
        viewHalfHeight = self.view.frame.size.height / 1.5
        
        let anchors = mainView.anchor(nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, centerX:nil, centerY:nil, topConstant: 0, leftConstant: 0, bottomConstant: viewHalfHeight, rightConstant: 0, widthConstant: 0, heightConstant: viewHalfHeight)
        bottomAnchor = anchors[0]
    }
    
    func showTable(sender:UIBarButtonItem)
    {
        bottomAnchor?.isActive = false
        if sender.title == "Show"
        {
            bottomAnchor?.constant = 0
            sender.title = "Hide"
        }
        else if sender.title == "Hide"
        {
            bottomAnchor?.constant = viewHalfHeight
            sender.title = "Show"
        }
        bottomAnchor?.isActive = true
        UIView.animate(withDuration: 0.5) { 
            self.view.layoutIfNeeded()
        }
    }
    
    func moveBackView() {
        
    }

}

