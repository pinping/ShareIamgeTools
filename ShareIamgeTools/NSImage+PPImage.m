//
//  NSImage+PPImage.m
//  ShareImageTools
//
//  Created by pinping on 14-1-13.
//  Copyright (c) 2014年 PinPing. All rights reserved.
//

#import "NSImage+PPImage.h"

@implementation NSImage (PPImage)


-(NSImage *)PPImgScaleToSize:(CGSize)size
{
		
		[self setScalesWhenResized:YES];
		[self setSize:size];
		NSImage *targetImage = [[NSImage alloc] initWithSize:size];
		[targetImage lockFocus];
//		//fill target bg picture,using white color
//		[[NSColor whiteColor] set];
		NSRectFill(NSMakeRect(0,0, size.width, size.height));
		//draw
		[self drawAtPoint:NSMakePoint(0,0) fromRect:NSMakeRect(0,0, size.width, size.height) operation:NSCompositeSourceIn fraction:1.0];
		[targetImage unlockFocus];
		return targetImage;
}

@end
