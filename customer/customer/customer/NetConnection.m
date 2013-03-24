//
//  NetConnection.m
//  customer
//
//  Created by Feng Li on 3/17/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "NetConnection.h"


#define SUBMIT_URL @"http://9.ikandou.com/api/login"


@implementation NetConnection

-(id) init{
	self = [super init];
	
	if (!self) {
		return nil;
	}
    return self;
}


- (NSString *)sendRequest:(NSString *) username Password: (NSString *) password {
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
    return responseString;
}





/*
    
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
 
 */
    
@end
