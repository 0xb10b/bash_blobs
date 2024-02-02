#!/usr/bin/python3

import sys


def modify_hosts_file(new_hostname):
    hosts_file = open('/etc/hosts', 'r')
    old_hosts = hosts_file.readlines()
    hosts_file.close()

    new_hosts = []
    for line in old_hosts:
        if '127.0.1.1' in line:
            print('[+] Modifying /etc/hosts: ')
            print(f'    old: {line[:-1]}')
            new_hosts.append(line.replace(line.replace(' ', '\t').split('\t')[-1], new_hostname + '\n'))
            print(f'    new: {new_hosts[-1][:-1]}')
        else:
            new_hosts.append(line)

    hosts_file = open('/etc/hosts', 'w')
    for line in new_hosts:
        hosts_file.write(line)
    hosts_file.close()


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(f'Usage: {sys.argv[0]} <new-hostname>')
        exit()

    modify_hosts_file(sys.argv[1])