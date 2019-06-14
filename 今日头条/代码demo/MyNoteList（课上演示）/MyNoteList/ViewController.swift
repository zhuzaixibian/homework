//
//  ViewController.swift
//  MyNoteList
//
//  Created by zhaohui on 2019/5/22.
//  Copyright © 2019 zhaohui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 5 添加成员变量，存储网络返回数据，用于页面展示
    // 6 为了指定数组元素泛型，新建一个类 NoteModel
    var noteList: Array<NoteModel> = Array()
    
    // 12 添加表格视图控件 UITableView
    let tableView: UITableView = UITableView(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // viewDidLoad 默认只调用一次，因此通常将页面元素初始化等只需执行一次的操作放在这里
        
        // 13 将 tableView 加到页面 view 上，并设置布局
        self.tableView.frame = self.view.bounds
        self.view.addSubview(self.tableView)
        
        // 14 设置 tableView 数据源代理
        self.tableView.dataSource = self
        
        // 24 设置 tableView UI 代理
        self.tableView.delegate = self
    }

    // 1 重写父类 viewWillAppear 函数
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // viewWillAppear 在每次页面即将展示时都会调用，因此通常将网络请求和页面刷新操作放在这里，来保证页面数据最新
        
        // 11 调用网络请求方法，查看是否正确输出数据
        // 如果输出结果正确，那么数据层开发工作完成
        self.requestNoteList()
        
    }
    
    // 2 添加网络请求函数
    func requestNoteList() -> Void {
        // 3 使用 URLSession 发网络请求
        let session = URLSession.shared
        let url = URL(string: "http://127.0.0.1:8080/list")!
        let task = session.dataTask(with: url, completionHandler: {
            data, response, error in
            // 4 接收网络返回数据
            if data == nil || error != nil {
                print("Error: network error")
                return
            }
            
            let jsonObject = try? JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
            if jsonObject == nil {
                print("Error: data format error")
                return
            }
            
            // 9 解析网络返回数据，存储在 noteList 中
            self.noteList.removeAll()
            let parsedArray = jsonObject as? NSArray
            if parsedArray != nil {
                for object in parsedArray! {
                    let objectDict = object as? NSDictionary
                    if objectDict != nil {
                        let id = objectDict!.object(forKey: "id") as? Int
                        let title = objectDict!.object(forKey: "title") as? String
                        let content = objectDict!.object(forKey: "content") as? String
                        let timestamp = objectDict!.object(forKey: "timestamp") as? String
                        
                        if id != nil && title != nil && content != nil && timestamp != nil {
                            let note = NoteModel(id: id!, title: title!, content: content!, timestamp: timestamp!)
                            self.noteList.append(note)
                        }
                    }
                }
            }
            
            // 10 输出 noteList，检查解析是否正确
            for note in self.noteList {
                print("元素：\(note.noteID), \(note.noteTitle), \(note.noteContent), \(note.noteTimestamp)")
            }
            
            // 23 连接数据层与视图层，在网络数据准备好之后，刷新 tableView
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
        task.resume()
    }
}

// 15 设置 ViewController 遵守 UITableViewDataSource 协议（接口）
extension ViewController: UITableViewDataSource {
    // 16 实现 tableView 数据源代理方法
    // 告诉 tableView 有多少行
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.noteList.count
    }
    
    // 告诉 tableView 用哪个 cell 来展示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 17 创建一个 NoteListCell 类，用于展示列表中的卡片
        
        // 21 创建 cell
        let reuseIdentifier = "NoteListCellReuseIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? NoteListCell
        if cell == nil {
            cell = NoteListCell(style: .default, reuseIdentifier: reuseIdentifier)
        }
        
        // 22 为 cell 绑定数据
        let note = self.noteList[indexPath.row]
        cell!.bindData(data: note)
        return cell!
    }
}

// 25 设置 ViewController 遵守 UITableViewDelegate 协议（接口）
extension ViewController: UITableViewDelegate {
    // 26 实现 tableView UI 代理方法
    // 告诉 tableView 每个 cell 的告诉是多少
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110.0;
    }
}
