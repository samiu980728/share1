//
//  JPXForSecondTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/29.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXForSecondTableViewCell.h"

@implementation JPXForSecondTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if ( self ){
    _button1 = [[UIButton alloc] init];
    
    _button2 = [[UIButton alloc] init];
    
    _button3 = [[UIButton alloc] init];
    
    _button4 = [[UIButton alloc] init];
    
    _button5 = [[UIButton alloc] init];
        
        [self.contentView addSubview:_button1];
        [self.contentView addSubview:_button2];
        [self.contentView addSubview:_button3];
        
        [self.contentView addSubview:_button4];
        [self.contentView addSubview:_button5];
    }
    return self;
    
}

- (void)layoutSubviews
{
    _button1.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button2.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button3.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button4.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button5.titleLabel.font = [UIFont systemFontOfSize:18];
    
    _button1.frame = CGRectMake(0, 0, 60, 60);
    
    _button2.frame = CGRectMake(0, 0, 60, 60);
    
    _button3.frame = CGRectMake(70, 0, 60, 60);
    
    _button4.frame = CGRectMake(140, 0, 60, 60);
    
    _button5.frame = CGRectMake(210, 0, 60, 60);
    
    _button1.backgroundColor = [UIColor blackColor];
    
    _button2.backgroundColor = [UIColor blackColor];
    
    _button3.backgroundColor = [UIColor blackColor];
    
    _button4.backgroundColor = [UIColor blackColor];
    
    _button5.backgroundColor = [UIColor blackColor];
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
