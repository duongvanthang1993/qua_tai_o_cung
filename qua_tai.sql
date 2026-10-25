create database if not exists quickfeed_db;
use quickfeed_db;

drop table if exists Posts;

create table Posts(
post_id int auto_increment primary key,
user_id int not null,
content text,
post_type varchar(10),
is_visible boolean default 1,
created_at datetime default current_timestamp

);

create index idx_user_id on Posts(user_id);
create index idx_content on Posts(content(255));
create index idx_post_type on Posts(post_type);
create index idx_is_visible on Posts(is_visible);

show table status like 'Posts';
alter table Posts drop index idx_content;
alter table Posts drop index idx_post_type;
alter table Posts drop index idx_is_visible;
create index idx_created_at on Posts(created_at);
show table status like 'Posts';


