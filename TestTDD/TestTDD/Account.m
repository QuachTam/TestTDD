//
//  Account.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/9/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Account.h"

@implementation Account
@synthesize accountNumber;
@synthesize balance;
@synthesize openTimestamp, _timestamp, _description, amount;
-(id)init{
    self = [super init];
    if (self) {
        accountNumber = [[NSString alloc] init];
        balance = 0.0;
        openTimestamp = [[NSDate alloc] init];
        _timestamp = [[NSDate alloc] init];
    }
    return self;
}
@end
