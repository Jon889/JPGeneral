Includes functions that make working with CGRects easier.

eg assuming you have `CGRect myRect` already setup

you can replace:
`myRect = CGRectMake(myRect.origin.x + 20, myRect.origin.y, myRect.size.width, myRect.size.height);`

with:

`myRect = CGRectSetX(myRect.origin.x + 20);`

#Coming Up
UIColor category extension
CGRect adjust functions