/* Part of JPGeneral repository, Jon889: https://github.com/Jon889/JPGeneral
 Copyright (c) 2011 Jonathan Bailey
 May be modified and used in any project as long this comment remains.*/

CG_INLINE CGRect
CGRectSetSize(CGRect rect, CGFloat width, CGFloat height)
{
	rect.size.width = width;
	rect.size.height = height;
	return rect;
}
CG_INLINE CGRect
CGRectSetOrigin(CGRect rect, CGFloat x, CGFloat y)
{
	rect.origin.x = x;
	rect.origin.y = y;
	return rect;
}
CG_INLINE CGRect
CGRectAdjustSize(CGRect rect, CGFloat awidth, CGFloat aheight)
{
	rect.size.width += awidth;
	rect.size.height += aheight;
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

CGRectAdjustWidth(CGRect rect, CGFloat awidth)
{
	rect.size.width += awidth;
	return rect;
}
CG_INLINE CGRect
CGRectAdjustHeight(CGRect rect, CGFloat aheight)
{
	rect.size.height += aheight;
	return rect;
}
CG_INLINE CGRect
CGRectOffsetX(CGRect rect, CGFloat dx)
{
	rect.origin.x += dx; 
	return rect;
}
CG_INLINE CGRect
CGRectOffsetY(CGRect rect, CGFloat dy)
{
	rect.origin.y += dy;
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
