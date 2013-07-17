//
//  AccountLog.h
//  TestTDD
//
//  Created by Quach Ngoc Tam on 7/17/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountLog : NSObject
@property (strong, nonatomic) NSString *_accountNumber;
@property (readwrite) NSDate *_timestamp;
@property (readwrite) double _amount;
@property (strong, nonatomic) NSString *_description;
@end
