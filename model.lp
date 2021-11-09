\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0.5 x[0] + 3.5 x[1] + x[2] + 1.5 x[3] + 4.5 x[4] + 2 x[5] + 1.5 x[6]
   + 4 x[7]
Subject To
 vegetables_constrain: x[7] >= 2
 maximum_servings[0]: x[0] <= 2
 maximum_servings[1]: x[1] <= 2
 maximum_servings[2]: x[2] <= 2
 maximum_servings[3]: x[3] <= 1
 maximum_servings[4]: x[4] <= 1
 maximum_servings[5]: x[5] <= 2
 maximum_servings[6]: x[6] <= 2
 maximum_servings[7]: x[7] <= 6
 bread_pasta_combination: x[0] + x[1] <= 3
 milk_chiken_tuna_combination: x[2] + x[4] + x[5] >= 4
 relation_x_y[0]: - x[0] + 9.99999999999999e+14 y[0] >= 0
 relation_x_y[1]: - x[1] + 9.99999999999999e+14 y[1] >= 0
 relation_x_y[2]: - x[2] + 9.99999999999999e+14 y[2] >= 0
 relation_x_y[3]: - x[3] + 9.99999999999999e+14 y[3] >= 0
 relation_x_y[4]: - x[4] + 9.99999999999999e+14 y[4] >= 0
 relation_x_y[5]: - x[5] + 9.99999999999999e+14 y[5] >= 0
 relation_x_y[6]: - x[6] + 9.99999999999999e+14 y[6] >= 0
 relation_x_y[7]: - x[7] + 9.99999999999999e+14 y[7] >= 0
 relation_x_y_2[0]: x[0] - y[0] >= 0
 relation_x_y_2[1]: x[1] - y[1] >= 0
 relation_x_y_2[2]: x[2] - y[2] >= 0
 relation_x_y_2[3]: x[3] - y[3] >= 0
 relation_x_y_2[4]: x[4] - y[4] >= 0
 relation_x_y_2[5]: x[5] - y[5] >= 0
 relation_x_y_2[6]: x[6] - y[6] >= 0
 relation_x_y_2[7]: x[7] - y[7] >= 0
 food_present: y[0] + y[1] + y[2] + y[3] + y[4] + y[5] + y[6] + y[7] >= 7
 kilocalories: 150 x[0] + 390 x[1] + 70 x[2] + 70 x[3] + 150 x[4]
   + 150 x[5] + 112 x[6] + 45 x[7] >= 1700
 carbohidrates: 30 x[0] + 75 x[1] + 5 x[2] + 2 x[4] + 7 x[6] + 8 x[7]
   >= 200
 protein: 5 x[0] + 11 x[1] + 5 x[2] + 6 x[3] + 36 x[4] + 25 x[5] + 2 x[6]
   + 3 x[7] >= 70
 fats: 2 x[0] + 3 x[1] + 3 x[2] + 6 x[3] + 5 x[4] + 15 x[5] + 10 x[6]
   + 2 x[7] >= 60
 calcium: 52 x[0] + 5 x[1] + 150 x[2] + 50 x[3] + 22 x[4] + 4 x[5]
   + 11 x[6] + 50 x[7] >= 700
Bounds
Binaries
 y[0] y[1] y[2] y[3] y[4] y[5] y[6] y[7]
Generals
 x[0] x[1] x[2] x[3] x[4] x[5] x[6] x[7]
End
