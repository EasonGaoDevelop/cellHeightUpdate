//
//  ViewController.m
//  cellHeightUpdate
//
//  Created by 高东 on 16/3/14.
//  Copyright © 2016年 高东. All rights reserved.
//

#import "ViewController.h"
#import "HTTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,HTTableViewCellDelegate>{
    float cellHeight;
    NSIndexPath *inxxxx;
}
@property (nonatomic, weak)IBOutlet UITableView * tableView;
@property (nonatomic, strong) NSMutableArray * listArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.listArray =[NSMutableArray arrayWithObjects:@"sss",@"sssss",@"dddddd", nil];
    [self.tableView registerNib:[UINib nibWithNibName:@"HTTableViewCell" bundle:nil] forCellReuseIdentifier:NSStringFromClass(self.class)];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma rmark -- TableViewDelegate && UITableViewDataSource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (inxxxx == indexPath) {
        return cellHeight;
    }
    return 50;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.listArray.count;

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HTTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(self.class)];
    cell.delegate =self;
    cell.lable.text =[self.listArray objectAtIndex:indexPath.row];
    return cell;
}
#pragma rmark -- HTTCellDelegate
-(void)clickCellBtn:(HTTableViewCell *)cell cellHeight:(float)height{
    cellHeight =height;
    
    NSInteger indexxx =[self.listArray indexOfObject:cell.lable.text];
    NSIndexPath *indexPath=[NSIndexPath indexPathForRow:indexxx inSection:0];
    inxxxx =indexPath;
//    [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    [self.tableView reloadData];
}

@end
