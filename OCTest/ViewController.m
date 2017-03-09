//
//  ViewController.m
//  OCTest
//
//  Created by BDHT-MAC on 20/12/2016.
//  Copyright © 2016 BDHT-MAC. All rights reserved.
//

#import "ViewController.h"
#import "YWHeadView.h"
#import "UIView+YYAdd.h"
#import "YWMsonryView.h"

@interface ViewController ()

@property (nonatomic, strong) dispatch_source_t timer;

//@property (nonatomic, strong) YWHeadView *headView;
@property (nonatomic, strong) YWMsonryView *headView;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    self.timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
//    dispatch_source_set_timer(self.timer, dispatch_walltime(NULL, 0), 2 * NSEC_PER_SEC, 0 );
//    dispatch_source_set_event_handler(self.timer, ^{
//        NSLog(@"dispatch_source_timer is executed");
//    });
//    dispatch_resume(self.timer);
//    
//    
//    
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        NSLog(@"NStimer is executed");
//    }];
//    
//    [timer fire];
    
    self.view.backgroundColor = [UIColor whiteColor];
//    YWHeadView *headView = [[YWHeadView alloc]initWithFrame:CGRectMake(50, 80, 0, 0)];
//    [self.view addSubview:headView];
//    self.headView = headView;
    
    
    
    YWMsonryView *headView = [[YWMsonryView alloc]initWithFrame:CGRectMake(50, 80, 0, 0)];
    [self.view addSubview:headView];
    self.headView = headView;

    
    
    
    
    UIButton *nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn.frame = CGRectMake(24, 500, 100, 40);
    [nextBtn addTarget:self action:@selector(nextStepAction) forControlEvents:UIControlEventTouchUpInside];
    nextBtn.backgroundColor = [UIColor lightGrayColor];
    [nextBtn setTitle:@"增加宽度" forState:UIControlStateNormal];
    [self.view addSubview:nextBtn];
    
    UIButton *nextBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn2.frame = CGRectMake(150, 500, 100, 40);
    [nextBtn2 addTarget:self action:@selector(nextStepAction2) forControlEvents:UIControlEventTouchUpInside];
    nextBtn2.backgroundColor = [UIColor lightGrayColor];
    [nextBtn2 setTitle:@"增加高度" forState:UIControlStateNormal];
    [self.view addSubview:nextBtn2];
    
    UIButton *nextBtn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn3.frame = CGRectMake(24, 560, 100, 40);
    [nextBtn3 addTarget:self action:@selector(nextStepAction3) forControlEvents:UIControlEventTouchUpInside];
    nextBtn3.backgroundColor = [UIColor lightGrayColor];
    [nextBtn3 setTitle:@"增加宽和高" forState:UIControlStateNormal];
    [self.view addSubview:nextBtn3];

    UIButton *nextBtn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn4.frame = CGRectMake(150, 560, 100, 40);
    [nextBtn4 addTarget:self action:@selector(nextStepAction4) forControlEvents:UIControlEventTouchUpInside];
    nextBtn4.backgroundColor = [UIColor lightGrayColor];
    [nextBtn4 setTitle:@"恢复宽高" forState:UIControlStateNormal];
    [self.view addSubview:nextBtn4];
    

       
}

- (void)nextStepAction{
    
    self.headView.width = 150;
}

- (void)nextStepAction2{
    
    self.headView.height = 150;
    
}

- (void)nextStepAction3{
    
    self.headView.width = 150;
    self.headView.height = 150;
}

- (void)nextStepAction4{
    
    self.headView.width = 80;
    self.headView.height = 100;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
