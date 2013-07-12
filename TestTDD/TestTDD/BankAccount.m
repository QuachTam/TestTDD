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
- (Account*)getAccount:(NSString*)accName{
    return [BankAccountDao getAccountWithAccountNumber:accName];
}
- (Account*)deposit:(NSString*)accountName Amount:(double)_amount Description:(NSString*)_description{
    Account *account = [BankAccountDao getAccountWithAccountNumber:accountName];
    account.balance +=_amount;
    Account *accountNow = [BankAccountDao insertDatabase:account];
    return accountNow;
}
@end
