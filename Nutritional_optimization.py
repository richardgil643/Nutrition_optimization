from gurobipy import Model, GRB, tupledict

### We create the parameters
### Cost of aliment i 
c=[0.5,3.5,1,1.5,4.5,2,1.5,4]
### Maximum number of serves a person can take for aliment i 
m=[2,2,2,1,1,2,2,6]
### Kilocalories for aliment i
k=[150,390,70,70,150,150,112,45]
### Carbohidrates for aliment i
ca=[30,75,5,0,2,0,7,8]
### Proteins for aliment i 
p=[5,11,5,6,36,25,2,3]
### Fats for aliment i 
f=[2,3,3,6,5,15,10,2]
### Calcium for aliment i 
cal=[52,5,150,50,22,4,11,50]

### We define the model 
model = Model()

### Variables
### Quantity of aliment i taken in the day
x = model.addVars(len(c), vtype=GRB.INTEGER, name='x',obj=c)
### 1 if the aliment i is consumed, 0 otherwise
y = model.addVars(len(c), vtype=GRB.BINARY, name='y',obj=0)

### Constarins
### There should be at leats two servings of vegetables per day 
model.addConstr(x[7] >= 2 , name='vegetables_constrain')
### There should be a maximum number of servings of each food per day
model.addConstrs((x[i] <= m[i] for i in range(len(c))), name='maximum_servings')
### The number of servings of bread and pasta combinend should be at most 3
model.addConstr(x[0]+x[1] <= 3 , name='bread_pasta_combination')
### The number of servings of milk, chiken and tuna combined should be at least 4 
model.addConstr(x[2]+x[4]+x[5] >=4 , name='milk_chiken_tuna_combination')
### at least 7 of the 8 foods should be present in the diet 
model.addConstrs((999999999999999*y[i]>=x[i] for i in range(len(c))), name='relation_x_y')
model.addConstrs((x[i]>=y[i] for i in range(len(c))), name='relation_x_y_2')
model.addConstr(y.sum()>=7, name='food_present')
### 1700 kilocalories
model.addConstr(sum([x[i]*k[i] for i in range(len(c))])>=1700, name='kilocalories')
### 200 carbohidrates
model.addConstr(sum([x[i]*ca[i] for i in range(len(c))])>=200, name='carbohidrates')
### 70 protein
model.addConstr(sum([x[i]*p[i] for i in range(len(c))])>=70, name='protein')
### 60 fats
model.addConstr(sum([x[i]*f[i] for i in range(len(c))])>=60, name='fats')
### 700 calcium
model.addConstr(sum([x[i]*cal[i] for i in range(len(c))])>=700, name='calcium')

model.write('/Users/richardgil/Documents/BGSE/Optimization/Santini/Homework_2/model.lp')

print(model.optimize())

for v in model.getVars():
    print('%s %g' % (v.varName, v.x))

print('Obj: %g' % model.objVal)

### See if the restrictions that i want are fullfiled: 
