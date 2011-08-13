/* Part of JPGeneral repository, Jon889: https://github.com/Jon889/JPGeneral
 Copyright (c) 2011 Jonathan Bailey
 May be modified and used in any project as long as all comments, including this one, remain.*/
NS_INLINE BOOL NSRangeFullyContainsRange (NSRange container, NSRange containee) {
    if (containee.location < container.location || containee.location + containee.length > container.location + container.length) {
        return NO;
    } else {
        return YES;
    }
}

//Renaming function to match CG Function style, and put them all in one place
NS_INLINE NSUInteger NSRangeMax(NSRange range) {
    return NSMaxRange(range);
}
NS_INLINE BOOL NSRangeContainsLocation(NSUInteger loc, NSRange range) {
    return NSLocationInRange(loc, range);
}
NS_INLINE BOOL NSRangeEqualToRange(NSRange range1, NSRange range2) {
    return NSEqualRanges(range1, range2);
}
NS_INLINE BOOL NSRangeUnion(NSRange range1, NSRange range2) {
    return NSUnionRange(range1, range2);
}
NS_INLINE BOOL NSRangeIntersection(NSRange range1, NSRange range2) {
    return NSIntersectionRange(range1, range2);
}
