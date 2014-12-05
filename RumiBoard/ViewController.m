//
//  ViewController.m
//  RumiBoard
//
//  Created by MasaruMiyamoto on 2014/12/03.
//  Copyright (c) 2014年 MasaruMiyamoto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *player1;
@property (weak, nonatomic) IBOutlet UITextField *player2;
@property (weak, nonatomic) IBOutlet UITextField *player3;
@property (weak, nonatomic) IBOutlet UITextField *player4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.player1.delegate = self;
    self.player2.delegate = self;
    self.player3.delegate = self;
    self.player4.delegate = self;
    
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolBar.barStyle = UIBarStyleDefault;
    [toolBar sizeToFit];
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    UIBarButtonItem *_commitBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(closeKeyboard:)];
    NSArray *toolBarItems = [NSArray arrayWithObjects:spacer,_commitBtn, nil];
    [toolBar setItems:toolBarItems animated:YES];
    
    self.player1.inputAccessoryView = toolBar;
    self.player2.inputAccessoryView = toolBar;
    self.player3.inputAccessoryView = toolBar;
    self.player4.inputAccessoryView = toolBar;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    // キーボードの非表示.
    [self.view endEditing:YES];
    NSLog(@"%@",self.player1.text);
    // 改行しない.
    return NO;
}

- (void)closeKeyboard:(id)sender{
    [self.player1 resignFirstResponder];
    [self.player2 resignFirstResponder];
    [self.player3 resignFirstResponder];
    [self.player4 resignFirstResponder];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //Segueの特定
    if ( [[segue identifier] isEqualToString:@"segue"] ) {
        SecondViewController *secondViewController = [segue destinationViewController];
        //ここで遷移先ビューのクラスの変数receiveStringに値を渡している
        secondViewController.Player1 = self.player1.text;
        secondViewController.Player2 = self.player2.text;
        secondViewController.Player3 = self.player3.text;
        secondViewController.Player4 = self.player4.text;
        
    }
}

-(IBAction)returnViewController:(UIStoryboardSegue *)segue{
    
}
@end
