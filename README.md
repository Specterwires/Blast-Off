# blast-off
Kali linux automated scan script, uses Nmap, Nikto and Dirb with some fun animation.
bash script

chmod 755 blast-off
./blast-off
  __________.____       _____    ____________________      ________  ______________________
  \______   \    |     /  _  \  /   _____/\__    ___/      \_____  \ \_   _____/\_   _____/
   |    |  _/    |    /  /_\  \ \_____  \   |    |  ______  /   |   \ |    __)   |    __)  
   |    |   \    |___/    |    \/        \  |    | /_____/ /    |    \|     \    |     \   
   |______  /_______ \____|__  /_______  /  |____|         \_______  /\___  /    \___  /   
          \/        \/       \/        \/                          \/     \/         \/ 
                                                                    written by specterwires

WARNING: Not Intended For Illegal Use. Misuse of this program is prohibited. Use At Your Own Risk.

INITIATING
100.0% [=======================================================================]DONE!
                               
Ctrl + c To Quit BLAST-OFF At Any Time
To Skip Current Scan use (s) or any other key
Enter Target IP: xxx.xxx.xxx.xxx
Would You Like To Execute A Light(l) OR Intense(i) Nmap TCP Scan? Skip(s)? (l/i/s): l
Okay NMAP, BLAST OFF!!!  
Light Nmap Scan In Progress...

Starting Nmap 7.60 ( https://nmap.org ) at 2018-01-04 14:32 PST
Failed to resolve "xxx.xxx.xxx.xxx".
WARNING: No targets were specified, so 0 hosts scanned.
Nmap done: 0 IP addresses (0 hosts up) scanned in 1.67 seconds
                                          
Light Nmap Scan Complete!
                                          
Would You Like To Execute A TOP-20-PORT(t) OR FULL(f) Nmap UDP Scan? Skip(s)?
!!!WARNING: UDP SCANS MAY TAKE A LONG TIME!!! (t/f/s): t
Okay NMAP, BLAST OFF!!!  
TOP-20 UDP Nmap Scan In Progress...

Starting Nmap 7.60 ( https://nmap.org ) at 2018-01-04 14:32 PST
Failed to resolve "xxx.xxx.xxx.xxx".
WARNING: No targets were specified, so 0 hosts scanned.
Nmap done: 0 IP addresses (0 hosts up) scanned in 0.76 seconds
                                                     
TOP-20-PORTS Nmap UDP Scan Complete!
                                                     
Would You Like To Execute A Nikto Scan? Skip(s)? (y/n/s): y
Enter Port Number: 80
Okay NIKTO, BLAST OFF!!!  
Nikto Scan In Progress...
                                         
- Nikto v2.1.6
---------------------------------------------------------------------------
+ ERROR: Cannot resolve hostname 'xxx.xxx.xxx.xxx'
+ 0 host(s) tested
                                         
Nikto Scan Complete!
                                          
Would You Like To A Execute Dirb Scan? Skip(s)? (y/n/s): y
Enter Port Number: 80
Okay DIRB, BLAST OFF!!!  
Dirb Scan In Progress...

-----------------
DIRB v2.22    
By The Dark Raver
-----------------

START_TIME: Thu Jan  4 14:32:44 2018
URL_BASE: http://xxx.xxx.xxx.xxx:80/
WORDLIST_FILES: /usr/share/dirb/wordlists/common.txt

-----------------

GENERATED WORDS: 4612                                                          

---- Scanning URL: http://xxx.xxx.xxx.xxx:80/ ----
                                                                               
(!) FATAL: Too many errors connecting to host
    (Possible cause: COULDNT RESOLVE HOST)
                                                                               
-----------------
END_TIME: Thu Jan  4 14:32:45 2018
DOWNLOADED: 0 - FOUND: 0
                                          
Dirb Scan Complete!
                                          
                                             
.....Blast Off Sequence Terminating.....
                                                       
100.0% [=======================================================================]DONE!
TERMINATED
