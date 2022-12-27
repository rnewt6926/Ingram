# Appviewx SaaS Portal Beta

> ADC+ Appviewx SaaS beta
> https://ingrammicro-try.appvx.com/appviewx/login



Use Cases:

• F5 device upgrades & CVE Reporting  
• Canary-Based Deployment  
• Build and Application View of New Load Balancing Services  
• Golden Config Compliance  
• Blue-Green Based Deployment  
• Visibility into Brownfield Infrastructure  
• LBaaS (Load Balancing as a Service) across hybrid infrastructure  
• Certificate Management on F5s (and other network components)  

  
Worflows - Notes:  
  
## Configuration Management  

* `Backup Configuration`
  * Works as expected  
  * Creating, Restoring, Comparing and Managing backups is straight forward  

## F5 Big-IP System  
  
* `Golden Config Compliance`  
  * Generic L3 Forwarding VS Server
* `./AS3/as3-petstore-waf.json`
  * [Swagger Petstore](https://petstore.swagger.io/) with [Declarative WAF Policy](https://devcentral.f5.com/s/articles/Advanced-WAF-v16-0-Declarative-API)

## DO Folder

Experiments with Declarative On-Boarding.
* `./DO/install-do.sh`
  * custom script to install DO Extension, later was replaced with F5-CLI in this demo
* `./DO/do-vlab-full-example.json`
  * Full BIG-IP demo Provisioning
  * In order to work with `./F5-CLI/04_do.sh` it is need to
    * rename `./DO/do-vlab-full-example.json` to .`/DO/do-vlab-full.json`
    * insert valid Base Reg Key to `"regKey":` 

## TS Folder
Testing Telemetry streaming module for logging. It contains just Generic HTTP Consumer `./TS/ts-generic-http.json` which is getting data from example app `./TS/as3-example-app.json`.

## F5-CLI Folder

Contains several scripts to start the fully configured BIG-IP. Main work is done by [F5-CLI](https://github.com/f5devcentral/f5-cli). More details in [./F5-CLI/README.md](https://github.com/erkac/f5-demo-lab/blob/master/F5-CLI/README.md).

## HA Folder

My try to configure a cluster of two BIG-IPs using **F5-CLI** and **DO**. Work in progress...

## WAF Folder

Declarative WAF Policy in JSON format. `./WAF/start-web-server.sh` starts local WEB server which is able to serve `/awaf-declarative.json` policy when using AS3 declaration for *Petstore* example.

## TEST

Testing the deployed configuration using [Chef InSpec](https://docs.chef.io/inspec/).

## Components

### BIG-IP

**Networking**

* BIG-IP MGMT: *10.1.1.245*
  * MGMT GW: *10.1.1.2*
* Internal: *10.1.20.241*
    * Floating: *10.1.20.240*
* External: *10.1.10.241*
    * Floating: *10.1.10.240*
* Default GW: *10.1.10.2*

**Credentials**

* Login: *admin*
* Password: *admin*

### Banking App
 
* bobsmith
* P@ssw0rd1

### DVWA

> Not Part of this demo.

* LAMP IP: *10.1.20.17*
* Credentials: *hacker* / *hackyou*

### httpbin

> Not Part of this demo.

### XML Security GW

> Not Part of this demo.

Very Simple Web App, able to consume XML Inputs [docker-xml-server](https://github.com/erkac/docker-xml-server).

### JSON Security GW

> Not Part of this demo.

Very simple Web App, able to consume JSON Inputs [docker-json-server](https://github.com/erkac/docker-json-server).

## Other Notes


## Disclaimer
This how-to is provided as is. Use it at your own responsibility.