
@interface NSString (JP)
- (NSString *)stringByFlatteningHTML;
- (NSString *)stringByRemovingOccurencesOfString:(NSString *)target;
- (NSString *)stringByRemovingOccurencesOfStringsInArray:(NSArray *)targets;
- (NSString *)stringByRemovingOccurencesOfStrings:(NSString *)firstString, ... NS_REQUIRES_NIL_TERMINATION;
- (NSString *)stringByDecodingBase64UsingEncoding:(NSStringEncoding)encoding;
- (NSRange)range;
+ (NSString *)stringWithData:(NSData *)data encoding:(NSStringEncoding)encoding;
@property (readonly) NSUInteger length;
@property (readonly) NSRange range;
@end

