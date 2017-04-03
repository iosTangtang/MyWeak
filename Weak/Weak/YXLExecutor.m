//
//  YXLExecutor.m
//  Weak
//
//  Created by Tangtang on 2017/4/3.
//  Copyright © 2017年 Tangtang. All rights reserved.
//

#import "YXLExecutor.h"

@interface YXLExecutor ()

@property (nonatomic, copy) MyBlock userBlock;

@end

@implementation YXLExecutor

- (instancetype)initWithBlock:(MyBlock)block {
    self = [super init];
    if (self) {
        self.userBlock = block;
    }
    return self;
}

- (void)dealloc {
    (_userBlock == nil) ? nil : _userBlock();
}

@end
