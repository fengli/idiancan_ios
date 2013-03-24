//
//  LYRightMenuViewController.m
//  client
//
//  Created by liu on 13-3-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LYRightMenuViewController.h"

@interface LYRightMenuViewController ()

@end

@implementation LYRightMenuViewController

@synthesize TableNo;
@synthesize Couvert;
@synthesize Entree;
@synthesize Plat;
@synthesize Dessert;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/*
//点击其它地方隐藏键盘
-(void)touchesBegan:(NSSet *)touches
          withEvent:(UIEvent *)event {
    [TableNo resignFirstResponder];
    [Couvert resignFirstResponder];
    [Entree resignFirstResponder];
    [Plat resignFirstResponder];
    [TableNo resignFirstResponder];
    [super touchesBegan:touches withEvent:event];
}
//点击retrun 隐藏键盘
-(BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    if (theTextField == TableNo){
        [TableNo resignFirstResponder]; } else if (theTextField == Couvert){
            [Couvert resignFirstResponder];
        }else if (theTextField == Entree){
            [Entree resignFirstResponder];
        }else if (theTextField == Plat){
             [Plat resignFirstResponder];
        }else if (theTextField == Dessert){
            [Dessert resignFirstResponder];
        }
    return YES; }
*/
-(IBAction)closeType:(id)sender;
{ // close the keyboard for page Config
    [TableNo resignFirstResponder];
    [Couvert resignFirstResponder];
    [Entree resignFirstResponder];
    [Plat resignFirstResponder];
    [Dessert resignFirstResponder];
}

-(IBAction)doneEditing:(id)sender {
    [sender resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
