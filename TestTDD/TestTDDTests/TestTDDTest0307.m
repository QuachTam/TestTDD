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
#import "Account.h"

SPEC_BEGIN(class_BankAccount)
    describe(@"Open new BankAccount", ^{
        __block NSString *accountNumber;
        beforeEach(^{
            accountNumber = [NSString nullMock];
        });
        
        it(@"open new account, accountNumber !nil", ^{
            BankAccount *_bankAcount = [[BankAccount alloc] init];
             Account *_account = [_bankAcount openAccount];
            [_account.accountNumber shouldNotBeNil];
        });
        
        it(@"open new account, balance = 0", ^{
            BankAccount *_bankAcount = [[BankAccount alloc] init];
            Account *_account = [_bankAcount openAccount];
            [[theValue(_account.balance) should] equal:theValue(0)];
        });
        
        it(@"open new account, openTimestamp !nil", ^{
            BankAccount *_bankAccount = [[BankAccount alloc] init];
            Account *_account = [_bankAccount openAccount];
            [_account.openTimestamp shouldNotBeNil];
        });
        it(@"get Account", ^{
            //4 BankAccountDao select database return Account
            //3 BankAccount get Account from BankAccountDao
            //2 get Acount from BankAcount
            //1 _account.accountNumber == accountNumber
            Account *_accountGet = [Account nullMock];
            [_accountGet stub:@selector(accountNumber) andReturn:accountNumber];
            
            [BankAccountDao stub:@selector(getAccountWithAccountNumber:) andReturn:_accountGet withArguments:accountNumber];
            
            BankAccount *_bank = [[BankAccount alloc] init];
            Account *_account = [_bank getAccount:accountNumber];
            [[_account.accountNumber should] equal:accountNumber];
        });
    });
SPEC_END




























