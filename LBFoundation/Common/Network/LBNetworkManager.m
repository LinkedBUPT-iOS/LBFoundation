//
//  LBNetworkManager.m
//  LBFoundation
//
//  Created by Westfield Zhao on 2022/3/19.
//

#import "LBNetworkManager.h"

@implementation LBNetworkManager
LBDefaultManager_M(LBNetworkManager);

+ (instancetype)sharedManager {
    static LBNetworkManager *sharedInstance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        NSURL *baseURL = [NSURL URLWithString:@"https://c.m.163.com/"];
        NSURLSessionConfiguration *configure = [NSURLSessionConfiguration defaultSessionConfiguration];
        sharedInstance = [[self alloc] initWithBaseURL:baseURL sessionConfiguration:configure];
        sharedInstance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/html",@"text/javascript", nil];
    });
    return sharedInstance;
}
- (void)requestWithBaseURL:(NSString *)baseURL;
@end
