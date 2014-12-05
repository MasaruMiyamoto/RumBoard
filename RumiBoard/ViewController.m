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
