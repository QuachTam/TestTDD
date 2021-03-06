//
//  BankAccountDao.h
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/9/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"

@interface BankAccountDao : NSObject
+(Account*)getAccountWithAccountNumber:(NSString*)accName;
+(BOOL )insertDatabase:(Account*)account;
+(BOOL)insertTimestamp:(NSDate*)_dateNow;
@end
