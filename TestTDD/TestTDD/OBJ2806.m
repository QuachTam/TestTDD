//
//  OBJ2806.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/28/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "OBJ2806.h"

@implementation OBJ2806
+(NSInteger)cal:(NSString*)strValue{
    if ([strValue length]==0) {
       return 0;
    }
    return [strValue integerValue];
}
@end
