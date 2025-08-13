create table users (
    id_user int not null auto_increment,
    first_name varchar(128),
    last_name varchar(128),
    email varchar(128),
    'password' varchar(128) ,
    'location' varchar(128),
    phone int,
    'role' varchar(128),
    photo text,
    primary key (iduser)
);

insert into users('first_name', 'last_name', phone, 'location', email,'password', 'role', 'photo')
values('mairousgou', 'benedicte','686073243', 'benedicte@gmail.com', 'benedicte', 'Administrateur', 'null')


create table all_medicament (
    idall_medicament int not null auto_increment,
    name varchar(128),
    'description' text,
    primary key (idall_medicament)
);

create table coupon (
    coupon_id int not null auto_increment,
    users_id int not null,
    reference varchar(50),
    create_at date,
    primary key (coupon_id)
);

create table coupon_medicament (
    coupon_medicament_id int not null,
    medicament_id int not null,
    coupon_id int not null,
    primary key (idcoupon_medicament),
    foreign key (idmedicament) references medicament(idmedicament),
    foreign key (idcoupon) references coupon(idcoupon)
);

create table medicament (
    medicament_id int not null auto_increment,
    all_medicament_id int not null,
    pharmacie_id int not null,
     price real,
    quantité int,
    primary key (medicament_id),
    foreign key (all_medicament_id) references all_medicament(all_medicament_id),
    foreign key (pharmacie_id) references pharmacie(pharmacie_id)
);

create table pharmacie (
    pharmacie_id int not null auto_increment,
    users_id int not null,
    name  varchar(128),
    'location' varchar(128),
    phone int,
    primary key (pharmacie_id),
    foreign key(users_id) references users(users_id)

);

create table user_pharmacie(
    users_pharmacie_id int not null auto_increment,
    users_id int not null,
    pharmacie_id int not null,
    primary key(users_pharmacie_id),
    foreign key (users_id) references users(users_id),
     foreign key (pharmacie_id) references pharmacie(pharmacie_id)
);