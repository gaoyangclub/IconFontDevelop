//
//  StringCodeUtils.h
//  IconFontTest
//
//  Created by admin on 16/10/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringCodeUtils : NSObject

+(NSString *)decodeFromPercentEscapeString: (NSString *) input;
+(NSString *)encodeToPercentEscapeString: (NSString *) input;

/**
 *  Unicode转UTF-8
 */
+(NSString*) replaceUnicode:(NSString*)aUnicodeString;
/**
 *  UTF-8转Unicode
 */
+(NSString *) utf8ToUnicode:(NSString *)string;

@end
