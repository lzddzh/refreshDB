# Refresh Databases

## How to setup 

On the website server machine:

First open the `setup_refresh_db.sh` file with a editor you like and change the DB user name and passwrod at the top of the file.

```bash
sudo chmod 777 setup_refresh_db.sh
./setup_refresh_db.sh
```
That's all. Note that the db snapshot will store the state when you run the above commands. Later when we refresh the db it will recover to this point.

## How to refresh

On your PC:

Firstly add a line `[IP Adress] refreshdb.com` into your `/etc/hosts`,

Then open a browser, type in the below address to the address bar.

```
refreshdb.com
```
After a while, all the database will be refreshed.


## Notice

Please ensure there is a database named 'mysql' in your MYSQL database server.
In most condition, this is a default db when the MYSQL is installed.
