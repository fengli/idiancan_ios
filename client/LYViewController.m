//
//  LYViewController.m
//  iSpiro
//
//  Created by liu on 13-3-21.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "LYViewController.h"
#import "ColoredViewController.h"

@interface LYViewController ()

@end

@implementation LYViewController



-(id) initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        // Assign self to the slideMenuDataSource because self will implement SASlideMenuDatSource
        self.slideMenuDataSource = self;
        self.slideMenuDelegate = self;

    }
    return self;
}

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    if(self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]){
        // Assign self to the slideMenuDataSource because self will implement SASlideMenuDataSource
        self.slideMenuDataSource = self;

    }
    return self;
}


-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    return YES;
}

#pragma mark -
#pragma mark SASlideMenuDataSource
/*
-(void) prepareForSwitchToContentViewController:(UINavigationController *)content{
    UIViewController* controller = [content.viewControllers objectAtIndex:0];
    if ([controller isKindOfClass:[ColoredViewController class]]) {
        ColoredViewController* coloredViewController = (ColoredViewController*) controller;
//        [coloredViewController setBackgroundHue:selectedHue brightness:selectedBrightness];
    }
}
 */

// It configure the menu button. The beahviour of the button should not be modified
-(void) configureMenuButton:(UIButton *)menuButton{
    menuButton.frame = CGRectMake(0, 0, 40, 29);
    [menuButton setImage:[UIImage imageNamed:@"menuicon.png"] forState:UIControlStateNormal];
    [menuButton setBackgroundImage:[UIImage imageNamed:@"menu.png"] forState:UIControlStateNormal];
    [menuButton setBackgroundImage:[UIImage imageNamed:@"menuhighlighted.png"] forState:UIControlStateHighlighted];
    [menuButton setAdjustsImageWhenHighlighted:NO];
    [menuButton setAdjustsImageWhenDisabled:NO];
}

// It configure the right menu button. The beahviour of the button should not be modified
-(void) configureRightMenuButton:(UIButton *)menuButton{
    menuButton.frame = CGRectMake(0, 0, 40, 29);
    [menuButton setImage:[UIImage imageNamed:@"menuright.png"] forState:UIControlStateNormal];
    [menuButton setBackgroundImage:[UIImage imageNamed:@"menu.png"] forState:UIControlStateNormal];
    [menuButton setBackgroundImage:[UIImage imageNamed:@"menuhighlighted.png"] forState:UIControlStateHighlighted];
    [menuButton setAdjustsImageWhenHighlighted:NO];
    [menuButton setAdjustsImageWhenDisabled:NO];
}

// This is the segue you want visibile when the controller is loaded the first time
-(NSIndexPath*) selectedIndexPath{
    return [NSIndexPath indexPathForRow:0 inSection:0];
}

// It maps each indexPath to the segueId to be used. The segue is performed only the first time the controller needs to loaded, subsequent switch to the content controller will use the already loaded controller

-(NSString*) segueIdForIndexPath:(NSIndexPath *)indexPath{
//    if (indexPath.section > 0) {
//        return @"coloredNoRightMenu";
//    }
// 是提供一个选项，可以点击某些地方出现无右键的状态，或者在多个视图间通过segueID进行选择。目前无用
    return @"colored";
}

-(Boolean) slideOutThenIn{
    return NO;
}
//Disable caching for the controller at the first row of each section
-(Boolean) disableContentViewControllerCachingForIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row ==0) {
        return YES;
    }
    return NO;
}

//Enable the right menu for the the view controller in the first section
-(Boolean) hasRightMenuForIndexPath:(NSIndexPath *)indexPath{
    
//    if (indexPath.section == 0) {
        return YES;
//    }
//    return NO;
}

#pragma mark -
#pragma mark UITableViewDataSource

//定义table的section数量
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
//定义table的section标题

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"Options";
    }else if (section == 1){
        return @"Sexe";
    }else {
        return @"Email";
    }
}

//定义table里每个section有几行
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"item"];
    return cell;
}


//确定左边的尺寸
-(CGFloat) leftMenuVisibleWidth{
    return 280;
}

// 确定右边的尺寸
-(CGFloat) rightMenuVisibleWidth{
    return 290;
}



#pragma mark -
#pragma mark SASlideMenuDelegate

-(void) slideMenuWillSlideIn{
    NSLog(@"slideMenuWillSlideIn");
}
-(void) slideMenuDidSlideIn{
    NSLog(@"slideMenuDidSlideIn");
}
-(void) slideMenuWillSlideToSide{
    NSLog(@"slideMenuWillSlideToSide");
}
-(void) slideMenuDidSlideToSide{
    NSLog(@"slideMenuDidSlideToSide");
}
-(void) slideMenuWillSlideOut{
    NSLog(@"slideMenuWillSlideOut");
}
-(void) slideMenuDidSlideOut{
    NSLog(@"slideMenuDidSlideOut");
}
-(void) slideMenuWillSlideToLeft{
    NSLog(@"slideMenuWillSlideToLeft");
}
-(void) slideMenuDidSlideToLeft{
    NSLog(@"slideMenuDidSlideToLeft");
}
@end
