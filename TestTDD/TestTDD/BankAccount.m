//
//  BankAccount.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "BankAccount.h"
#import "Account.h"
@implementation BankAccount
-(id)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (Account*)openAccount{
    return  [[Account alloc] init];
}

@end
