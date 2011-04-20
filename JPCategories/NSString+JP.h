
@interface NSString (JP)
- (NSString *)stringByFlatteningHTML;
- (NSString *)stringByRemovingOccurencesOfString:(NSString *)target;
- (NSRange)range;

@property (readonly) NSUInteger length;
@property (readonly) NSRange range;
@end

