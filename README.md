Heisenberg Compensator
----------------------

This repository contains ansible playbooks used to configure my personal system.

## Requirements

* ansible

## Run playbook

```bash
$ ./scripts/engage.sh
```

## Install Firefox latest
```bash
$ ./scripts/updatefirefox-latest.sh
```

## Install Firefox beta
```bash
$ ./scripts/updatefirefox-beta.sh
```

## Install Audio apps (pulseaudio-equalizer)
```bash
$ ./scripts/audio.sh
```
# Secrets file for ~/.offlineimaprc template

1. Generate vault password
   ```bash
   pwgen - 40 1 | gpg -e -r YOURGPGID > ~/.heisenbergpw.gpg
   ```
2. Create vars/secrets.yml

   ```yaml
   ---
   #
   # File contains account details for offlineimap
   #
   mail_accounts:
     # Typical Gmail account
     - address: username@gmail.com
       folder: username-gmail
       type: Gmail
       local_folders:
       local_folders:
         - entry: "'drafts': '[Gmail]/Drafts'"
         - entry: "'sent': '[Gmail]/Sent Mail'"
         - entry: "'flagged': '[Gmail]/Starred'"
         - entry: "'trash': '[Gmail]/Trash'"
         - entry: "'archive': '[Gmail]/All Mail'"
       remote_folders:
         - entry: "'[Gmail]/Drafts': 'drafts'"
         - entry: "'[Gmail]/Sent Mail': 'sent'"
         - entry: "'[Gmail]/Starred': 'flagged'"
         - entry: "'[Gmail]/Trash': 'trash'"
         - entry: "'[Gmail]/All Mail': 'archive'"
         - entry: "'[Gmail]/Inbox': 'inbox'"
       filter_folders:
         - entry: "'[Gmail]/Trash'"
         - entry: "'[Gmail]/Important'"
         - entry: "'[Gmail]/Spam'"
     # Standard IMAP / non-Gmail
     - address: username@nongmail.com
       folder: username-nongmail
       type: IMAP
       remotehost: imap.nongmail.com
       remoteport: 993
       presynchook: ~/bin/filter_mail
   ```
3. Encrypt vars/secrets.yml with ansible-vault
   ```bash
   ansible-vault encrypt vars/secrets.yml --vault-password-file=scripts/vaultpass
   ```
