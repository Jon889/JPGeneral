//
//  NSString+JP.m
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 22/12/2010.
//  Copyright 2011 JBProjects. All rights reserved.
//
#import "NSString+JP.h"

#if __has_feature(objc_arc)
#error This file can't be compiled with ARC. Use -fno-objc-arc flag on this file in the Build Phases in the project settings
//NOTE: If using "Convert To Objective-C ARC" tool follow the instruction above (in the error) and comment out the error while using the conversion tool, then uncomment the error after the project has been converted. (the error preventing the tool from working is a bug)
#endif

@implementation NSString (JP)
@dynamic length;
+(NSString *)stringWithData:(NSData *)data encoding:(NSStringEncoding)encoding {
    return [[[NSString alloc] initWithData:data encoding:encoding] autorelease];
}

-(BOOL)isNotEmpty {
	return self.length != 0;
}
- (NSString *)stringByFlatteningHTML {
	
    NSScanner *thescanner;
    NSString *text = nil;
	NSString *htmlless = self;
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
- (NSString *)stringByRemovingOccurencesOfStrings:(NSString *)firstString, ... {
    NSString *result = self;
    
    va_list args;
    va_start(args, firstString);
    NSString * argString = firstString;
    while (argString != nil)
    {
        result = [result stringByRemovingOccurencesOfString:argString];
        
        argString = va_arg(args, NSString *);
    }
    
    va_end(args);
    return result;
}
- (NSString *)stringByRemovingOccurencesOfStringsInArray:(NSArray *)targets {
    NSString *result = self;
    for (NSString *target in targets) {
        result = [result stringByRemovingOccurencesOfString:target];
    }
    return result;
}
- (NSString *)stringByRemovingOccurencesOfString:(NSString *)target {
	return [self stringByReplacingOccurrencesOfString:target withString:@""];
}
- (NSRange)range {
    return [self rangeOfString:self];
}
-(NSString *)stringByDecodingBase64UsingEncoding:(NSStringEncoding)encoding {
    const char* base64 = [self cStringUsingEncoding:encoding];
    
    
    size_t stringLength = strlen(base64);
    char* chars = malloc(stringLength * sizeof(char));
    char* pointer = chars;
    strcpy(chars, base64);
    const char* base64Index = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    int offset = (int)strchr(base64Index, 'A');
    
    char *newChars = malloc((stringLength * 6)/8);
    int numberOfNewChars = 0;
    int charShiftedTimes = 0;
    int index;
    for (int characterBit = 0; characterBit < stringLength * 8; characterBit++) {
        int count = characterBit % 8;
        if (count == 1) {
            index = (int)strchr(base64Index, *chars) - offset;
            chars++;
        }
        if (count != 0 && count != 1) {
            newChars[numberOfNewChars] = newChars[numberOfNewChars] | ((index >> (7-count))&1);
            if (charShiftedTimes == 7) {
                numberOfNewChars++;
                newChars[numberOfNewChars] = 0;
                charShiftedTimes = 0;
            } else {
                newChars[numberOfNewChars] <<= 1;
                charShiftedTimes++;  
            }
        }    
    }
    
    
    NSString *returnString = [[NSString alloc] initWithCString:newChars encoding:encoding];
    free(pointer);
    free(newChars);
    return [returnString autorelease];
}
- (NSString *)substringToString:(NSString *)substring includeSubstring:(BOOL)include {
	NSRange substrRange = [self rangeOfString:substring];
	if (substrRange.location == NSNotFound) {
		substrRange = NSMakeRange(0, 0);
	}
	return [self substringToIndex:substrRange.location + (bool)include * substrRange.length];
}
- (BOOL)containsString:(NSString *)substring {
	return [self rangeOfString:substring].location != NSNotFound;
}

@end
