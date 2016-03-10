//
//  BottomMenuHelper.h
//  Custom_UIActionSheet
//
//  Created by DesenGuo on 2016-03-09.
//  Copyright © 2016 divecommunications. All rights reserved.
//
#import "CustomActionSheet.h"

#ifndef BottomMenuHelper_h
#define BottomMenuHelper_h


#endif /* BottomMenuHelper_h */

@interface BottomMenuHelper:NSObject<CustomActionSheetDataSource, CustomActionSheetDelegate>
+(BottomMenuHelper*)sharedInstance;
- (void)popShareMenuFromViewController:(UIViewController*) target;
@end