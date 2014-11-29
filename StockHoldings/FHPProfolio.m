//
//  FHPProfolio.m
//  StockHoldings
//
//  Created by Cheuk Him Ho on 29/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "FHPProfolio.h"
#import "FHPStockHolding.h"

@implementation FHPProfolio

- (void)setHoldings:(FHPStockHolding *)holdings
{
	_holdings = [holdings mutableCopy];
}

- (NSArray *)holdings
{
	return [_holdings copy];
}

- (void)addHoldings:(FHPStockHolding *)stock
{
	if (!_holdings) {
		_holdings = [[NSMutableArray alloc]init];
	}
	[_holdings addObject:stock];
}

- (float)totalValue
{
	float sum = 0;
	for (FHPStockHolding *stock in _holdings) {
		sum += [stock valueInDollars];
	}
	return sum;
}
@end
