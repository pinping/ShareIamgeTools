//
//  PinPingAppDelegate.m
//  ShareIamgeTools
//
//  Created by pinping on 14-1-11.
//  Copyright (c) 2014年 PinPing. All rights reserved.
//

#import "PinPingAppDelegate.h"

@implementation PinPingAppDelegate



-(void)ppFileCreate:(NSString *)aStr
{
		NSFileManager   *fman = [NSFileManager defaultManager];
		[fman createDirectoryAtPath:aStr withIntermediateDirectories:YES attributes:nil error:nil];
}



-(NSString *)ppimageTools:(NSString *)aStr
{
		NSString *str = [NSString stringWithFormat:@"/Users/%@/Desktop/ShareImg/%d-%@", NSUserName(),number,aStr];
		NSLog(@"str%@",str);
		[self ppFileCreate:str];
		number++;
		return str;
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
		
		
		
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
    
    return YES;
}




-(IBAction)imageToolsSelector:(id)sender
{
		
		number = 1;
		
		NSString *str = [NSString stringWithFormat:@"/Users/%@/Desktop/ShareImg", NSUserName()];
		[self ppFileCreate:str];
		
		ppShareImgSize = [[PinPingShareSuperImgSize alloc] init];
		ppShareImgSize.ppImg = ppivIcon.image;
		NSString *earth = [[NSBundle mainBundle] pathForResource:@"share" ofType:@"plist"];
		NSArray *iconDict = [[NSArray alloc] initWithContentsOfFile:earth];
		for (NSDictionary *tempDict in iconDict) {
				NSString *tempImgStr = [self ppimageTools:[tempDict objectForKey:@"name"]];
				NSArray *tempArray = [[NSArray alloc] initWithArray:[tempDict objectForKey:@"size"]];
				for (int i=0; i<tempArray.count; i++) {
						
						
						dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
								
								
								dispatch_async(dispatch_get_main_queue(), ^{
										// 更新界面
										// 再设置后面要用到得 props属性
										NSString *tempStr = [tempArray objectAtIndex:i];
										NSImage  *tempImg = [ppShareImgSize PinPingImgTools:CGSizeMake(tempStr.intValue, tempStr.intValue)];
										NSDictionary *imageProps = [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:0] forKey:NSImageCompressionFactor];
										NSBitmapImageRep *srcImageRep = [NSBitmapImageRep imageRepWithData:[tempImg TIFFRepresentation]];
										NSData *tempdata = [srcImageRep representationUsingType:NSJPEGFileType properties:imageProps];
										
										[tempdata writeToFile:[[NSString stringWithFormat:@"%@/%@.jpg",tempImgStr,tempStr] stringByExpandingTildeInPath] atomically:YES];    //保存的文件路径一定要是绝对路径，相对路径不行
								});  
						});  

//						NSLog(@"tempdata %@", tempdata);
				}
		}
}

@end
