//
//  BankAccountDao.h
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/5/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BankAccount.h"

@interface BankAccountDao : NSObject
-(BankAccount*)getAccount:(NSString*)accountNumber;
@end
