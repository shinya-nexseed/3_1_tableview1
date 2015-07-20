//
//  ViewController.m
//  3_1_tableview1
//
//  Created by Shinya Hirai on 2015/07/20.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController () {
    AppDelegate *_appDelegate; // 定義
    NSArray *_members;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    // Nab barのタイトルを変える
    self.title = @"iOS開発チーム";
    _members = @[@"Marina",@"Takuya",@"Tomo",@"Tetsuya",@"Yoshiro",@"Shinya"];
    
    _appDelegate = [[UIApplication sharedApplication] delegate]; // 初期化
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // なんでリターンがいるか？
    // メソッドの講義でやりました。
    // 返り値が必要
    // 行の数を返り値を使って示している
    // - (返り値)メソッド名 〈voidなら返り値なし。それ以外の型ならその型と同じデータの返り値が必要。〉
    // なので、returnが必要
    return _members.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // cell.textLabel.text = [NSString stringWithFormat:@"行=%ld", (long)indexPath.row];
    cell.textLabel.text = _members[indexPath.row]; // _members配列の中身を数字(indexPath.row)を使ってひとつずつ取り出し、cellに表示する
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // NSLog(@"indexPath.row = %ld", (long)indexPath.row);
    NSLog(@"indexPath.row = %d", (int)indexPath.row);
    
    // タップしたcellとリンクする配列の中身(名前)を取得
    NSLog(@"メンバーの名前 = %@", _members[indexPath.row]);
    _appDelegate.memberName = _members[indexPath.row]; // AppDelegateクラスのmemberNameプロパティに_members配列のindexPath.rowで指定した名前を代入
    NSLog(@"appDelegate.memberName = %@", _appDelegate.memberName);
    
    // 遷移した先にデータを送るには？
    // AppDelegate
    NSLog(@"appDelegate.iPath 1 = %d", _appDelegate.iPath); // 初期値の0が入っている
    _appDelegate.iPath = (int)indexPath.row;
    NSLog(@"appDelegate.iPath 2 = %d", _appDelegate.iPath); // 選択したセルのindexpath.rowが入る
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
