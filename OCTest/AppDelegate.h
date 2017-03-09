//
//  AppDelegate.h
//  OCTest
//
//  Created by BDHT-MAC on 20/12/2016.
//  Copyright © 2016 BDHT-MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

