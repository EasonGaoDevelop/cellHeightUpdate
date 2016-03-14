//
//  HTTableViewCell.h
//  cellHeightUpdate
//
//  Created by 高东 on 16/3/14.
//  Copyright © 2016年 高东. All rights reserved.
//

#import <UIKit/UIKit.h>
@class  HTTableViewCell;
@protocol HTTableViewCellDelegate <NSObject>

- (void)clickCellBtn:(HTTableViewCell*)cell  cellHeight:(float)height ;

@end
@interface HTTableViewCell : UITableViewCell
@property (nonatomic, weak) id<HTTableViewCellDelegate> delegate;

@property (nonatomic, strong)IBOutlet UILabel * lable;
@property (nonatomic, strong)IBOutlet UIButton * button;
-(IBAction)clickBtn:(id)sender;
@end
