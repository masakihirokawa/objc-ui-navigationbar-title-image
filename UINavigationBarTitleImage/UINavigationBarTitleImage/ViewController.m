//
//  ViewController.m
//  UINavigationBarTitleImage
//
//  Created by 廣川政樹 on 2013/05/22.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self initNavigationBar];
}

//ナビゲーションバー初期化
- (void)initNavigationBar
{
    //ナビゲーションバーの設定
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    [navigationBar sizeToFit];
    
    //ナビゲーションバーの背景画像を指定
    UIImage *backgroundImage = [UIImage imageNamed:@"navigationbar_background.png"];
    [navigationBar setBackgroundImage:backgroundImage forBarMetrics:UIBarMetricsDefault];
    
    //ナビゲーションアイテム定義
    UINavigationItem *navigationItem = [[UINavigationItem alloc] init];
    
    //タイトル画像設定
    UIImageView *navigationTitle = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"navigationbar_title.png"]];
    navigationTitle.frame = CGRectMake(0, 0, 320, 44);
    navigationItem.titleView = navigationTitle;
    
    //ナビゲーションバーにアイテムを追加する
    [navigationBar pushNavigationItem:navigationItem animated:YES];
    
    //ナビゲーションバーを画面の最前面に追加する
    [self.view addSubview:navigationBar];
}

@end
