//
//  MTablesView.swift
//  Pods
//
//  Created by Ziyin Wang on 2017-02-18.
//
//

import UIKit

@available(iOS 9.0, *)
class MTablesView: UIView,UITableViewDelegate,UITableViewDataSource {

    lazy var closeAndBackButton:UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(closeOrBack(sender:)), for: .touchUpInside)
        button.setTitle("Done", for: .normal)
        return button
    }()
    
    var titleLabel:UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var mainTable:UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.delegate = self
        table.dataSource = self
        return table
    }()
    
    lazy var detailedTable:UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.delegate = self
        table.dataSource = self
        return table
    }()
    
    let topView:UIView = {
        let view = UIView()
        return view
    }()
    
    var viewTitle:String?
    
    var sectionTitles:Array<String>?
    
    var mainData:Array<Array<Any>>?
    
    var detailedData:Array<Any>?
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        addSubview(mainTable)
        addSubview(detailedTable)
        addSubview(topView)
        topView.addSubview(titleLabel)
        topView.addSubview(closeAndBackButton)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews()
    {
        
        topView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 50)
        
        mainTable.anchor(topView.bottomAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
    func closeOrBack(sender:UIButton)
    {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        return UITableViewCell();
    }

}
