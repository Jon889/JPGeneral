/* Part of JPGeneral repository, Jon889: https://github.com/Jon889/JPGeneral
 Copyright (c) 2011 Jonathan Bailey
 May be modified and used in any project as long as all comments, including this one, remain.*/
CG_INLINE CGRect
CGRectSetSize(CGRect rect, CGFloat width, CGFloat height)
{
	rect.size.width = width; rect.size.height = height;
	return rect;
}
CG_INLINE CGRect
CGRectSetOrigin(CGRect rect, CGFloat x, CGFloat y)
{
	rect.origin.x = x; rect.origin.y = y;
	return rect;
}
CG_INLINE CGRect
CGRectSizeAdjust(CGRect rect, CGFloat iwidth, CGFloat iheight)
{
	rect.size.width += iwidth; rect.size.height += iheight;
	return rect;
}

CG_INLINE CGRect
CGRectSetWidth(CGRect rect, CGFloat width)
{
	rect.size.width = width;
	return rect;
}
CG_INLINE CGRect
CGRectSetHeight(CGRect rect, CGFloat height)
{
	rect.size.height = height;
	return rect;
}
CG_INLINE CGRect
CGRectSetX(CGRect rect, CGFloat x)
{
	rect.origin.x = x; 
	return rect;
}
CG_INLINE CGRect
CGRectSetY(CGRect rect, CGFloat y)
{
	rect.origin.y = y;
	return rect;
}

CG_INLINE CGRect
CGRectMathRounded(CGRect rect)
{
	rect.origin.x = roundf(rect.origin.x);
	rect.origin.y = roundf(rect.origin.y);
	rect.size.width = roundf(rect.size.width);
	rect.size.height = roundf(rect.size.height);
	return rect;
}
CG_INLINE CGRect
CGRectMakeForSizeAroundCenter(CGSize size, CGPoint center)
{
	CGRect rect;
	rect.size.width = size.width;
	rect.size.height = size.height;
	rect.origin.x = center.x - (size.width / 2);
	rect.origin.y = center.y - (size.height / 2);
	return rect;
}
CG_INLINE CGRect
CGRectSetWidthKeepRightFixed(CGRect rect, CGFloat width) 
{
	rect.origin.x = (rect.origin.x + rect.size.width) - width;
	rect.size.width = width;
	return rect;
}
