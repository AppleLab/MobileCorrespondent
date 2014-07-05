//
//  NewsTable.m
//  MobCor
//
//  Created by Михаил on 03.07.14.
//  Copyright (c) 2014 kpfuitisios. All rights reserved.
//

#import "NewsTable.h"
#import "JustDescription.h"

@interface NewsTable (){
    NSMutableArray *image;
    NSMutableArray *author;
    NSMutableArray *text;
}

@end

@implementation NewsTable

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    text = [NSMutableArray arrayWithObjects: @"Ректоров ведущих университетов будет назначать не министерство, а независимые наблюдательные советы, состоящие из крупных бизнесменов и высокопоставленных чиновников. Об этом сообщил глава минобрнауки РФ Дмитрий Ливанов на встрече с членами наблюдательных советов российских вузов, участвующих в программе «5 в 100». Министерство, как пообещал Ливанов, согласится с предложенной ими кандидатурой «без обсуждений», пишет «Коммерсантъ». «Обычно вся полнота ответственности была на ректоре, мы решили изменить этот подход,— пояснил Ливанов.— Наблюдательные советы — это, по существу, органы стратегического управления вузами, аналог совета директоров в крупных компаниях. Туда пришли люди, которые имеют опыт решения масштабных задач». Напомним, программа «5 в 100» была создана в рамках выполнения указа президента Владимира Путина, согласно которому не менее 5 вузов РФ должны к 2020 году оказаться в Топ-100 одного из трех мировых образовательных рейтингов (сейчас лишь МГУ им. Ломоносова). Международный экспертный совет отобрал 15 вузов: МФТИ, МИФИ, МИСиС, Высшую школу экономики, Казанский федеральный университет, Дальневосточный федеральный университет и другие. Раз в два года из проекта планируется исключать 1 - 2 вуза. ",@"Джепсен посещала среднюю школу «Heritage Park» в Миссионе, провинции Британской Колумбия. Перед прослушиванием для Canadian Idol, она училась в колледже Исполнительских искусств в городе Виктория. После завершения турне «Canadian Idol tour», Джепсен вернулась домой, чтобы сфокусировать свое внимание на сочинении текстов песен и записи. Вскоре Джепсен подписала контракт с рекорд-лейблами Fontana и MapleMusic и начала работу с продюсером Райаном Стевард.",nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return text.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dict" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [text objectAtIndex:indexPath.row];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    JustDescription *an = [[JustDescription alloc] init];
    an = [segue destinationViewController];
    NSIndexPath *index = [self.tableView indexPathForSelectedRow];
    an.text = [text objectAtIndex:index.row];
}


@end
