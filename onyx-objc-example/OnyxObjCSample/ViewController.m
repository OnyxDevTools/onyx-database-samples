//
//  ViewController.m
//  OnyxObjCSample
//
//  Created by Osborn, Tim on 10/20/15.
//  Copyright (c) 2015 Onyx Development Tools. All rights reserved.
//


#import "ViewController.h"
#import "SWGPersistenceManagerApi.h"
#import "Person.h"
#import "SWGQueryResultResponseBody.h"#import "SWGQuery.h"
#import "SVProgressHUD.h"

@interface ViewController ()

@property (nonatomic, strong) SWGPersistenceManagerApi* persistenceManager;
@property (nonatomic, strong) Person* lastSavedPerson;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    // Get the configuration and set the credentials
    SWGConfiguration *config = [SWGConfiguration sharedConfig];

    // Create a persistence manager with credentials
    self.persistenceManager = [SWGPersistenceManagerApi apiWithHeader:[config getBasicAuthToken] key:@"Authorization"];

}

/**
 * IBAction for saving a person.  This will create a save request with a new
 */
- (IBAction) savePerson:(id)sender
{
    // Create a new Person
    Person *person = [Person new];
    [person setFirstName:@"Bob"];
    [person setLastName:@"Sanchez"];

    // Create Save Request
    SWGEntityRequestBody *request = [SWGEntityRequestBody new];

    // Set entity and entity type.  Both are required
    [request setEntity:person];
    [request setType:@"entities.Person"];

    // Execute Save
    [self.persistenceManager saveEntityPostWithCompletionBlock:request completionHandler:^(NSObject *output, NSError *error) {
        self.lastSavedPerson = [[Person alloc] initWithData:output error:nil];
        [SVProgressHUD showSuccessWithStatus:[NSString stringWithFormat:@"Done saving person %@ %@ with ID %@", self.lastSavedPerson.firstName, self.lastSavedPerson.lastName, self.lastSavedPerson.personId]];
    }];

}

/**
 * IBAction for tapping the find person button.  This will create a find request and execute it
 */

- (IBAction) findPerson:(id)sender
{
    // Create Find Request
    SWGEntityFindRequestBody *findRequest = [SWGEntityFindRequestBody new];

    // Set the persons' Primary Key
    [findRequest set_id:[[self.lastSavedPerson personId] stringValue]];

    // Set type of entity to fetch
    [findRequest setType:@"entities.Person"];

    // Set Partition ID  Blank if not specified
    [findRequest setPartitionId:@""];

    // Execute Find
    [self.persistenceManager findPostWithCompletionBlock:findRequest completionHandler:^(NSObject *output, NSError *error) {
        self.lastSavedPerson = [[Person alloc] initWithData:output error:nil];
        [SVProgressHUD showSuccessWithStatus:[NSString stringWithFormat:@"Done saving person %@ %@ with ID %@", self.lastSavedPerson.firstName, self.lastSavedPerson.lastName, self.lastSavedPerson.personId]];
    }];
}

/**
 * IBAction for tapping the query person button.  This will create a query and execute it using the Onyx Web Database API
 */
- (IBAction) queryPerson:(id)sender
{
    // Define Request
    SWGEntityQueryBody *queryRequest = [SWGEntityQueryBody new];

    // Create Query
    SWGQuery *query = [SWGQuery new];
    [queryRequest setQuery:query];

    // Define query entity type
    [query setEntityType:@"entities.Person"];

    // Define Query Criteria
    SWGQueryCriteria *criteria = [SWGQueryCriteria new];
    [criteria setAttribute:@"firstName"];
    [criteria setOperator:@"EQUAL"];
    [criteria setStringValue:@"Bob"];
    [criteria setType:@"STRING"];

    [query setCriteria:criteria];

    // Execute Query with completion block
    [self.persistenceManager executePostWithCompletionBlock:queryRequest completionHandler:^(NSObject *output, NSError *error) {
        SWGQueryResultResponseBody *queryRes = [[SWGQueryResultResponseBody alloc] initWithData:output error:nil];
        [SVProgressHUD showInfoWithStatus:[NSString stringWithFormat:@"Fetched %@ Persons", queryRes.maxResults]];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end