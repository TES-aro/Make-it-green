## this was funnier in my head.
simple cronjob that updates github or other site regularly.
I am far too unproductive to have a pretty tracker without cheating :3

## instalation


```bash
# download the project
git pull git@github.com:TES-aro/Make-it-green.git

# initialize your new repository.
# This is done manually for now.

# run cronjob-update.sh
./cronjob-update.sh
```

you can edit the cronjob either manually trough `crontab -e`
or by editing the cronjob_update.sh file and running it again.
the file removes all cronjobs that deal with `fluff-update.sh`

## issues
for this to work, you'll need to be able to upload into github
without manual verification. the easiest and least secure option
is to disable password on the used ssh key as well as either disabling
pgp signing on the repo with `git config --local commit.gpgsign "false"`.

a better option is to configure ssh-agent properly to run on bootup.
