//
//  NSString+JP.m
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 22/12/2010.
//  Copyright 2011 JBProjects. All rights reserved.
//
#import "NSString+JP.h"

@implementation NSString (JP)

- (NSString *)stringByFlatteningHTML {
	
    NSScanner *thescanner;
    NSString *text = nil;
	NSString *htmlless = [NSString string];
    thescanner = [NSScanner scannerWithString:self];
	
    while ([thescanner isAtEnd] == NO) {
		
        // find start of tag
        [thescanner scanUpToString:@"<" intoString:nil] ; 
		
        // find end of tag
        [thescanner scanUpToString:@">" intoString:&text] ;
		
        // replace the found tag with a space
        //(you can filter multi-spaces out later if you wish)
        htmlless = [htmlless stringByReplacingOccurrencesOfString:
				[ NSString stringWithFormat:@"%@>", text]
											   withString:@" "];
		
    } // while //
    
    return htmlless;	
}

- (NSString *)stringByRemovingOccurencesOfString:(NSString *)target {
	return [self stringByReplacingOccurrencesOfString:target withString:@""];
}
- (NSRange)range {
    return [self rangeOfString:self];
}

@end
