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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
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
        
        
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height), style: UITableViewStyle.plain)
        tableView.backgroundColor = UIColor.white
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        
        view.addSubview(tableView)
    }

}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  ViewController{
    
}

// MARK: - Delegates - 即各种代理方法


// MARK: - UITableViewDelegate && UITableViewDataSoure

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier")
        
        if  cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cellIdentifier")
        }
        
        cell?.textLabel?.text = dataSource[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let stringVC = RNStringViewController()
            navigationController?.pushViewController(stringVC, animated: true)
        default:
            break
        }
    }
}

