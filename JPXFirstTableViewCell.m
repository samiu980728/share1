//
//  JPXFirstTableViewCell.m
//  share
//
//  Created by 萨缪 on 2018/7/27.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "JPXFirstTableViewCell.h"

@implementation JPXFirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if  ( self ){
        _image = [[UIImageView alloc] init];
        
        _detailString1 = [[UILabel alloc] init];
        
        _detailString2 = [[UILabel alloc] init];
        
        _detailString3 = [[UILabel alloc] init];
        
        _mainString = [[UILabel alloc] init];
        
        _mainString.textColor = [UIColor blackColor];
        
        _btn1 = [[UIButton alloc] init];
        
        _btn2 = [[UIButton alloc] init];
        
        _btn3 = [[UIButton alloc] init];
        
        _btnSet = [[UIButton alloc] init];
        
        [self.contentView addSubview:_image];
        
        [self.contentView addSubview:_detailString1];
        
        [self.contentView addSubview:_detailString2];
        
        [self.contentView addSubview:_detailString3];
        
        [self.contentView addSubview:_mainString];
        
        [self.contentView addSubview:_btnSet];
        
        [self.contentView addSubview:_btn3];
        
        [self.contentView addSubview:_btn2];
        
        [self.contentView addSubview:_btn1];
    }
    return self;
    
}

- (void)layoutSubviews
{
    _mainString.font = [UIFont systemFontOfSize:15];
    
    _detailString1.font = [UIFont systemFontOfSize:12];
    
    _detailString2.font = [UIFont systemFontOfSize:12];
    
    _detailString3.font = [UIFont systemFontOfSize:12];
    
    _btnSet.titleLabel.font = [UIFont systemFontOfSize:14];
    
    _mainString.frame = CGRectMake(66, 0, 110, 15);
    
    _detailString1.frame = CGRectMake(66, 15, 300, 15);
    
    _detailString2.frame = CGRectMake(66, 30, 300, 15);
    
    _btn1.frame = CGRectMake(66, 45, 15, 15);
    
    _btn2.frame = CGRectMake(120, 45, 15, 15);
    
    _btn3.frame = CGRectMake(180, 45, 15, 15);
    
    _image.frame = CGRectMake(0, 0, 60, 60);
    
    _btnSet.frame = CGRectMake(190, 0, 150, 20);
    
    _btnSet.tintColor = [UIColor blackColor];
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
