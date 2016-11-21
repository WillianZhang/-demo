//
//  RootViewController.m
//  HDZCustSliderAndVc
//
//  Created by 中滨宝通 on 2016/11/21.
//  Copyright © 2016年 feilong. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"
#import "MyUIClass.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"这是第一个页面";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    // Do any additional setup after loading the view.
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(pushTo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *btn = [MyUIClass makeUIButtonWithFrame:CGRectMake(200, 300, 100, 100) andType:1 andBackGroundClor:[UIColor lightGrayColor] andTitle:@"点击我" andTitleColor:[UIColor redColor] andImageName:nil andTarget:self andSelector:@selector(pushTOOO) andEvent:UIControlEventTouchUpInside andState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
    
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    
    
    UITextField *field = [MyUIClass makeUITextFieldWithFrame:CGRectMake(50, 450, 300, 50) andDelegate:self andBorderStyle:UITextBorderStyleLine andPlaceHolder:@"请输入文字" andSecu:NO andLeftView:leftView andLeftViewMode:UITextFieldViewModeAlways andRightView:nil andRightViewMode:UITextFieldViewModeAlways andClearBtnMode:UITextFieldViewModeAlways andAutoCorrect:UITextAutocorrectionTypeDefault andAutoCapital:UITextAutocapitalizationTypeNone andKeyboardType:UIKeyboardTypeDefault andReturnType:UIReturnKeyJoin andInputView:nil];
    
    
    UIImageView *imagev = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    [imagev setImage:[UIImage imageNamed:@"resizeApi"]];
    [leftView addSubview:imagev];
   
    
    [self.view addSubview:field];
    
    
}
-(void)pushTo{
    ViewController *vc = [[ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


-(void)pushTOOO{
    NSLog(@"输出这样的一段话");
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
