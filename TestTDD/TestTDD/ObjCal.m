//
//  ObjCal.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/13/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "ObjCal.h"

@implementation ObjCal
+(int)cal:(NSString*)str{
    if ([str length]==0) {
        return 0;
    }
    return 1;
}
@end
