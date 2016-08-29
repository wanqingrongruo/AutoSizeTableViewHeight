//
//  ViewController.swift
//  AutoSizeTableViewHeight
//
//  Created by 婉卿容若 on 16/8/29.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - properties - 即定义的各种属性
    var tableView: UITableView!
    lazy var dataSource = {
        
        return ["String"]
    }()
    
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "conditions"
        
        setUpTableView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    deinit{
        
        
    }
    
}

// MARK: - Public Methods - 即系统提供的方法

extension ViewController{
    
}

// MARK: - Private Methods - 即私人写的方法

extension  ViewController{
    
    func setUpTableView() {
        
        
        tableView = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width,UIScreen.mainScreen().bounds.height), style: UITableViewStyle.Plain)
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        
        view.addSubview(tableView)
    }

}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  ViewController{
    
}

// MARK: - Delegates - 即各种代理方法


// MARK: - UITableViewDelegate && UITableViewDataSoure

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier")
        
        if  cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cellIdentifier")
        }
        
        cell?.textLabel?.text = dataSource[indexPath.row]
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0:
            let stringVC = RNStringViewController()
            navigationController?.pushViewController(stringVC, animated: true)
        default:
            break
        }
    }
}


