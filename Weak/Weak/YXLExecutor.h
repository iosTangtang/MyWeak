//
//  YXLExecutor.h
//  Weak
//
//  Created by Tangtang on 2017/4/3.
//  Copyright © 2017年 Tangtang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^MyBlock)(void);

@interface YXLExecutor : NSObject

- (instancetype)initWithBlock:(MyBlock)block;

@end
