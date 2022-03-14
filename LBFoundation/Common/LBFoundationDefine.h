//
//  LBFoundationDefine.h
//  LBFoundation
//
//  Created by Westfield Zhao on 2022/3/13.
//

#ifndef LBFoundationDefine_h
#define LBFoundationDefine_h

#undef LBDefaultManager_H
#define LBDefaultManager_H(__class) @property(class, strong, readonly) __class *defaultManager;

#undef LBDefaultManager_M
#define LBDefaultManager_M(__class)                                                          \
    +(__class *)defaultManager {                                                             \
        static dispatch_once_t token;                                                        \
        static __class *__singleton__ = nil;                                                 \
        dispatch_once(&token, ^{                                                             \
            __singleton__ = [[self alloc] init];                                             \
        });                                                                                  \
        return __singleton__;                                                                \
    }

#endif /* LBFoundationDefine_h */
