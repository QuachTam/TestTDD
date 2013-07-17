//
//  AccountLog.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/17/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "AccountLog.h"

@implementation AccountLog
@synthesize _accountNumber, _amount, _timestamp, _description;
-(id)init{
    self = [super init];
    if (self) {
        _accountNumber = [[NSString alloc] init];
        _amount = 0.0;
        _timestamp = [[NSDate alloc] init];
        _description = [[NSString alloc] init];
    }
    return self;
}

@end
