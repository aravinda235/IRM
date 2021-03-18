# IRM
Incident Management And Response
Installation Manual.
1. Download the source code package attached herewith.
2. Install mysql DB change sql credentials in config.php
3 create following DB tables.
CREATE TABLE `hd_users` (
  `id` int(11) ,
  `email` varchar(250) ,
  `password` varchar(250) ,
  `sign_up_date` varchar(250) ,
  `nick_name` varchar(250) ,
  `user_group` int(11) ,
  `last_login` varchar(250) ,
  `url` varchar(270) ,
  `allowed` int(11) ,
  `most_recent_ip` varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `hd_departments` (
  `id` int(11) ,
  `name` varchar(50) ,
  `hidden` int(1)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `hd_tickets` (
  `id` int(11) ,
  `uniqid` varchar(20) ,
  `user` int(11) ,
  `title` varchar(250),
  `init_msg` text ,
  `department` int(11) ,
  `date` varchar(250) ,
  `last_reply` int(11) ,
  `user_read` int(11) ,
  `admin_read` int(11) ,
  `resolved` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `hd_ticket_replies` (
  `id` int(11) ,
  `user` int(11) ,
  `text` text ,
  `ticket_id` text ,
  `date` varchar(20)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
4. Restore sqldb backup.
5. Start
