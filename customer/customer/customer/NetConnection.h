//
//  NetConnection.h
//  customer
//
//  Created by Feng Li on 3/17/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetConnection : NSObject


- (NSString *) sendRequest:(NSString *) username Password: (NSString *) password;

@end
