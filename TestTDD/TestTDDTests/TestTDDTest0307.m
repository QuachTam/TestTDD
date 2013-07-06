//
//  TestTDDTest0307.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/3/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Kiwi.h"
#import "BankAccount.h"
#import "BankAccountDao.h"

SPEC_BEGIN(class_BankAccount)
    describe(@"Open new BankAccount", ^{
        __block NSString *accountNumber;
        
        beforeEach(^{
            accountNumber = [NSString nullMock];
        });
        
        it(@"open new account, accountNumber !nil", ^{
            BankAccount *_bankAcount = [[BankAccount alloc] init];
            [_bankAcount.accountNumber shouldNotBeNil];
        });
        
        it(@"open new account, balance = 0", ^{
            BankAccount *_bankAccount = [[BankAccount alloc] init];
            [[theValue(_bankAccount.balance) should] equal:theValue(0)];
        });
        
        it(@"open new account, openTimestamp !nil", ^{
            BankAccount *_bankAccount = [[BankAccount alloc] init];
            [_bankAccount.openTimestamp shouldNotBeNil];
        });
        
        it(@"getAccount", ^{
            BankAccount *bankAcc = [BankAccount nullMock];
            BankAccountDao *sut = [BankAccountDao nullMock];
            [sut stub:@selector(getAccount:) andReturn:bankAcc];
            
            BankAccount *_bank = [sut getAcount:accountNumber];
            [[_bank.accountNumber should] equal:accountNumber];
        });
    });
SPEC_END
