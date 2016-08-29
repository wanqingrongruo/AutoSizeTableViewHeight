//
//  RNStringViewController.swift
//  AutoSizeTableViewHeight
//
//  Created by 婉卿容若 on 16/8/29.
//  Copyright © 2016年 婉卿容若. All rights reserved.
//  容若的简书地址:http://www.jianshu.com/users/274775e3d56d/latest_articles
//  容若的新浪微博:http://weibo.com/u/2946516927?refer_flag=1001030102_&is_hot=1


import UIKit

class RNStringViewController: UIViewController {

    // MARK: - properties - 即定义的各种属性
    var tableView: UITableView!
    lazy var dataSource = {
        
        return ["Runtime是一套比较底层的纯C语言API，包含了很多底层的C语言API。在我们平时编写的OC代码中，程序运行时，其实最终都是转成了Runtime的C语言代码。Runtime是开源的，你可以去这里下载Runtime的源码。","本文主要分为两个章节，第一部分主要是理论和原理，第二部分主要是使用实例。先附上本文所有的demo下载链接，【GitHub】、【Code4App】、【OSChina】，配合demo一起看文章，效果会更佳。","描述Objective-C对象所有的数据结构定义都在Runtime的头文件里，下面我们逐一分析。","[obj setValue:value forKey:key];","那天我们曾牵手走过很多地方，在车站拥抱。 一起看电影，往彼此的嘴巴里塞零食和饮料。 一起幻想明年的这个时候， 甚至是很多很多年以后， 我们在干嘛，要干嘛。可是感情的脆弱我们谁也想不到。 这一秒幸福，下一秒就可以崩溃。 再多的甜言蜜语，累积起来也敌不过分手两个字。","#读图看经济# 比较国家的经济规模不是件容易操作的事。世界最大经济体的中国和印度最近修订了GDP的计算方法，使之更贴近国际标准。中国七月起将研发支出也纳入了计算，并修订了直到1952年的数据。照此算法，去年中国的GDP已超过68万亿元，而1952年仅为4780亿元。无论准确性如何，这样的涨幅都展现了现...展开全文c"," 位于也门的索科特拉岛（Socotra island ），长期的地理隔离使其生成了很多只有在该岛才存在的动植物。在索科特拉岛，有37%的植物是地方特有的；90%的爬行动物和95%的蜗牛也是岛上独有的。到了这个岛仿佛踏入了另一个星球，特别神奇","一个时代的男神","2"]
    }()
    
    
    // MARK: -  Life cycle - 即生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "stringAuto"
        
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

extension RNStringViewController{
    
}

// MARK: - Private Methods - 即私人写的方法

extension  RNStringViewController{
    
    func setUpTableView() {
        
        
        tableView = UITableView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width,UIScreen.mainScreen().bounds.height), style: UITableViewStyle.Plain)
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(RNStringTableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        
        view.addSubview(tableView)
    }
    
}

// MARK: - Event response - 按钮/手势等事件的回应方法

extension  RNStringViewController{
    
}

// MARK: - Delegates - 即各种代理方法


// MARK: - UITableViewDelegate && UITableViewDataSoure

extension RNStringViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
//        var sizingCell: RNStringTableViewCell? = nil
//       // let onceToken: dispatch_once_t
//       // dispatch_once(&onceToken) {
//            sizingCell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier") as? RNStringTableViewCell
//            
//       // }
//        sizingCell?.configCell(dataSource[indexPath.row])
//        sizingCell?.setNeedsLayout()
//        sizingCell?.layoutIfNeeded()
//        
//        let size: CGSize = (sizingCell?.contentView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize))!
        
        
        return 44
    }
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier") as? RNStringTableViewCell
        
        if  cell == nil {
            cell = RNStringTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cellIdentifier")
        }
        
     //   cell?.configCell(dataSource[indexPath.row])
        
        return cell!
    }
}


