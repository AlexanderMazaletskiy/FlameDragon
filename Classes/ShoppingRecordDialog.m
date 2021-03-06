//
//  ShoppingRecordDialog.m
//  FlameDragon
//
//  Created by sui toney on 12-5-29.
//  Copyright 2012 ms. All rights reserved.
//

#import "ShoppingRecordDialog.h"
#import "GameRecord.h"
#import "FDLocalString.h"
#import "FDWindow.h"

@implementation ShoppingRecordDialog


-(id) init
{
	self = [super init];
	
	// Load the Game Records
	GameRecord *record = [GameRecord readFromSavedFile];
	for (int index = 0; index < 4; index ++) {
		ChapterRecord *cRecord = [record getChapterRecord:index];
		NSString *chapterName = [FDLocalString chapterTitle:[cRecord chapterId]];
		[self addLabel:chapterName Location:[FDWindow chapterRecordShowLocation:index]];
	}
		
	return self;
}

-(void) onClicked
{
	id returnedObject = [NSNumber numberWithInt:1];
	[self onConfirmedExit:returnedObject];
}




@end
