//
//  NSObject+Weak.m
//  Weak
//
//  Created by Tangtang on 2017/4/3.
//  Copyright © 2017年 Tangtang. All rights reserved.
//

#import "NSObject+Weak.h"
#import <objc/runtime.h>

@implementation NSObject (Weak)

- (void)yxl_nilWithDealloc:(MyBlock)block {
    if (block) {
        YXLExecutor *executor = [[YXLExecutor alloc] initWithBlock:block];
        
        objc_setAssociatedObject(self,
                                 (__bridge const void *)(associatedKey),
                                 executor,
                                 OBJC_ASSOCIATION_RETAIN);
    }
}

@end
