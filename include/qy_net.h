#ifndef _QY_NET_H_
#define _QY_NET_H_

#include "ret.h"
#include <cstdint>

class Qy_NetServer
{
public:
  Qy_NetServer();
  ~Qy_NetServer();
public:
  ret_stat options();
  ret_stat listen(uint16_t port);

private:
  int fd;
};


#endif // _QY_NET_H_
