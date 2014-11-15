//
//  CustomTableViewController.m
//  tableview
//
//  Created by Parimala Gollapudi on 11/14/14.
//  Copyright (c) 2014 Parimala Gollapudi. All rights reserved.
//

#import "CustomTableViewController.h"
#import "AnimalArrayList.h"

@interface CustomTableViewController ()
{
AnimalArrayList * anim;
}

@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     anim = [[AnimalArrayList alloc] initWithAnimalDictionary];
    
    
     
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
//    if (section == 0){
//        return ;
//        
//    }
//    else if (section == 1){
//        return 1;
//    }
//    else{
//        return 3;
//    }

    return [anim.animalArray count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIndentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier forIndexPath:indexPath];
    
    // Configure the cell...
//    if (indexPath.section == 0){
    NSDictionary *dictData = anim.animalArray[indexPath.row];
    cell.textLabel.text = [dictData objectForKey:NAME];
        cell.backgroundColor = [UIColor redColor];
    
//    }
//    else if (indexPath.section == 1){
//        cell.textLabel.text = @"row in Section2";
//        cell.backgroundColor = [UIColor grayColor];
//
//    }
//    else{
//        cell.textLabel.text = @"row in Section3";
//        cell.backgroundColor = [UIColor greenColor];
//
//    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
