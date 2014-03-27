//
//  PinPingShareSuperImgSize.m
//  ShareImageTools
//
//  Created by pinping on 14-1-13.
//  Copyright (c) 2014年 PinPing. All rights reserved.
//

#import "PinPingShareSuperImgSize.h"

@implementation PinPingShareSuperImgSize

@synthesize ppImg;


-(NSImage *)PinPingImgTools:(CGSize)ppImgSize
{
		
		NSImage *tempImg = [ppImg PPImgScaleToSize:ppImgSize];
		return tempImg;
}

@end
