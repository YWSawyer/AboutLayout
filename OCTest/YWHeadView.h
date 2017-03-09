//
//  headView.h
//  xqx
//
//  Created by BDHT-MAC on 16/01/2017.
//  Copyright © 2017 DevSource. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//@class YWHeadView;
//
//@protocol headViewDelegate <NSObject>
//
//@required
//
//- (BOOL)shouldMarkRegisterHeadViewAtRole:(NSInteger)role;
//
//- (NSArray*)priorDefaultHeadImgOrders;
//
//
//@optional
//
//- (void)didSelectHeadView:(YWHeadView *)headView;
//
//- (void)firstDefaultHeadView:(YWHeadView *)headView;
//
//@end

@interface YWHeadView : UIView



@property (nonatomic, assign) BOOL isSelected;
@property (nonatomic, assign) BOOL isRegistered;

@end
