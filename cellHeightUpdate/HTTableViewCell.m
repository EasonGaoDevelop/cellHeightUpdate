//
//  HTTableViewCell.m
//  cellHeightUpdate
//
//  Created by 高东 on 16/3/14.
//  Copyright © 2016年 高东. All rights reserved.
//

#import "HTTableViewCell.h"

@implementation HTTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
}

-(IBAction)clickBtn:(id)sender{
    UIButton * btn =(UIButton *)sender;
    btn.selected = !btn.selected;
    if(btn.selected){
        [self.delegate clickCellBtn:self cellHeight:100 ];

    }else{
        [self.delegate clickCellBtn:self cellHeight:50 ];

    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
