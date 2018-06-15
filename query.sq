
select distinct user.name, user.surname from user 
       inner join carRent on user.userId = carRent.userId 
       inner join carDamage on carDamage.transactionId = carRent.transactionId;

select distinct user.name, user.surname, damages.name, damages.description from user 
       inner join carRent on user.userId = carRent.userId 
       inner join carDamage on carRent.transactionId = carDamage.transactionId 
       inner join damages on damages.damageId = carDamage.damageId;

select user.name, user.surname, payment.price, car.carType from user 
       inner join carRent on carRent.userId = user.userId 
       inner join payment on payment.transactionId = carRent.transactionId 
       inner join paymentService on paymentService.serviceId = payment.serviceId 
       inner join car on carRent.carId = car.carId 
       where payment.price > 1000;

select user.name, user.surname, car.carType, carTank.volume, car.tankCapacity from user 
       inner join carRent on carRent.userId = user.userId 
       inner join car on carRent.carId = car.carId 
       inner join carTank on carTank.transactionId = carRent.transactionId 
       where carTank.volume > 0;

select user.name, user.surname, car.carType, carTank.volume, car.tankCapacity from user
        inner join carRent on carRent.userId = user.userId 
        inner join car on carRent.carId = car.carId 
        inner join carTank on carTank.transactionId = carRent.transactionId 
        where car.tankCapacity > 50;




