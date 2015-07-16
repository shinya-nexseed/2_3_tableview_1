//
//  ViewController.m
//  2_3_tableview_1
//
//  Created by Shinya Hirai on 2015/07/15.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *_ary;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    _ary = @[@"Marina",@"Takuya",@"Tomo",@"Tetsuya",@"Yoshiro",@"Shinya"];
    
}

#pragma mark - Table View
// テーブルの行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _ary.count;
}

//行に表示するデータ
// for (int i = 0; i < 20; i++ )
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = _ary[indexPath.row];
    
    NSLog(@"<%ld>",(long)indexPath.row);
    // indexPath.section;
    
    return cell;
}

#pragma mark - others
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
