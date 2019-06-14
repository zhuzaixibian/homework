//
//  NoteModel.swift
//  MyNote
//
//  Created by zhaohui on 2019/5/17.
//  Copyright © 2019 zhaohui. All rights reserved.
//

import UIKit

class NoteModel: NSObject {
    var noteID: Int
    var noteTitle: String
    var noteContent: String
    var noteTimestamp: String
    
    init(id: Int, title: String, content: String, timestamp: String) {
        noteID = id
        noteTitle = title
        noteContent = content
        noteTimestamp = timestamp
        super.init()
    }
}
