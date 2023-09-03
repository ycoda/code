while True:
    cars, min_distance = map(int, input().split())
    if cars <= 1000 & min_distance <= 100:
        break

nums = list()
for _ in range(1, cars):
    while True:
        distance = int(input())
        if distance <= 200:
            break
    nums.append(distance)
    
sum = 0
for i in nums:
    if i <= min_distance:
        sum += i
        
print(sum)