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
        __block NSString *description;
        beforeEach(^{
            accountNumber = [NSString nullMock];
            description = [NSString nullMock];
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
        
        it(@"deposit ", ^{
            //7 getAccount request BankAccountDao select database return AccountBF
            //6 BankAccount getAccount should return AccountBF
            //5 BankAccountDao select database 
            //4 'deposit' request BankAccountDao return Account
            //3 action 'deposit' should balance +=balance + amount  -- > request action in BankAccount call action insert database in BankAccountDao
            //2 BankAccount.deposit(accountNumber, amount, description) return Account
            //1 Account.balance == AccountBF.balance + amount
            BankAccount *_bank = [[BankAccount alloc] init];
            Account *_bankBefore = [Account nullMock];
            Account *_bankAfter;
            
            [BankAccountDao stub:@selector(insertDatabase:) andReturn:theValue(YES)];
            [_bankBefore stub:@selector(balance) andReturn:theValue(10)];
            [_bank stub:@selector(getAccount:) andReturn:_bankBefore];
            
            _bankAfter = [_bank deposit:accountNumber Amount:10 Description:@"deposit"];
            [[theValue(_bankAfter.balance) should] equal:theValue(_bankBefore.balance + 10)];
        });
        
        it(@"mock timestamp deposit", ^{
            //3 action deposit call BankAccountDao insert timestamp to database
            //2 get Account from deposit
            //1 Account.timestamp = dateNow
            NSDate *_dateNow = [NSDate nullMock];
            [NSDate stub:@selector(date) andReturn:_dateNow];
            
            BankAccount *_bank = [[BankAccount alloc] init];
            [BankAccountDao stub:@selector(insertDatabase:) andReturn:theValue(YES)];
            [BankAccountDao stub:@selector(insertTimestamp:) andReturn:theValue(YES)];
            
            Account *_accountTimestamp = [_bank deposit:accountNumber Amount:10 Description:@"desciption"];
            [[theValue(_accountTimestamp._timestamp) should] equal: theValue(_dateNow)];
        });
        
        it(@"withdraw", ^{
            //6 stub accountBefore.balance should return balance
            //5 accountBankDao stub withdrawWithaccountNumber should return Account with account.balance = account.balance - amount
            //4 accountBank call withdrawWithaccountNumber in accountBankDao
            //3 create accountBank, accountBefore
            //2 create acountAfter = accountBank.withdraw(accountNumber, amount, description)
            //1 acountAfter.balance = accountBefore.balance - amount
            
            Account *_accountBefore = [Account nullMock];
            
            BankAccount *_accountBank = [[BankAccount alloc] init];
            [_accountBefore stub:@selector(balance) andReturn:theValue(10)];
            [_accountBank stub:@selector(getAccount:) andReturn:_accountBefore];
            
            Account *_accountAfter = [_accountBank withdraw:accountNumber Amount:10 Description:@"description"];
            [[theValue(_accountAfter.balance) should] equal: theValue(_accountBefore.balance - 10)];
        });
        
        it(@"timestamp withdraw", ^{
            //6 check call action inserttimestamp in BankAccountDao
            //5 check call action insert database in BankAccountDao
            //4 create _bank
            //3 create _account = _bank.withdraw
            //2 create _dateNow
            //1 account._timestamp = _dateNow
            BankAccount *_bank = [[BankAccount alloc] init];
            Account *_account = [_bank withdraw:accountNumber Amount:-10 Description:@"description"];
            NSDate *_dateNow = [NSDate nullMock];
            [[theValue(_account._timestamp) should] equal: theValue(_dateNow)];
        });
    });
SPEC_END




























