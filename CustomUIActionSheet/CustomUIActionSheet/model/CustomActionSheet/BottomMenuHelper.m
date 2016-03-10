//
//  BottomMenuHelper.m
//  Custom_UIActionSheet
//
//  Created by DesenGuo on 2016-03-09.
//  Copyright © 2016 divecommunications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottomMenuHelper.h"
static BottomMenuHelper *_sharedInstance;

@implementation BottomMenuHelper
+ (instancetype)sharedInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [BottomMenuHelper new];
    });
    return _sharedInstance;
}
- (void)popShareMenuFromViewController:(UIViewController*) target
{
    CGFloat xWidth = target.view.bounds.size.width - 20.0f;
    CGFloat yHeight = 300.0f;
    CGFloat yOffset = (target.view.bounds.size.height - yHeight)/2.0f;
    CustomActionSheet *poplistview = [[CustomActionSheet alloc] initWithFrame:CGRectMake(10, yOffset, xWidth, yHeight)];
    poplistview.delegate = self;
    poplistview.datasource = self;
    poplistview.listView.scrollEnabled = FALSE;
    [poplistview setTitle:@"Share to"];
    [poplistview show];
}

#pragma mark - UIPopoverListViewDataSource

#pragma mark - UIPopoverListViewDataSource

- (UITableViewCell *)popoverListView:(CustomActionSheet *)popoverListView
                    cellForIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                   reuseIdentifier:identifier];
    
    int row = indexPath.row;
    switch (row) {
        case 0:
            cell.textLabel.text = @"Youtube";
            cell.imageView.image = [UIImage imageNamed:@"youtube.png"];
            break;
        case 1:
            cell.textLabel.text = @"Instagram";
            cell.imageView.image = [UIImage imageNamed:@"instagram.png"];
            break;
        case 2:
            cell.textLabel.text = @"Facebook";
            cell.imageView.image = [UIImage imageNamed:@"facebook.png"];
            break;
        case 3:
            cell.textLabel.text = @"Twitter";
            cell.imageView.image = [UIImage imageNamed:@"twitter.png"];
            break;
        case 4:
            cell.textLabel.text = @"Camera Roll";
            cell.imageView.image = [UIImage imageNamed:@"cameraroll.png"];
            break;
        case 5:
        default:
            break;
            
    }
    
    return cell;
}

- (NSInteger)popoverListView:(CustomActionSheet *)popoverListView
       numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

#pragma mark - UIPopoverListViewDelegate
- (void)popoverListView:(CustomActionSheet *)popoverListView
     didSelectIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s : %ld", __func__, (long)indexPath.row);
    // your code here
}

- (CGFloat)popoverListView:(CustomActionSheet *)popoverListView
   heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.0f;
}


@end