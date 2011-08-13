
@interface NSString (JP)
- (NSString *)stringByFlatteningHTML;
- (NSString *)stringByRemovingOccurencesOfString:(NSString *)target;
- (NSString *)stringByRemovingOccurencesOfStringsInArray:(NSArray *)targets;
- (NSString *)stringByRemovingOccurencesOfStrings:(NSString *)firstString, ... NS_REQUIRES_NIL_TERMINATION;
- (NSString *)stringByDecodingBase64UsingEncoding:(NSStringEncoding)encoding;
- (NSRange)range;
@property (readonly) NSUInteger length;
@property (readonly) NSRange range;
@end

