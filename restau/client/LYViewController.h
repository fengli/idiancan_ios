//
//  LYViewController.h
//  iSpiro
//
//  Created by liu on 13-3-21.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "SASlideMenuViewController.h"
#import "SASlideMenuDataSource.h"
#import "SASlideMenuDelegate.h"

@interface LYViewController  : SASlideMenuViewController<SASlideMenuDataSource,SASlideMenuDelegate, UITableViewDataSource>

@end
