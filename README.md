#JPCategories
##NSString

 - `stringByFlatteningHTML` removes all HTML
 - `stringByRemovingOccurencesOfString:` short method for replacing occurrences of string with `@""`.
 - `range` get the range of the text, saves using `NSMakeRange`
 - Access to `length` and `range` through dot-syntax

##NSArray 

 - Access to `count` through dot-syntax

##UIColor 

 - Create a color with values from 0 to 255 without adding ugly division

#Functions

##Extra NSRange Functions

 - `NSRangeFullyContainsRange` returns YES if the second range's location is within the first range AND the second range's length doesn't extend past the first range's length, taking location of both ranges into account.

 - Other functions rename existing NSRange functions to put NSRange at the start eg `NSRangeMax` -> `NSMaxRange`

##Extra CGRect Functions

 - Most of these functions allow you to set components of a CGRect without using CGRectMake or using a temp frame.

- The last 3 are miscellaneous and are just there to avoid lots of less readable duplicate code

##JPDegToRad

 - 2 Functions to convert between degrees and radians

#JPLoginTable

 - Attempt at cloning Facebook login screen using UITableView, not neatly trimmed around the edges :)
