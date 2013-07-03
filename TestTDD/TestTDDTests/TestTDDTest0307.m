//
//  TestTDDTest0307.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "BankAccount.h"

SPEC_BEGIN(class_0307)
    describe(@"Test TDD 2", ^{
        it(@"open new account, accountNumber !nil", ^{
            BankAccount *_bankAcount = [[BankAccount alloc] init];
            [_bankAcount.accountNumber shouldNotBeNil];
        });
        
        it(@"open new account, balance = 0", ^{
            BankAccount *_bankAccount = [[BankAccount alloc] init];
            [[theValue(_bankAccount.balance) should] equal:theValue(0)];
        });
        
        it(@"open new account, openTimestamp", ^{
            BankAccount *_bankAccount = [[BankAccount alloc] init];
            [_bankAccount.openTimestamp shouldNotBeNil];
        });
    });
SPEC_END
