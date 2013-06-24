//
//  Obj2406.m
//  TestTDD
//
//  Created by Quach Ngoc Tam on 6/24/13.
//  Copyright (c) 2013 QsoftVietNam. All rights reserved.
//

#import "Obj2406.h"

@implementation Obj2406
+(NSInteger)cal2604:(NSString*)strValue{
    if ([strValue length]==0) {
        return 0;
    }
    NSString *strtemp = [strValue substringWithRange:NSMakeRange(0, 2)];
    NSString *delimiter;
    if ([strtemp isEqualToString:@"//"]) {
        delimiter = [strValue substringWithRange:NSMakeRange(1, 2)];
    }else{
        delimiter = @",";
    }
    NSString *subValue = [strValue substringWithRange:NSMakeRange(2, [strValue length]-1)];
    NSString *delimiterTemp = [NSString stringWithFormat:@"\n %@", delimiter];
    NSArray *array = [subValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:delimiterTemp]];
    NSInteger total = 0;
    
    //  //;\n1;2
    for (NSString  * value in array) {
        total +=[value integerValue];
    }
    return total;
}
@end
