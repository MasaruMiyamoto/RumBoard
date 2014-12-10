//
//  SecondViewController.m
//  RumiBoard
//
//  Created by MasaruMiyamoto on 2014/12/03.
//  Copyright (c) 2014年 MasaruMiyamoto. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UITextFieldDelegate>{
    int AddNum;
}

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
@property (weak, nonatomic) IBOutlet UILabel *tBar;
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

@property (weak, nonatomic) IBOutlet UILabel *finish1;
@property (weak, nonatomic) IBOutlet UILabel *finish2;
@property (weak, nonatomic) IBOutlet UILabel *finish3;
@property (weak, nonatomic) IBOutlet UILabel *finish4;

@property (weak, nonatomic) IBOutlet UIButton *addButton;

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
    self.p3text.inputAccessoryView = toolBar;
    self.p4text.inputAccessoryView = toolBar;
    
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
    
    [self firstApper:YES];
    [self secondApper:YES];
    [self thirdApper:YES];
    [self forthApper:YES];
    [self initScore];
    [self initText];
    
    AddNum = 1;
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

-(void)secondApper:(BOOL)flag{
    [self apper:self.sTelop :flag];
    [self apper:self.sp1 :flag];
    [self apper:self.sp1 :flag];
    [self apper:self.sp2 :flag];
    [self apper:self.sp3 :flag];
    [self apper:self.sp4 :flag];
    [self apper:self.sBar :flag];
}

-(void)thirdApper:(BOOL)flag{
    [self apper:self.tTelop :flag];
    [self apper:self.tp1 :flag];
    [self apper:self.tp1 :flag];
    [self apper:self.tp2 :flag];
    [self apper:self.tp3 :flag];
    [self apper:self.tp4 :flag];
    [self apper:self.tBar :flag];
}

-(void)forthApper:(BOOL)flag{
    [self apper:self.foTelop :flag];
    [self apper:self.fop1 :flag];
    [self apper:self.fop1 :flag];
    [self apper:self.fop2 :flag];
    [self apper:self.fop3 :flag];
    [self apper:self.fop4 :flag];
    [self apper:self.foBar :flag];
}



- (void)apper:(UILabel *)sender :(BOOL)flag{
    sender.hidden = flag;
    
}
    
- (IBAction)addButoon:(id)sender {
    
    switch (AddNum) {
        case 1:
            [self initScore];
            [self firstApper:NO];
            [self inputScore:self.fp1 :self.fp2 :self.fp3 :self.fp4];
            break;
        case 2:
            [self secondApper:NO];
            [self inputScore:self.sp1 :self.sp2 :self.sp3 :self.sp4];
            break;
        case 3:
            [self thirdApper:NO];
            [self inputScore:self.tp1 :self.tp2 :self.tp3 :self.tp4];
            break;
        case 4:
            [self forthApper:NO];
            [self inputScore:self.fop1 :self.fop2 :self.fop3 :self.fop4];
            break;
        default:
            break;
    }
    
    [self finish];
    
    if(AddNum <= 4){
        AddNum++;
        if(AddNum == 5)
            [self.addButton setTitle: @"もう一回" forState:UIControlStateNormal];
    }else{
        AddNum = 1;
        [self initScore];
        [self firstApper:YES];
        [self secondApper:YES];
        [self thirdApper:YES];
        [self forthApper:YES];
        [self initScore];
        [self initText];
        [self.addButton setTitle: @"追加" forState:UIControlStateNormal];
    }
}

-(void)inputScore:(UILabel *)label1 :(UILabel *)label2 :(UILabel *)label3 :(UILabel *)label4{
    int val1,val2,val3,val4;
    
    if(![self.p1text.text isEqualToString:@""]
       && ![self.p2text.text isEqualToString:@""]
       && ![self.p3text.text isEqualToString:@""]
       && ![self.p4text.text isEqualToString:@""]){
        NSLog(@"hoge");
        val1 = [self inTextNumber:self.p1text];
        val2 = [self inTextNumber:self.p2text];
        val3 = [self inTextNumber:self.p3text];
        val4 = [self inTextNumber:self.p4text];
        
        //ここ関数化できね？
        if(val1*val2*val3*val4 == 0){
            if(val1 == 0){
                val1 = -1*(val2+val3+val4);
            }
            if(val2 == 0){
                val2 = -1*(val1+val3+val4);
            }
            if(val3 == 0){
                val3 = -1*(val1+val2+val4);
            }
            if(val4 == 0){
                val4 = -1*(val1+val2+val3);
            }
            
            label1.text = [NSString stringWithFormat:@"%d",-val1];
            label2.text = [NSString stringWithFormat:@"%d",-val2];
            label3.text = [NSString stringWithFormat:@"%d",-val3];
            label4.text = [NSString stringWithFormat:@"%d",-val4];
            [self initText];
            
        }else{
            //ここにアラート
            AddNum--;
        }
        
    }else{
        AddNum--;
    }
}

-(int) inTextNumber:(UITextField *)text{
    return (int)[text.text integerValue];
}

- (void)finish{

    self.finish1.text = [NSString stringWithFormat:@"%d",[self sumScore:self.fp1 :self.sp1 :self.tp1 :self.fop1]];
    self.finish2.text = [NSString stringWithFormat:@"%d",[self sumScore:self.fp2 :self.sp2 :self.tp2 :self.fop2]];
    self.finish3.text = [NSString stringWithFormat:@"%d",[self sumScore:self.fp3 :self.sp3 :self.tp3 :self.fop3]];
    self.finish4.text = [NSString stringWithFormat:@"%d",[self sumScore:self.fp4 :self.sp4 :self.tp4 :self.fop4]];
    
}

- (int)sumScore:(UILabel *)game1 :(UILabel *)game2 :(UILabel *)game3 :(UILabel *)game4{
    int a,b,c,d;
    a = (int)[game1.text integerValue];
    b = (int)[game2.text integerValue];
    c = (int)[game3.text integerValue];
    d = (int)[game4.text integerValue];
    
    return a+b+c+d;
}

- (void) initScore{
    self.finish1.text = @"0";
    self.finish2.text = @"0";
    self.finish3.text = @"0";
    self.finish4.text = @"0";
    
    self.fp1.text = @"0";
    self.fp2.text = @"0";
    self.fp3.text = @"0";
    self.fp4.text = @"0";
    
    self.sp1.text = @"0";
    self.sp2.text = @"0";
    self.sp3.text = @"0";
    self.sp4.text = @"0";
    
    self.tp1.text = @"0";
    self.tp2.text = @"0";
    self.tp3.text = @"0";
    self.tp4.text = @"0";
    
    self.fop1.text = @"0";
    self.fop2.text = @"0";
    self.fop3.text = @"0";
    self.fop4.text = @"0";
}

- (void)initText{
    self.p1text.text = @"";
    self.p2text.text = @"";
    self.p3text.text = @"";
    self.p4text.text = @"";
}



@end
