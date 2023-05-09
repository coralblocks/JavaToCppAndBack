#pragma once

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*callback_func)(long);

void register_callback(callback_func func);

#ifdef __cplusplus
}
#endif