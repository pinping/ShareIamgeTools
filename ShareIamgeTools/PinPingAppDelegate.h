//
//  PinPingAppDelegate.h
//  ShareIamgeTools
//
//  Created by pinping on 14-1-11.
//  Copyright (c) 2014年 PinPing. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "PinPingShareSuperImgSize.h"

@interface PinPingAppDelegate : NSObject <NSApplicationDelegate>
{
		
		PinPingShareSuperImgSize		*ppShareImgSize;
		
		IBOutlet NSImageView *ppivIcon;
		IBOutlet NSButton		*ppbShare01;//微信
		IBOutlet NSButton		*ppbShare02;//豆瓣
		IBOutlet NSButton		*ppbShare03;//易信
		IBOutlet NSButton		*ppbShare04;//开心网
		IBOutlet NSButton		*ppbShare05;//人人网
		IBOutlet NSButton		*ppbShare06;//QQ好友
		IBOutlet NSButton		*ppbShare07;//QQ空间
		IBOutlet NSButton		*ppbShare08;//新浪微博
		IBOutlet NSButton		*ppbShare09;//网易微博
		IBOutlet NSButton		*ppbShare10;//腾讯微博
		IBOutlet NSButton		*ppbShare11;//搜狐微博
		IBOutlet NSButton		*ppbShare12;//印象笔记
		IBOutlet NSButton		*ppbShare13;//有道云笔记
		IBOutlet NSButton		*ppbShare14;//twitter
		IBOutlet NSButton		*ppbShare15;//facebook
		IBOutlet NSButton		*ppbShare16;//Pocket
		IBOutlet NSButton		*ppbShare17;//linkedIn
		IBOutlet NSButton		*ppbShare18;//Instapaper
		IBOutlet NSButton		*ppbShare19;//Google+
		IBOutlet NSButton		*ppbShare20;//Pinterest
		IBOutlet NSButton		*ppbTools;
		
		int   number;
}

@property (assign) IBOutlet NSWindow *window;

@end
