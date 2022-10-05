//
//  LBFileDirectoryManager.m
//  LBFoundation
//
//  Created by Westfield Zhao on 2022/3/20.
//

#import "LBFileDirectoryManager.h"

static NSString * const LBFileDirectoryManagerAppMapDataDownload = @"download";
@implementation LBFileDirectoryManager

+ (NSString *)documentDirectory {
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    if(documentPaths.count > 0) {
        return [documentPaths firstObject];
    }
    return @"";
}

+ (NSString *)rootDirectory; {
    return [[LBFileDirectoryManager documentDirectory] stringByAppendingString:@"LB_Resources"];
}

+ (NSString *)downloadDirectory {
    return [[LBFileDirectoryManager documentDirectory] stringByAppendingPathComponent:LBFileDirectoryManagerAppMapDataDownload];
}
@end
