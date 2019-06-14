//
//  NoteModel.swift
//  MyNoteList
//
//  Created by zhaohui on 2019/5/22.
//  Copyright © 2019 zhaohui. All rights reserved.
//

import UIKit

class NoteModel: NSObject {
    // 7 创建数据结构对应字段，用于存储笔记数据
    var noteID: Int
    var noteTitle: String
    var noteContent: String
    var noteTimestamp: String
    
    // 8 创建 NoteModel 初始化方法
    init(id: Int, title: String, content: String, timestamp: String) {
        noteID = id
        noteTitle = title
        noteContent = content
        noteTimestamp = timestamp
        super.init()
    }
}
