//
//  YWMsonryView.m
//  OCTest
//
//  Created by dahuoshi on 09/03/2017.
//  Copyright © 2017 BDHT-MAC. All rights reserved.
//

#import "YWMsonryView.h"
#import "UIView+YYAdd.h"
#import "Masonry.h"

@implementation YWMsonryView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
        return self;
    }
    return nil;
}



-(void)initView{
    
    UIImageView *imageView = [UIImageView new];
    imageView.image  = [UIImage imageNamed:@"nav-grandfather"];
    [self addSubview:imageView];
    
    UILabel *label = [UILabel new];
    label.text = @"妈妈";
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:14];
    [label sizeToFit];
    [self addSubview:label];
    
    UIView *circleVeiw = [UIView new];
    circleVeiw.backgroundColor = [UIColor redColor];
    circleVeiw.layer.cornerRadius = 6/2;
    [self addSubview:circleVeiw];
    
    
    self.clipsToBounds = YES;
    self.backgroundColor = [UIColor yellowColor];
    
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.mas_top).with.offset(10);
        make.centerX.mas_equalTo(self.mas_centerX);
    }];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(imageView.mas_bottom).with.offset(10);
        make.centerX.mas_equalTo(self.mas_centerX);
    }];
    
    [circleVeiw mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(@6);
        make.height.mas_equalTo(@6);
        make.bottom.mas_equalTo(self.mas_bottom).with.offset(-10);
        make.centerX.mas_equalTo(self.mas_centerX);
    }];
    
    
    
    //    label.backgroundColor = [UIColor whiteColor];
    //    imageView.backgroundColor = [UIColor greenColor];
}


@end
