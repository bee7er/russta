
Goto:  /Users/brianetheridge/Homestead

Run: vagrant up

This project is accessible in a browser with:

	russ.dev

Mysql is on the vagrant box:

    /Users/brianetheridge/Homestead

    vagrant up

    vagrant ssh

    mysql -uhomestead -psecret

    or

    mysql -uruss -pPangolin32 russ_201606
	
	http://russ.dev/img/thumbs/chipwaffle_still.png


===========

	mysqldump -uruss -pPangolin32 russ_201606 > db_20161016.sql
	
	
	drop table languages;
	drop table migrations;
	drop table password_resets;
	drop table resources;
	drop table templates;
    drop table users;