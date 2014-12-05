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

@property (weak, nonatomic) IBOutlet UILabel *fTelop;
@property (weak, nonatomic) IBOutlet UILabel *fp1;
@property (weak, nonatomic) IBOutlet UILabel *fp2;
@property (weak, nonatomic) IBOutlet UILabel *fp3;
@property (weak, nonatomic) IBOutlet UILabel *fp4;

@property (weak, nonatomic) IBOutlet UILabel *sTelop;
@property (weak, nonatomic) IBOutlet UILabel *sBar;
@property (weak, nonatomic) IBOutlet UILabel *sp1;
@property (weak, nonatomic) IBOutlet UILabel *sp2;
@property (weak, nonatomic) IBOutlet UILabel *sp3;
@property (weak, nonatomic) IBOutlet UILabel *sp4;

@property (weak, nonatomic) IBOutlet UILabel *tTelop;
@property (weak, nonatomic) IBOutlet UILabel *tBer;
@property (weak, nonatomic) IBOutlet UILabel *tp1;
@property (weak, nonatomic) IBOutlet UILabel *tp2;
@property (weak, nonatomic) IBOutlet UILabel *tp3;
@property (weak, nonatomic) IBOutlet UILabel *tp4;

@property (weak, nonatomic) IBOutlet UILabel *foTelop;
@property (weak, nonatomic) IBOutlet UILabel *foBar;
@property (weak, nonatomic) IBOutlet UILabel *fop1;
@property (weak, nonatomic) IBOutlet UILabel *fop2;
@property (weak, nonatomic) IBOutlet UILabel *fop3;
@property (weak, nonatomic) IBOutlet UILabel *fop4;

@end

@implementation SecondViewController
@synthesize Player1,Player2,Player3,Player4;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.p1text.delegate = self;
    self.p2text.delegate = self;
    self.p3text.delegate = self;
    self.p4text.delegate = self;
    
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolBar.barStyle = UIBarStyleDefault;
    [toolBar sizeToFit];
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    UIBarButtonItem *_commitBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(closeKeyboard:)];
    NSArray *toolBarItems = [NSArray arrayWithObjects:spacer,_commitBtn, nil];
    [toolBar setItems:toolBarItems animated:YES];
    
    self.p1text.inputAccessoryView = toolBar;
    self.p2text.inputAccessoryView = toolBar;
    self.p2text.inputAccessoryView = toolBar;
    self.p4text.inputAccessoryView = toolBar;
    
    // Do any additional setup after loading the view.
    [self firstApper:YES];
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

- (void)closeKeyboard:(id)sender{
    [self.p1text resignFirstResponder];
    [self.p2text resignFirstResponder];
    [self.p3text resignFirstResponder];
    [self.p4text resignFirstResponder];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)firstApper:(BOOL)flag{
    [self apper:self.fTelop :flag];
    [self apper:self.fp1 :flag];
    [self apper:self.fp1 :flag];
    [self apper:self.fp2 :flag];
    [self apper:self.fp3 :flag];
    [self apper:self.fp4 :flag];
}

- (void)apper:(UILabel *)sender :(BOOL)flag{
    sender.hidden = flag;
}
- (IBAction)addButoon:(id)sender {
}

- (IBAction)finishButton:(id)sender {
}

@end
