//
//  headView.m
//  xqx
//
//  Created by BDHT-MAC on 16/01/2017.
//  Copyright © 2017 DevSource. All rights reserved.
//

#import "YWHeadView.h"
#import "UIView+YYAdd.h"
#import "Masonry.h"

@interface YWHeadView()

@property (nonatomic, strong) UIImageView *headImageView;
@property (nonatomic, strong) UILabel *roleLbl;
@property (nonatomic, strong) UIView *selectCircleVeiw;

@end

@implementation YWHeadView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    
//    frame.size.width = MAX(frame.size.width, WidthMin);
//    frame.size.height = MAX(frame.size.height, HeightMin);
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
        return self;
    }
    return nil;
}



-(void)initView{
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 14, 42, 42)];
    imageView.centerX = self.width/2;
    imageView.image  = [UIImage imageNamed:@"nav-grandfather"];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;
    [self addSubview:imageView];
    _headImageView = imageView;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    label.text = @"妈妈";
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:14];
    [label sizeToFit];
    label.centerX = self.width/2;
    label.top = imageView.bottom+16/2;
    label.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;
    [self addSubview:label];
    _roleLbl = label;
    
    UIView *circleVeiw = [[UIView alloc]initWithFrame:CGRectMake(0, self.height-(4+6), 6, 6)];
    circleVeiw.backgroundColor = [UIColor redColor];
    circleVeiw.centerX = self.frame.size.width/2;
    circleVeiw.layer.cornerRadius = 6/2;
    circleVeiw.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;
    [self addSubview:circleVeiw];
    _selectCircleVeiw = circleVeiw;
    
    
    self.clipsToBounds = YES;
    self.backgroundColor = [UIColor yellowColor];
//    label.backgroundColor = [UIColor whiteColor];
//    imageView.backgroundColor = [UIColor greenColor];
}


//- (void)setDataModel:(YWHeadModel *)dataModel {
//    _dataModel = dataModel;
//    self.roleLbl.text        = dataModel.familyRole;
//    self.headImageView.image = IMAGE(self.dataModel.seletcImgStr);
//}
//
//
//- (void)setIsSelected:(BOOL)isSelected {
//    if (isSelected) {
//        self.headImageView.image = IMAGE(self.dataModel.seletcImgStr);
//        self.selectCircleVeiw.hidden = NO;
//        self.roleLbl.textColor = THEMECOLOR;
//    }else {
//        self.headImageView.image = IMAGE(self.dataModel.normalImgStr);
//        self.selectCircleVeiw.hidden = YES;
//        self.roleLbl.textColor = Color666666;
//    }
//    
//    _isSelected = isSelected;
//}


//- (void)setRoleFlag:(NSString *)roleFlag {
//    _roleFlag = roleFlag;
//    if ([self.delegate shouldMarkRegisterHeadViewAtRole:[roleFlag integerValue]]) {
//        UIImageView *mark = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 73/2, 58/2)];
//        mark.image        = IMAGE(@"select_family_icon_register");
//        [self.headImageView addSubview:mark];
//        self.isRegistered = YES;
//    }else{
//        NSArray *priorArr = [self.delegate priorDefaultHeadImgOrders];
//        for (int i=0; i<[priorArr count]; i++) {
//            if ([roleFlag integerValue] == [priorArr[i] integerValue]) {
//                self.isSelected = YES;
//                if ([self.delegate respondsToSelector:@selector(firstDefaultHeadView:)]) {
//                    [self.delegate firstDefaultHeadView:self];
//                }
//                break;
//            }
//        }
//    }
//}


//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    if (self.delegate&&[self.delegate respondsToSelector:@selector(didSelectHeadView:)]) {
//        [self.delegate didSelectHeadView:self];
//    }
//}
















@end
