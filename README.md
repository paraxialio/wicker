# Basket

Source code for [Detecting SQL Injection in Phoenix with Sobelow](https://paraxial.io/blog/sql-injection). To setup the database:

```
mix run priv/repo/seeds.exs
```

Routes:

http://localhost:4000/basket_a?min_q=0

http://localhost:4000/basket_b?min_q=0 (fails)

http://localhost:4000/basket_c?min_q=0

http://localhost:4000/basket_d?min_q=0

http://localhost:4000/basket_e?min_q=0

Example attack to get the secret fruit:

http://localhost:4000/basket_e?min_q=0%20OR%201=1;%20--
