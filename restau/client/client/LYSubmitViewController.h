//
//  LYSubmitViewController.h
//  client
//
//  Created by liu on 13-3-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYSubmitViewController : UIViewController {
   // NSString *usernameInKeychain;
   // NSString *passwordInKeychain;
}

@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UIButton *login;

@property  (nonatomic, assign) NSString *usernameInKeychain;
@property  (nonatomic, assign) NSString *passwordInKeychain;

- (IBAction)onSubmit:(id)sender;

@end
