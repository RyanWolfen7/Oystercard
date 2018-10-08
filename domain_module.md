Object     |     Action
---------     ----------
Customer   |
Card       |    balance

Money <--> Card ---> Customer



Object     |     Action
---------     ----------
Customer   |
Card       |    add_Money

add_Money --> Card ---> balance

Object     |     Action
---------     ----------
card       | max_limit

card --> max_limit
