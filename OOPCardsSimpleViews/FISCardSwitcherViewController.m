//  FISCardSwitcherViewController.m

#import "FISCardSwitcherViewController.h"

@interface FISCardSwitcherViewController ()

@property (weak, nonatomic) IBOutlet UILabel *topLeftLabel;
@property (weak, nonatomic) IBOutlet UILabel *middleLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomRightLabel;



@end

@implementation FISCardSwitcherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.threeOfSpades = [[FISCard alloc] initWithSuit:@"♠️"
                                                  rank:@"3"];
    self.fourOfClubs = [[FISCard alloc] initWithSuit:@"♣️"
                                                rank:@"4"];
    self.eightOfDiamonds = [[FISCard alloc] initWithSuit:@"♦️"
                                                    rank:@"8"];
    self.tenOfHearts = [[FISCard alloc] initWithSuit:@"♥️"
                                                rank:@"10"];
}

- (void)_updateLabelsForCard:(FISCard *)card
{
	self.topLeftLabel.text = card.cardLabel;
	self.middleLabel.text = card.cardLabel;
	self.bottomRightLabel.text = card.cardLabel;
}

- (IBAction)threeOfSpadesTapped:(id)sender
{
	[self _updateLabelsForCard:self.threeOfSpades];
}

- (IBAction)fourOfClubsTapped:(id)sender
{
	[self _updateLabelsForCard:self.fourOfClubs];
}

- (IBAction)eightOfDiamondsTapped:(id)sender
{
	[self _updateLabelsForCard:self.eightOfDiamonds];
}

- (IBAction)tenOfHeartsTapped:(id)sender
{
	[self _updateLabelsForCard:self.tenOfHearts];
}



@end
