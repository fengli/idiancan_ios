//
//  LYRightMenuViewController.h
//  client
//
//  Created by liu on 13-3-22.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "SASlideMenuRightMenuViewController.h"

@interface LYRightMenuViewController : SASlideMenuRightMenuViewController <UITextFieldDelegate>
@property (nonatomic, retain) IBOutlet UITextField *TableNo;
@property (nonatomic, retain) IBOutlet UITextField *Couvert;
@property (nonatomic, retain) IBOutlet UITextField *Entree;
@property (nonatomic, retain) IBOutlet UITextField *Plat;
@property (nonatomic, retain) IBOutlet UITextField *Dessert;

-(IBAction)closeType:(id)sender;
-(IBAction)doneEditing:(id)sender;

@end

