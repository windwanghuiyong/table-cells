//
//  NameAndColorCell.h
//  TableCells
//
//  Created by wanghuiyong on 22/01/2017.
//  Copyright © 2017 MyOrganization. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NameAndColorCell : UITableViewCell

@property (copy, nonatomic) NSString *name;		// 右侧标签数据源, 控制器向表单元传递的值
@property (copy, nonatomic) NSString *color;

@end
