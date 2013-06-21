//
//  Obj2006.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/21/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj2006.h"

@implementation Obj2006
+(NSInteger)cal2006:(NSString*)strValue{
    if ([strValue length]==0) {
        return 0;
    }
    return [strValue integerValue];
}
@end
