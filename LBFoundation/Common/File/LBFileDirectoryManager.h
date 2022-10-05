//
//  LBFileDirectoryManager.h
//  LBFoundation
//
//  Created by Westfield Zhao on 2022/3/20.
//

#import <Foundation/Foundation.h>
#import "LBFoundation.h"
NS_ASSUME_NONNULL_BEGIN

@interface LBFileDirectoryManager : NSObject

+ (NSString *)documentDirectory;

+ (NSString *)rootDirectory;

+ (NSString *)downloadDirectory;

@end

NS_ASSUME_NONNULL_END
