//
//  NSObject+Weak.h
//  Weak
//
//  Created by Tangtang on 2017/4/3.
//  Copyright © 2017年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YXLExecutor.h"

const static NSString *associatedKey = @"associatedKey";

@interface NSObject (Weak)

- (void)yxl_nilWithDealloc:(MyBlock)block;

@end
