//
//  ViewController.m
//  Moments
//
//  Created by chenxin on 14-10-16.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import "ViewController.h"

#import "CommentModel.h"
#import "MomentTableViewCell.h"
#import "MomentModel.h"

@interface ViewController ()

@end

@implementation ViewController {

    
    __weak IBOutlet UITableView *_tableView;
    NSArray *_moments;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerNib:[UINib nibWithNibName:@"MomentTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"MomentCell"];
    
    [self loadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _moments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MomentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MomentCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    MomentModel *moment = _moments[indexPath.row];
    [cell setMomentModel:moment];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    MomentModel *moment = _moments[indexPath.row];
    return [MomentTableViewCell cellHeightWithMomentModel:moment];
}

// 测试数据

- (void)loadData {
    NSMutableArray *images=[NSMutableArray array];
    [images addObject:@"http://www.tattoo77.com/uploads/allimg/121217/1-12121G43453108.jpg"];
    [images addObject:@"http://img.photo.163.com/QNaHBfv9UpKOpSV5iT8ihQ==/2538622814953414148.jpg"];
    [images addObject:@"http://images.china.cn/attachement/jpg/site1000/20121231/0019b91ec8e5124b2eb04d.jpg"];
    [images addObject:@"http://www.txlz.net/Photo/UploadPhotos/201001/2010010520175322.jpg"];
    [images addObject:@"http://img.bimg.126.net/photo/3oGY66A0fG2j_wj7CT1rXQ==/1146729055119642782.jpg"];
    [images addObject:@"http://www.hua.com/flower_picture/meiguihua/images/r17.jpg"];
    [images addObject:@"http://pic.jj20.com/up/allimg/411/042511033A2/110425033A2-9.jpg"];
    [images addObject:@"http://www.mjjq.com/blog/photos/Image/mjjq-photos-903.jpg"];
    [images addObject:@"http://www.feizl.com/upload2007/2013_02/130227014423722.jpg"];
    [images addObject:@"http://www.feizl.com/upload2007/2013_02/130227014423723.jpg"];
    [images addObject:@"http://www.feizl.com/upload2007/2013_02/130227014423721.jpg"];
    [images addObject:@"http://www.feizl.com/upload2007/2013_02/130227014423722.jpg"];
    [images addObject:@"http://www.feizl.com/upload2007/2013_02/130227014423725.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/231/KJQIZSVQ013Q.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/231/50F271716EQV.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/231/QK2902POS179.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/231/63K864T17E2J.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/231/GP214390RG3V.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/231/L7M86I8303J3.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/231/Y86BKHJ2E2UH.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/228/6J24DA72I68Q.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/228/6BLP0Y3V9X3A.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/228/AXCO5HYK7OX0.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/228/B42FNUVDT7CS.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/228/1OEU52FTY56T.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/228/8L1N4G79RA65.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/228/0JM239P58O4O.jpg"];
    [images addObject:@"http://image.tianjimedia.com/uploadImages/2013/228/KT0X2XI3X9Z9.jpg"];
    
    NSMutableArray *contents=[[NSMutableArray alloc]init];
    [contents addObject:@"ASIHTTPRequest对CFNetwork API进行了封装，并且使用起来非常简单，用Objective-C编写，可以很好的应用在Mac OS X系统和iOS平台的应用程序中。ASIHTTPRequest适用于基本的HTTP请求，和基于REST的服务之间的交互"];
    [contents addObject:@"15267971211本周末，中东部大部地区天气仍是晴多雨少，不过这种维持了一个多星期的天气格局即将被打破。"];
    [contents addObject:@"http://www.weqia.com  15267971211[难过][冷汗][大哭]预计4日夜间开始，较强冷空气将从新疆启程，一路东移南下，给中东部地区带来明显降温及大范围的雨雪天气，北京、河北、山西、陕西等地将终结持续两个月左右的干燥无雨天气，北京有望迎来今冬初雪。"];
    [contents addObject:@"预计4日夜间到5日，较强冷空气将对西北地区发威，气温普遍下降6～8℃，部分地区降温可达10～12℃；新疆北部、内蒙古西部等地有4～6级风，其中山口地区风力可达8～9级；新疆北部有小到中雪，伊犁河谷的部分地区有大雪。6日至8日，西北地区东部、华北、东北地区东部等地将陆续出现小到中雪或雨夹雪，局地大雪。1月6日，北京地区或迎来今冬初雪；上述地区并伴有6～10℃的降温，局地降温幅度可达12～14℃。"];
    [contents addObject:@"6日至8日，西北地区东部、华北、东北地区东部等地将陆续出现小到中雪或雨夹雪，局地大雪。1月6日，北京地区或迎来今冬初雪；上述地区并伴有6～10℃的降温，局地降温幅度可达12～14℃。"];
    [contents addObject:@"http://www.weqia.com[难过][冷汗][大哭]"];
    [contents addObject:@"http://www.weqia.com  15267971211电视连续剧《甄嬛传》从2011年11月首播到现在，两年多时间过去，重播复重播，收视率依然高企。随着它“闯美入韩又登日”，新一轮关注也风生水起。这种现象很值得研究。"];
    [contents addObject:@"http://www.weqia.com  15267971211《甄嬛传》走红，很大程度上是以思想的穿透力赢得了生命力，进而提升了影响力。"];
    
    
    // 评论信息
    CommentModel *comment1 = [[CommentModel alloc] initWithName:@"称心" text:@"在页面开始执行的时候记录一个变量，在页面执行的时候再记录一个变量，结束时间变量减去开始时"];
    CommentModel *comment2 = [[CommentModel alloc] initWithName:@"123" text:@"我说的答案错误，修复了。这个修改功能，我测试了，是可以的呢"];
    CommentModel *comment3 = [[CommentModel alloc] initWithName:@"超新星" text:@"A类IP地址的子网掩码为255.0.0.0，每个网络支持的最大主机数为2的24次方-2=16777214台。B类IP地255.0.0"];
    CommentModel *comment4 = [[CommentModel alloc] initWithName:@"测试" text:@"所以大家要一起敌视IE7，没人去兼容它自然就淘汰了，哈哈"];
    
    NSMutableArray *moments = [NSMutableArray array];
    
    for (int i = 0; i < 8; i++) {
        [moments addObject:[[MomentModel alloc] initWithName:@"212222"
                                                      avatar:@"people@2x.png"
                                                        text:contents[i]
                                                       image:nil
                                                  imageWidth:0
                                                 imageHeight:0
                                                    comments:@[comment3, comment1]
                            ]];
        [moments addObject:[[MomentModel alloc] initWithName:@"称心"
                                                      avatar:@"people@2x.png"
                                                        text:contents[7-i]
                                                       image:images[16-i]
                                                  imageWidth:250
                                                 imageHeight:200
                                                    comments:@[comment2, comment4]
                            ]];
        [moments addObject:[[MomentModel alloc] initWithName:@"测试账号"
                                                      avatar:@"people@2x.png"
                                                        text:nil
                                                       image:images[images.count-i*2-1]
                                                  imageWidth:250
                                                 imageHeight:200
                                                    comments:@[comment2, comment4]
                            ]];
        
    }
    
    _moments = moments;
}

@end
