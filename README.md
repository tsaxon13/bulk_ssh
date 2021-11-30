# Bulk Remote SSH Script
This is a rudimentary script that can be modified to gather information from a list of similar hosts with credentials that it prompts for. Use case if for a list of hosts that have shared credentials for login but do not have SSH keys configured for passwordless remote access.

This can be modified to create output in any necessary format.

## Requirements
- [sshpass](https://sourceforge.net/projects/sshpass/) installed to `/usr/bin/sshpass`
- a text file with a list of hosts to connect to, one host per line, with no headers
- common credentials to log into the list of hosts

## Usage

- Update the command run via SSH on the remote host.
- run the script
```
$ bash ./bulk_ssh.sh hostlist.txt
```
- Enter credentials as necessary
- If saving the output is required, pipe it to a file
```
$ bash ./bulk_ssh.sh hostlist.txt > output.out
```