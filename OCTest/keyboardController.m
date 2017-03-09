//
//  keyboardController.m
//  OCTest
//
//  Created by BDHT-MAC on 13/01/2017.
//  Copyright © 2017 BDHT-MAC. All rights reserved.
//

#import "keyboardController.h"
#import "UIImage+YYAdd.h"

@interface keyboardController ()

@property (nonatomic, strong) UIButton *leftBtn;
@property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) UIButton *testView;


@end

@implementation keyboardController


- (void)loadView {
    [super loadView];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.view = scrollView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollView.contentSize = scrollView.frame.size;
    self.view = scrollView;
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = YES;
    
    self.navigationController.navigationBar.backgroundColor = [UIColor yellowColor];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    //导航栏左侧按钮
    _leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _leftBtn.frame = CGRectMake(-10, 0, 50, 44);
    _leftBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    _leftBtn.titleLabel.backgroundColor = [UIColor blueColor];
    _leftBtn.imageView.backgroundColor = [UIColor redColor];
    [_leftBtn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [_leftBtn setImage:[UIImage imageNamed:@"btn_fanhui"] forState:UIControlStateNormal];
    [_leftBtn setTitle:@"返回" forState:UIControlStateNormal];
    _leftBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    _leftBtn.backgroundColor = [UIColor greenColor];
//    [_leftBtn addTarget:self action:@selector(navLeftAction:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:_leftBtn];
//
//    _leftBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    _leftBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    leftBarButtonItem.style = UIBarButtonItemStylePlain;
//
    UIBarButtonItem *leftNegativeSpacer = [[UIBarButtonItem alloc]
                                           initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                           target:nil action:nil];
//
    leftNegativeSpacer.width = 10;
    
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:leftNegativeSpacer, leftBarButtonItem, nil];
//    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
//    [self.view addSubview:_leftBtn];
    
//    self.view.backgroundColor = [UIColor grayColor];
    UITextField *test = [[UITextField alloc] initWithFrame:CGRectMake(20, self.view.frame.size.height-100, 200, 50)];
    [self.view addSubview:test];
    test.backgroundColor = [UIColor lightGrayColor];
    
    UIPanGestureRecognizer *gesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panAction:)];
    [self.view addGestureRecognizer:gesture];
    
    self.testView = [UIButton buttonWithType:UIButtonTypeCustom];
    self.testView.frame = CGRectMake(100, 200, 200, 200);
    self.testView.backgroundColor = [UIColor blueColor];
    CGRect frame = self.testView.imageView.frame;
    frame.size = CGSizeMake(10, 10);
    self.testView.imageView.frame = frame;
    self.testView.imageView.contentMode = UIViewContentModeRedraw;
    
    
    UIImageView *imageview = [[UIImageView alloc]initWithFrame:CGRectMake(100, 420, 35, 35)];
    
    
    UIImage *testImage = [UIImage imageNamed:@"testImage.jpg"];
    testImage = [testImage imageByResizeToSize:CGSizeMake(70, 70)];
    testImage = [testImage imageByRoundCornerRadius:70 borderWidth:2 borderColor:[UIColor redColor]];
    imageview.image = testImage;
    
    [self.testView setImage:testImage forState:UIControlStateNormal];
    
    
//    CAGradientLayer *gradient = [CAGradientLayer layer];
//    gradient.frame = testView.bounds;
//    gradient.colors = @[(__bridge id)[UIColor blueColor].CGColor,(__bridge id)[UIColor whiteColor].CGColor];
//    [testView.layer addSublayer:gradient];
//    self.gradientLayer = gradient;
    [self.view addSubview:self.testView];
    [self.view addSubview:imageview];
    
    

}

-(void)btnAction {
    [UIView animateWithDuration:3 animations:^{
        self.testView.backgroundColor = [UIColor whiteColor];
        self.navigationController.navigationBar.backgroundColor = [UIColor whiteColor];
    }];
}

-(void)panAction:(UIPanGestureRecognizer *)pan {
    
    CGPoint point = [pan translationInView:self.view];
    NSLog(@"point is %@",NSStringFromCGPoint(point));
//    self.view.userInteractionEnabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
