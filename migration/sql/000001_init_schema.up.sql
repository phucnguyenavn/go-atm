

CREATE TABLE IF NOT EXISTS "users" (
    "id" Serial Primary key,
    "username" VARCHAR(50) not null,
    "password" VARCHAR(50) not null,
    "phone_number" VARCHAR(20) not null   
);

CREATE TABLE IF NOT EXISTS  "accounts" (
    "id" Serial Primary key,
    "account_name" VARCHAR(50) not null,
    "amount" NUMERIC,
    "user_id" INTEGER,
    constraint "fk_user_id" foreign key ("user_id") 
    references "users" ("id")

);


INSERT INTO users(username,password,phone_number) 
VALUES ('root','password','1234567');

INSERT INTO accounts(account_name,amount,user_id)
values ('ABC',5000,1);

