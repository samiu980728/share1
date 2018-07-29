//
//  FUForSecond.m
//  share
//
//  Created by 萨缪 on 2018/7/29.
//  Copyright © 2018年 萨缪. All rights reserved.
//

#import "FUForSecond.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFourth.h"
#import "VCFiveth.h"


@interface FUForSecond ()

@end

@implementation FUForSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationItem.title = @"选择图片";
    [self.navigationController.navigationBar setBackgroundImage: [UIImage imageNamed:@"2.png"] forBarMetrics:nil];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString * filePath1 = [[NSBundle mainBundle]pathForResource:@"177" ofType:@"png"];
    
    NSData * data1 = [NSData dataWithContentsOfFile:filePath1];
    
    //暂时把action设置为nil 等会还要上传照片
    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data1] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:@selector(clickMe:)];
    
    self.navigationItem.leftBarButtonItem = item1;
    
    NSString * filePath2 = [[NSBundle mainBundle]pathForResource:@"166" ofType:@"png"];
    
    NSData * data3 = [NSData dataWithContentsOfFile:filePath2];
    
    UIBarButtonItem * item2 = [[UIBarButtonItem alloc] initWithImage:[self reSizeImage:[UIImage imageWithData:data3] toSize:CGSizeMake(30, 30)] style:UIBarButtonItemStyleDone target:self action:nil];
    
    self.navigationItem.rightBarButtonItem = item2;
    
    
}


- (void)clickMe:(id)sender{
    VCFirst * vcFirst = [[VCFirst alloc] init];
    
    
    //vcFirst.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@"5.png"] tag:101];
    //vcFirst.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"第一" image:nil tag:101];
    vcFirst.tabBarItem.image = [[UIImage imageNamed:@"5.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    
    VCSecond * vcSecond = [[VCSecond alloc] init];
    
    
    VCThird * vcThird = [[VCThird alloc] init];
    
    vcSecond.tabBarItem.image = [[UIImage imageNamed:@"6.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vcThird.tabBarItem.image = [[UIImage imageNamed:@"7.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    VCFourth * vcFourth = [[VCFourth alloc] init];
    
    vcFourth.tabBarItem.image = [[UIImage imageNamed:@"8.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    VCFiveth * vcFiveth = [[VCFiveth alloc] init];
    
    vcFiveth.tabBarItem.image = [[UIImage imageNamed:@"9.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarController * tabController = [[UITabBarController alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vcFirst];
    
    UINavigationController * nav1 = [[UINavigationController alloc] initWithRootViewController:vcSecond];
    
    UINavigationController * nav2 = [[UINavigationController alloc] initWithRootViewController:vcThird];
    
    UINavigationController * nav3 = [[UINavigationController alloc] initWithRootViewController:vcFourth];
    
    UINavigationController * nav4 = [[UINavigationController alloc] initWithRootViewController:vcFiveth];
    
    NSArray * arrayVC = [NSArray arrayWithObjects:nav1,nav,nav2,nav3,nav4, nil];
    
    tabController.viewControllers = arrayVC;
    
    //[appDelagete.window.rootViewController presentViewController:[[VCFirst alloc]init] animated:YES completion:nil];
    
    [self presentViewController:tabController animated:YES completion:nil];
    
}




- (UIImage *)reSizeImage:(UIImage *)image toSize:(CGSize)reSize
{
    UIGraphicsBeginImageContext(CGSizeMake(reSize.width, reSize.height));
    [image drawInRect:CGRectMake(0, 0, reSize.width, reSize.height)];
    UIImage *reSizeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [reSizeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
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
