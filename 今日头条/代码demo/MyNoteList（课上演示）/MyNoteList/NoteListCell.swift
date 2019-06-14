//
//  NoteListCell.swift
//  MyNoteList
//
//  Created by zhaohui on 2019/5/22.
//  Copyright © 2019 zhaohui. All rights reserved.
//

import UIKit

class NoteListCell: UITableViewCell {

    // 18 添加卡片中的 UI 控件
    var timestampLabel: UILabel = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 300.0, height: 15.0))
    var titleLabel: UILabel = UILabel(frame: CGRect(x: 0.0, y: 15.0, width: 300.0, height: 15.0))
    var contentLabel: UILabel = UILabel(frame: CGRect(x: 0.0, y: 30.0, width: 300.0, height: 15.0))
    
    // 19 在 cell 初始化方法中将 UI 控件添加到 cell 的 contentView
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(self.timestampLabel)
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.contentLabel)
        
        // 28 调用美化函数，查看 UI 效果
        self.makeUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 20 添加一个 cell 数据绑定的函数，用于在 tableView 代理方法中为 cell 绑定数据
    public func bindData(data: NoteModel?) -> Void {
        self.timestampLabel.text = data?.noteTimestamp
        self.titleLabel.text = data?.noteTitle
        self.contentLabel.text = data?.noteContent
    }
    
    // 27 添加一个函数，优化 cell 卡片的 UI 样式
    func makeUp() -> Void {
        let screenWidth = UIScreen.main.bounds.width
        let leftMargin: CGFloat = 10.0
        let topMargin: CGFloat = 10.0
        let timestampLabelHeight: CGFloat = 15.0
        self.timestampLabel.frame = CGRect(x: leftMargin, y: topMargin, width: screenWidth - leftMargin * 2, height: timestampLabelHeight)
        self.timestampLabel.font = UIFont.systemFont(ofSize: 14.0)
        self.timestampLabel.textColor = UIColor(red: 24.0 / 255.0, green: 144.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        
        let rowMargin: CGFloat = 8.0
        let titleLabelHeight: CGFloat = 20.0
        self.titleLabel.frame = CGRect(x: leftMargin, y: self.timestampLabel.frame.origin.y + timestampLabelHeight + rowMargin, width: screenWidth - leftMargin * 2, height: titleLabelHeight)
        self.titleLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        self.titleLabel.textColor = UIColor.black
        self.titleLabel.numberOfLines = 1
        
        let contentLabelHeight: CGFloat = 35.0
        self.contentLabel.frame = CGRect(x: leftMargin, y: self.titleLabel.frame.origin.y + titleLabelHeight + rowMargin, width: screenWidth - leftMargin * 2, height: contentLabelHeight)
        self.contentLabel.font = UIFont.systemFont(ofSize: 14.0)
        self.contentLabel.textColor = UIColor.gray
        self.contentLabel.numberOfLines = 2
    }

}
