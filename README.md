# Senior Design
Our senior design group is tasked with integrating both a physical and virtualuized IoT deivce into the Spring 2022 CDC at Iowa State Univeristy.  "The goal of this project is to integrate IoTcomponents into ISEAGE and CDC (Cyber Defense Competition). Examples of IoT devices include webcams, smart plugs, smartlocks, smart meters, programmable thermostats, and more." The expected deliveriables include:

1. Integration and demonstration of at least one type of IoT devices into ISEAGE/CDC by December 2021.

2. Integration and demonstration of an additional type of IoT devices into ISEAGE/CDC by May 2022.

3. Proper documentation and user manual for the developedIoT components and IoT-CDCs.


# Our Steps so far
<details><summary>1. Understand Last Year's Documentation</summary>
------------------------------------------------


Our initial task for the first two or three weeks was to familiaraize ourselves with last year's project. We read through their documentaiton, noted what they did in their work processes (good or bad), and tried to follow their steps and throught process. By knowing what the last group did, we can follow or improve their work methodologies. We can work off of their knowledge, their pitfalls, and their strengths to incorperate that information into our designs and procedures.
</details>


<details><summary>2. Establish Communication Channels</summary>
--------------------------------------------

It is imperative that our team has weekly meetings with our client to give necessary updates, recieve feedback, ask questions, claridy misconceptions, etc. Our team esablished weekly meetings with our client in the second week of the semester via Zoom calls, and we established commmunication with the CDC staff by the beginning of the sixth week. These communication channels are crucial to the sucess of the project, so it is important to make contact with both the client and the CDC.  
</details>
 
<details><summary>3. Understand The Project Expectations</summary>
---------------------------------------------


1. Study last group's efforts 
2. Identify a physical IoT device to aquire and integrate into the CDC
3. Identify an IoT device to emulate in a virtual machine that we integrate into the CDC
4. [Package the last groups stuff and "bundle" it?]*
       -- Need to ask for clarification
</details>

<details><summary>4. Research Potential IoT Devices For Both Physical Aquisition And Virtual Emulation</summary>
-----------------------------------------------------------------------------------------------


Our team must aquire a physical IoT device, and emulate an IoT device within a virtual machine. We have decided to have distinct/unique IoT devices between the physical and virtual IoT devices. (i.e., if we have a smart lock for the physical device, we may try to emulate a smart TV for the VM.)  Our team formulated a generic list of IoT devices and how we might go about integrating that into the CDC. Our team then assigned each member to research real IoT vulnerabilities by using the MITRE CVE (Common vulnerabilities and exploits) list.  


https://cve.mitre.org/cve/search_cve_list.html

For example, if we wanted to find vulerable Smart TVs, we would navigate to the link above and search "Smart TV". We would then write down any notable CVEs that we wished to emulate as a VM or identify a potential vulnerable physical IoT device.
</details>


<details><summary>5. Decide On IoT Device To Aquire (physical) And Develop/Emulate (As A Virtual Machine)</summary>
----------------------------------------------------------------------------------------------------



Our team will eventually need to identify a physical and vulnerable IoT device to aquire. Once aquired, we will hack into the IoT device and configure it to integrate into the Spring CDC. This step will likely require a lot of communciation between the CDC staff an the the team.

Our team shall use these metrics as a quantitative approach to identify an optimal IoT device to purchase.
1. Device: The name of the hardware device

2. CVEs: The identified CVE from the CVE website

3. Flashyness: The final product should have some aesthetic/entertaining exploit that can be demonstrated

4. Cost: The estimated cost to aquire the IoT device

5. CVSS Score: The common vulnerability score system ranks the harm of a given exploit from Low, Medium, High, and Critical. We want a High CVSS score

6. Hacking Difficulty: The difficulty/expertise needed to sucessfully exploit the device. (i.e., default passwords (Easy) vs buffer overflow (Hard))

7. CDC Integration: How well the device would integreate into the CDC (i.e., providing green team services, red team vulnerabilities, blue team defensies)

8. Total Score: A higher score a score is, the better the device




| Device | CVEs | Flashyness | Cost | CVSS Score | Hacking Difficulty | CDC Integration | Total Score |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| Jector Smart TV FM-K75 | [CVE-2019-9871](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-9871) | 5 | 0 (Very Expensive) | 9.8 (Critical) | 4.0 (Easy) | 3.0 (Somewhat Intregratable) | 21.8 |
| Yi Home Camera 27US | [CVE-2018-3934](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-3934) | 2 | 4 (Somewhat Cheap) | 9.0 (Critical) | 2 (Hard) | 2 (Barely Integratable) | 19.7 |
| TP-Link Archer A7 AC1750 | [CVE-2020-10888](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-10888) | 1 | 3 (Moderate) | 9.8 (Critical) | 2 (Hard) | 2 (Barely Integratable) | 18.7 |
| Eques Elf Smart Plug | [CVE-2019-15745](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15745) | 3 | 5 (Cheap) | 8.8 (High) | 3 (Medium) | 3 (Somewhat Intregratable) | 22.8 |
| XIAOMI XIAOAI speaker Pro LX06 | [CVE-2020-10263](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-10263) | 3 | 5 (Cheap) | 6.8 (Medium) | -- | 2 (Barely Intregratable) | -- |
| Raspberry Pi 3 | Unlimited | Variable | 5 (Cheap) | Variable | Variable | 4 (Intregratable) | -- |
| Philips Wi-Fi Connected LED Bulb | [CVE-2019-18980](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-18980) | 2 | 5 (Cheap) | 7.5 (High) | 4.0 (Easy) | 2 | 20.5 |
| Glue Smart Lock 2.7.8 | [CVE-2019-12944](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-12944) | -- | 3 ($150+) | 7.5 (High) | -- | -- | -- |
| [Device]] | [CVE] | [Flashyness] | [Cost] | [CVSS Score] | [Hacking Difficulty] | [CDC Integration] | [TotalScore] |
| [Device]] | [CVE] | [Flashyness] | [Cost] | [CVSS Score] | [Hacking Difficulty] | [CDC Integration] | [TotalScore] |
| [Device]] | [CVE] | [Flashyness] | [Cost] | [CVSS Score] | [Hacking Difficulty] | [CDC Integration] | [TotalScore] |
</details>

<details><summary>6. Aquire Physical IoT Device And Begin Building The Virtualized IoT Device</summary>
-------------------------------------------------------------------------------------



[TODO]
</detials>
