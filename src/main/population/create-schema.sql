
    create table `activity` (
       `id` integer not null,
        `version` integer not null,
        `budget_amount` double precision,
        `budget_currency` varchar(255),
        `end` datetime(6),
        `start` datetime(6),
        `title` varchar(255),
        `work_programme_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `administrator` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `anonymous` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `application` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `justification` varchar(255),
        `money_offer_amount` double precision,
        `money_offer_currency` varchar(255),
        `statement` varchar(255),
        `status` varchar(255),
        `ticker` varchar(255),
        `investment_round_id` integer not null,
        `investor_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `authenticated` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `average_target` (
       `id` integer not null,
        `version` integer not null,
        `goal` varchar(50),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `basic_post` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        primary key (`id`)
    ) engine=InnoDB;

    create table `challenge` (
       `id` integer not null,
        `version` integer not null,
        `deadline` datetime(6),
        `description` varchar(1024),
        `title` varchar(50),
        `average_id` integer not null,
        `expert_id` integer not null,
        `rookie_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `configuration` (
       `id` integer not null,
        `version` integer not null,
        `language` varchar(255),
        `spam_threshold` double precision not null,
        `spamwords` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `consumer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `debate` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        `email` varchar(255),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `paragraph` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `entrepreneur` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `qualification_record` varchar(255),
        `skill_record` varchar(255),
        `start_up_name` varchar(255),
        `sector_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `expert_target` (
       `id` integer not null,
        `version` integer not null,
        `goal` varchar(50),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `inquiry` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        `email` varchar(255),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `paragraph` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `investment_round` (
       `id` integer not null,
        `version` integer not null,
        `amount_amount` double precision,
        `amount_currency` varchar(255),
        `creation_date` datetime(6),
        `description` varchar(1024),
        `kind_round` varchar(255),
        `more_info` varchar(255),
        `ticker` varchar(255),
        `title` varchar(255),
        `entrepreneur_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `investor` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `first_name` varchar(255),
        `profile` varchar(255),
        `sector_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `notice` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        `body` varchar(1024),
        `header` varchar(255),
        `link` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `overture` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `title` varchar(50),
        `email` varchar(255),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `paragraph` varchar(1024),
        primary key (`id`)
    ) engine=InnoDB;

    create table `provider` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `record` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(1024),
        `email` varchar(255),
        `investor_name` varchar(50),
        `open_source` bit,
        `stars` integer,
        `title` varchar(50),
        `web` varchar(255),
        `sector_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `rookie_target` (
       `id` integer not null,
        `version` integer not null,
        `goal` varchar(50),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `sector` (
       `id` integer not null,
        `version` integer not null,
        `sector` varchar(50),
        primary key (`id`)
    ) engine=InnoDB;

    create table `target_reward` (
       `id` integer not null,
        `version` integer not null,
        `goal` varchar(50),
        `reward_amount` double precision,
        `reward_currency` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `technology` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(1024),
        `email` varchar(255),
        `investor_name` varchar(50),
        `open_source` bit,
        `stars` integer,
        `title` varchar(50),
        `web` varchar(255),
        `sector_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `tool` (
       `id` integer not null,
        `version` integer not null,
        `description` varchar(1024),
        `email` varchar(255),
        `investor_name` varchar(50),
        `open_source` bit,
        `stars` integer,
        `title` varchar(50),
        `web` varchar(255),
        `sector_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `user_account` (
       `id` integer not null,
        `version` integer not null,
        `enabled` bit not null,
        `identity_email` varchar(255),
        `identity_name` varchar(255),
        `identity_surname` varchar(255),
        `password` varchar(255),
        `username` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `work_programme` (
       `id` integer not null,
        `version` integer not null,
        `investment_round_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `hibernate_sequence` (
       `next_val` bigint
    ) engine=InnoDB;

    insert into `hibernate_sequence` values ( 1 );

    alter table `challenge` 
       add constraint UK_dfyfehwjg4occoijxrbiig6nd unique (`average_id`);

    alter table `challenge` 
       add constraint UK_ag7ti03aal51sk5amgyocxyep unique (`expert_id`);

    alter table `challenge` 
       add constraint UK_2rv17ol73skef6j5wqm46ba9w unique (`rookie_id`);

    alter table `user_account` 
       add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (`username`);

    alter table `activity` 
       add constraint `FKsi3ivubkr0ib5fqb6qv2k7i19` 
       foreign key (`work_programme_id`) 
       references `work_programme` (`id`);

    alter table `administrator` 
       add constraint FK_2a5vcjo3stlfcwadosjfq49l1 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `anonymous` 
       add constraint FK_6lnbc6fo3om54vugoh8icg78m 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `application` 
       add constraint `FKk5ibe41quxsif8im882xv4afo` 
       foreign key (`investment_round_id`) 
       references `investment_round` (`id`);

    alter table `application` 
       add constraint `FKl4fp0cd8c008ma79n6w58xhk9` 
       foreign key (`investor_id`) 
       references `investor` (`id`);

    alter table `authenticated` 
       add constraint FK_h52w0f3wjoi68b63wv9vwon57 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `challenge` 
       add constraint `FKpls1ankqsd5bj9qeivrin6her` 
       foreign key (`average_id`) 
       references `average_target` (`id`);

    alter table `challenge` 
       add constraint `FK1fq97er7qk6wbc1a5lr8av9pe` 
       foreign key (`expert_id`) 
       references `expert_target` (`id`);

    alter table `challenge` 
       add constraint `FK630cbp6ixepifihtmort1eh00` 
       foreign key (`rookie_id`) 
       references `rookie_target` (`id`);

    alter table `consumer` 
       add constraint FK_6cyha9f1wpj0dpbxrrjddrqed 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `entrepreneur` 
       add constraint `FK7hiph2o3yoewe954maj7uxame` 
       foreign key (`sector_id`) 
       references `sector` (`id`);

    alter table `entrepreneur` 
       add constraint FK_r6tqltqvrlh1cyy8rsj5pev1q 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `investment_round` 
       add constraint `FKkj1l8c2ftn9c65y061me6t37j` 
       foreign key (`entrepreneur_id`) 
       references `entrepreneur` (`id`);

    alter table `investor` 
       add constraint `FK2x8ul7k3yn927bq4l2u9s6429` 
       foreign key (`sector_id`) 
       references `sector` (`id`);

    alter table `investor` 
       add constraint FK_dcek5rr514s3rww0yy57vvnpq 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `provider` 
       add constraint FK_b1gwnjqm6ggy9yuiqm0o4rlmd 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `record` 
       add constraint `FK5m3d06dehg19dco3s011wvwjo` 
       foreign key (`sector_id`) 
       references `sector` (`id`);

    alter table `technology` 
       add constraint FK_g9x1pskolrbtgfufi3u6ooin8 
       foreign key (`sector_id`) 
       references `sector` (`id`);

    alter table `tool` 
       add constraint FK_6u4iuvl4m0o1avirqg4jwv7ov 
       foreign key (`sector_id`) 
       references `sector` (`id`);

    alter table `work_programme` 
       add constraint `FK3nxyaik1cnvfdg02p9a8ibiko` 
       foreign key (`investment_round_id`) 
       references `investment_round` (`id`);
