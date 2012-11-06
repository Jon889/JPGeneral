//
//  JPSubscripting.h
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2012 JBProjects. All rights reserved.
//

//support for subscripting when not compiling with iOS6 SDK
#ifndef ENABLE_SUBSCRIPTING_FOR_OLD_SDK
#define ENABLE_SUBSCRIPTING_FOR_OLD_SDK 0
#endif

#if ENABLE_SUBSCRIPTING_FOR_OLD_SDK == 1

@interface NSDictionary (JPSubscripting)
- (id)objectForKeyedSubscript:(id)key;
@end

@interface NSMutableDictionary (JPSubscripting)
- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key;
@end

@interface NSArray (JPSubscripting)

@end

@interface NSMutableArray (JPSubscripting)

@end

#endif