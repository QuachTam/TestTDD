//
//  BankAccount.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount
@synthesize accountNumber;
@synthesize balance;
@synthesize openTimestamp;
-(id)init{
    self = [super init];
    if (self) {
        accountNumber = [[NSString alloc] init];
        balance = 0.0;
        openTimestamp = [[NSDate alloc] init];
    }
    return self;
}

@end
