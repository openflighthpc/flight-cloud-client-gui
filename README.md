# Flight Cloud Client GUI

## Installation

1. Ensure Ruby and Rails versions as specified in [`.ruby-version`](./.ruby-version) are installed.

2. PostgreSQL 9+ installed and running. The following should achieve this for a CentOS machine:

    _Tested using v9.2 on Centos7_
    2.1. Install using \yum install postgresql`
    2.2. Configure PostgreSQL like the following:

    ```bash
    postgresql-setup initdb
    sudoedit `/var/lib/pgsql/data/pg_hba.conf`
    # Change entries in 'METHOD' column to 'trust' and then save the file
    systemctl start postgresql
    ```

3, Ensure Node.js v8.12 is installed

    * Install [directly](https://github.com/nodesource/distributions/blob/master/README.md#rpm)

    * Install using [Node Version Manager](https://github.com/creationix/nvm#installation-and-update)

4. Yarn installed

    4.1. Install repo using `curl -sL https://dl.yarnpkg.com/rpm/yarn.repo -o /etc/yum.repos.d/yarn.repo`

    4.2. Install `yarn` itself using `yum install yarn`

5. Clone this repo using `git clone https://github.com/openflighthpc/flight-cloud-client-gui`

6. Copy the environment variables file using `cp '.env.example' '.env'`

7. Edit `.env` as required to use valid environment variables.

8. Install gems with `bundle install`

9. Launch server using `rails server`

10. Access the application at `localhost:3000`
