//
//  NetConnection.m
//  customer
//
//  Created by Feng Li on 3/17/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "NetConnection.h"


#define SUBMIT_URL @"http://www."

@implementation NetConnection

-(id) init{
	self = [super init];
	
	if (!self) {
		return nil;
	}
    return self;
}


    
- (NSString *)sendRequestSync
{
    // 初始化请求, 这里是变长的, 方便扩展
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    // 设置
    [request setURL:[NSURL URLWithString:SUBMIT_URL]];
    [request setHTTPMethod:@"POST"];
    [request setValue:host forHTTPHeaderField:@"Host"];
    NSString *contentLength = [NSString stringWithFormat:@"%d", [content length]];
    [request setValue:contentLength forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody:content];
    
    // 发送同步请求, data就是返回的数据
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nilerror:&error];
    if (data == nil) {
        NSLog(@"send request failed: %@", error);
        return nil;
    }
    
    NSString *response = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"response: %@", response);
    return response;
}
    
@end
