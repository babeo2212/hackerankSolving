 class VendingMachine:

# Implement the VendingMachine here

    def __init__(self, num_items, item_price):
        self.num_items = num_items
        self.item_price = item_price

    def buy(self, req_items, money):
        total_money_required = self.item_price * req_items
        if (self.num_items >= req_items) and (money >= total_money_required):
            self.num_items -= req_items
            return money - total_money_required
        elif self.num_items < req_items:
            raise ValueError("Not enough items in the machine")
        elif (self.num_items >= req_items) and (money < total_money_required):
            raise ValueError("not enough coins")

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    num_items, item_coins = map(int, input().split())

    machine = VendingMachine(num_items, item_coins)

    n = int(input())
    for _ in range(n):
        num_items, num_coins = map(int, input().split())
        try:
            change = machine.buy(num_items, num_coins)
            fptr.write(str(change) + "\n")
        except ValueError as e:
        fptr.write(str(e) + "\n")
    fptr.close()
