/*
 * tcpserverecho.h
 *
 *  Created on: Jun 10, 2021
 *      Author: 84963
 */

#ifndef APPLICATION_USER_TCPSERVERECHO_C_
#define APPLICATION_USER_TCPSERVERECHO_C_
#include "main.h"
#include "lwip.h"
#include "lwip/opt.h"
#include "lwip/api.h"
#include "lwip/inet.h"
#include "lwip/sockets.h"
#include "stdio.h"
#include "string.h"
#include "cmsis_os.h"

#define HOST_ADDR "192.168.1.21"
#define HOST_PORT 1000
static void tcp_client(void *arg);
void tcp_client_init();
void tcp_client_init(){
	sys_thread_new("tcp_client",tcp_client,NULL,DEFAULT_THREAD_STACKSIZE*4,osPriorityNormal);
}
static void tcp_client(void *arg){
	int sock,conn;
	struct sockaddr_in host_remote;
	ip4addr_aton(HOST_ADDR,(ip4_addr_t*)&host_remote.sin_addr);
	host_remote.sin_port = HOST_PORT;
	sock = socket(AF_INET,SOCK_STREAM,0);
	if(sock<0){
		return;
	}

	conn = connect(sock,(struct sockaddr *)&host_remote,sizeof(struct sockaddr_in));
	if(conn > 0){
		for(;;){
			write(conn,(char*)"Hello\r\n",strlen("Hello\r\n"));
			osDelay(1000);
		}
	}
	else{
		close(conn);
		return;
	}
}

#endif /* APPLICATION_USER_TCPSERVERECHO_C_ */
