//
//  BankAccount.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "BankAccount.h"
#import "Account.h"
#import "BankAccountDao.h"

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

- (Account*)withdraw:(NSString*)_accName Amount:(double)_amount Description:(NSString*)_description{
    Account *_account = [self getAccount:_accName];
    Account *_accountAF = _account;
    _accountAF.balance -= _amount;
    NSDate *_dateNow = [NSDate date];
    if ([BankAccountDao insertDatabase:_accountAF]) {
        NSLog(@"aaaaaassss");
        if ([BankAccountDao insertTimestamp:_dateNow]) {
            NSLog(@"xxxxxxxxxx");
            _accountAF._timestamp = _dateNow;
        }
        return _accountAF;
    }
    return nil;
}

- (Account*)getAccount:(NSString*)accName{
    return [BankAccountDao getAccountWithAccountNumber:accName];
}
- (Account*)deposit:(NSString*)accountName Amount:(double)_amount Description:(NSString*)_description{
    Account *account = [self getAccount:accountName];
    Account *accAF = [[Account alloc] init];
    accAF.accountNumber = accountName;
    accAF.openTimestamp = account.openTimestamp;
    accAF.balance = account.balance + _amount;
    NSDate *_dateNow = [NSDate date];
    
    if ([BankAccountDao insertDatabase:accAF]) {
        if ([BankAccountDao insertTimestamp:_dateNow]) {
            accAF._timestamp = _dateNow;
        }
        return accAF;
    }
    return nil;
}
@end
