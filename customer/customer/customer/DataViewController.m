//
//  DataViewController.m
//  customer
//
//  Created by Feng Li on 3/17/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController

@synthesize dataLabel = _dataLabel;
@synthesize dataObject = _dataObject;
@synthesize usernameLabel = _usernameLabel;
@synthesize passwordLabel = _passwordLabel;
@synthesize username = _username;
@synthesize password = _password;
@synthesize submitButton = _submitButton;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.dataLabel = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
