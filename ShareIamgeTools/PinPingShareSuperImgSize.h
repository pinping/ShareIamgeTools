//
//  PinPingShareSuperImgSize.h
//  ShareImageTools
//
//  Created by pinping on 14-1-13.
//  Copyright (c) 2014年 PinPing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShareHeader.h"


@interface PinPingShareSuperImgSize : NSObject
{
		NSImage	*ppImg;
}
@property (nonatomic, strong) NSImage *ppImg;


- (NSImage *)PinPingImgTools:(CGSize)ppImgSize;

@end
