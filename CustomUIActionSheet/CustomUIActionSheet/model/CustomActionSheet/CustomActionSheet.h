//
//  CustomActionSheet.h
//  CustomActionSheetDemo
//
//

@class CustomActionSheet;

@protocol CustomActionSheetDataSource <NSObject>
@required

- (UITableViewCell *)popoverListView:(CustomActionSheet *)popoverListView
                    cellForIndexPath:(NSIndexPath *)indexPath;

- (NSInteger)popoverListView:(CustomActionSheet *)popoverListView
       numberOfRowsInSection:(NSInteger)section;

@end

@protocol CustomActionSheetDelegate <NSObject>
@optional

- (void)popoverListView:(CustomActionSheet *)popoverListView
     didSelectIndexPath:(NSIndexPath *)indexPath;

- (void)popoverListViewCancel:(CustomActionSheet *)popoverListView;

- (CGFloat)popoverListView:(CustomActionSheet *)popoverListView
   heightForRowAtIndexPath:(NSIndexPath *)indexPath;

@end


@interface CustomActionSheet : UIView <UITableViewDataSource, UITableViewDelegate>
{
    UITableView *_listView;
    UILabel     *_titleView;
    UIControl   *_overlayView;
}

@property (nonatomic, assign) id<CustomActionSheetDataSource> datasource;
@property (nonatomic, assign) id<CustomActionSheetDelegate>   delegate;

@property (nonatomic, retain) UITableView *listView;

- (void)setTitle:(NSString *)title;

- (void)show;
- (void)dismiss;

@end
