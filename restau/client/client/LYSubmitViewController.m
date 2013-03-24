//
//  LYSubmitViewController.m
//  client
//
//  Created by liu on 13-3-24.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LYSubmitViewController.h"
#import "CHKeychain.h"

#define SUBMIT_URL @"http://9.ikandou.com/api/login"
#define KEY_USERNAME   @"com.company.app.username"
#define KEY_PASSWORD   @"com.company.app.password"


//@interface LYSubmitViewController ()

//@end

@implementation LYSubmitViewController

@synthesize username = _username;
@synthesize password = _password;
@synthesize login;
@synthesize usernameInKeychain;
@synthesize passwordInKeychain;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)onSubmit:(id)sender {
   [self  sendRequest:_username.text Password:_password.text];
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

- (NSString *)sendRequest:(NSString *) username Password: (NSString *) password 
    {
        NSURL *url = [NSURL URLWithString:SUBMIT_URL];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
        [request setHTTPMethod:@"POST"];
        NSString *URLstr=@"";
        URLstr = [URLstr stringByAppendingString:@"&username="];
        URLstr = [URLstr stringByAppendingString:username];
        URLstr = [URLstr stringByAppendingString:@"&password="];
        URLstr = [URLstr stringByAppendingString:password];
        
        NSData *requestBody = [URLstr dataUsingEncoding:NSUTF8StringEncoding];
        [request setHTTPBody:requestBody];
        NSURLResponse *response = NULL;
        NSError *requestError = NULL;
        NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&requestError];
        NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding ];
        
        {UIAlertView *alert = [[UIAlertView alloc] initWithTitle: nil message: responseString delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"ok",nil];
            [alert show];
        }

        return responseString;
    }
    
@end
