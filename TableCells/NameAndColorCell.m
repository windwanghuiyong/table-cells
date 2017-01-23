//
//  NameAndColorCell.m
//  TableCells
//
//  Created by wanghuiyong on 22/01/2017.
//  Copyright © 2017 MyOrganization. All rights reserved.
//

#import "NameAndColorCell.h"

@interface NameAndColorCell ()	// 类扩展

@property (strong, nonatomic) UILabel *nameLabel;	// 右侧标签
@property (strong, nonatomic) UILabel *colorLabel;

@end

@implementation NameAndColorCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // 初始化左侧两个静态标签
        CGRect nameLabelRect = CGRectMake(0, 5, 70, 15);
        UILabel *nameMarker = [[UILabel alloc] initWithFrame:nameLabelRect];
        nameMarker.textAlignment = NSTextAlignmentRight;
        nameMarker.text =  @"Name:";
        nameMarker.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:nameMarker];	// 注意是添加到目录视图
        
        CGRect colorLabelRect = CGRectMake(0, 26, 70, 15);
        UILabel *colorMarker = [[UILabel alloc] initWithFrame:colorLabelRect];
        colorMarker.textAlignment = NSTextAlignmentRight;
        colorMarker.text = @"Color:";
        colorMarker.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:colorMarker];
        
        // 初始化待填入内容的右侧两个标签
        CGRect nameValueRect = CGRectMake(80, 5, 200, 15);
        self.nameLabel = [[UILabel alloc] initWithFrame:nameValueRect];
        [self.contentView addSubview:_nameLabel];
        
        CGRect colorValueRect = CGRectMake(80, 25, 200, 15);
        self.colorLabel = [[UILabel alloc] initWithFrame:colorValueRect];
        [self.contentView addSubview:_colorLabel];
    }
    return self;
}

// 设置右侧标签的值, 数据源改变时, 相应标签属性就会改变
- (void)setName:(NSString *)name {
    if (![name isEqualToString:_name]) {
        _name = [name copy];
        self.nameLabel.text = _name;
    }
}

- (void)setColor:(NSString *)color {
    if (![color isEqualToString:_color]) {
        _color = [color copy];
        self.colorLabel.text = _color;
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
