//
//  SecondViewController.m
//  RumiBoard
//
//  Created by MasaruMiyamoto on 2014/12/03.
//  Copyright (c) 2014年 MasaruMiyamoto. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *p1label;
@property (weak, nonatomic) IBOutlet UILabel *p2label;
@property (weak, nonatomic) IBOutlet UILabel *p3label;
@property (weak, nonatomic) IBOutlet UILabel *p4label;

@property (weak, nonatomic) IBOutlet UITextField *p1text;
@property (weak, nonatomic) IBOutlet UITextField *p2text;
@property (weak, nonatomic) IBOutlet UITextField *p3text;
@property (weak, nonatomic) IBOutlet UITextField *p4text;

@end

@implementation SecondViewController
@synthesize Player1,Player2,Player3,Player4;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.p1text.delegate = self;
    self.p2text.delegate = self;
    self.p3text.delegate = self;
    self.p4text.delegate = self;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    p1 = Player1;
    p2 = Player2;
    p3 = Player3;
    p4 = Player4;
    
    self.p1label.text = p1;
    self.p2label.text = p2;
    self.p3label.text = p3;
    self.p4label.text = p4;
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    // キーボードの非表示.
    [self.view endEditing:YES];
    // 改行しない.
    return NO;
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
