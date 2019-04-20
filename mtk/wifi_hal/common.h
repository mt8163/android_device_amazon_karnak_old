#include "wifi_hal.h"

#ifndef __WIFI_HAL_COMMON_H__
#define __WIFI_HAL_COMMON_H__

#define LOG_TAG  "WifiHAL"

#include <utils/Log.h>
#include "nl80211_copy.h"
#include "sync.h"

#define SOCKET_BUFFER_SIZE      (32768U)
#define RECV_BUF_SIZE           (4096)
#define DEFAULT_EVENT_CB_SIZE   (64)
#define DEFAULT_CMD_SIZE        (64)
#define DOT11_OUI_LEN             3
#define DOT11_MAX_SSID_LEN        32

#define MAX_PROBE_RESP_IE_LEN      2048
/*
 Vendor OUI - This is a unique identifier that identifies organization. Lets
 code Android specific functions with Google OUI; although vendors can do more
 with their own OUI's as well.
 */

const uint32_t GOOGLE_OUI = 0x001A11;
/* TODO: define vendor OUI here */

#ifndef MAC2STR
#define MAC2STR(a) (a)[0], (a)[1], (a)[2], (a)[3], (a)[4], (a)[5]
#define MACSTR "%02x:%02x:%02x:%02x:%02x:%02x"
#endif

/*
 This enum defines ranges for various commands; commands themselves
 can be defined in respective feature headers; i.e. find gscan command
 definitions in gscan.cpp
 */

typedef enum {
    /* Don't use 0 as a valid subcommand */
    ANDROID_NL80211_SUBCMD_UNSPECIFIED,

    /* Define all vendor startup commands between 0x0 and 0x0FFF */
    ANDROID_NL80211_SUBCMD_WIFI_RANGE_START = 0x0001,
    ANDROID_NL80211_SUBCMD_WIFI_RANGE_END   = 0x0FFF,

    /* Define all GScan related commands between 0x1000 and 0x10FF */
    ANDROID_NL80211_SUBCMD_GSCAN_RANGE_START = 0x1000,
    ANDROID_NL80211_SUBCMD_GSCAN_RANGE_END   = 0x10FF,

    /* Define all RTT related commands between 0x1100 and 0x11FF */
    ANDROID_NL80211_SUBCMD_RTT_RANGE_START = 0x1100,
    ANDROID_NL80211_SUBCMD_RTT_RANGE_END   = 0x11FF,

    ANDROID_NL80211_SUBCMD_LSTATS_RANGE_START = 0x1200,
    ANDROID_NL80211_SUBCMD_LSTATS_RANGE_END   = 0x12FF,

    /* Define all Logger related commands between 0x1400 and 0x14FF */
    ANDROID_NL80211_SUBCMD_DEBUG_RANGE_START = 0x1400,
    ANDROID_NL80211_SUBCMD_DEBUG_RANGE_END   = 0x14FF,

    /* Define all wifi offload related commands between 0x1600 and 0x16FF */
    ANDROID_NL80211_SUBCMD_WIFI_OFFLOAD_RANGE_START = 0x1600,
    ANDROID_NL80211_SUBCMD_WIFI_OFFLOAD_RANGE_END   = 0x16FF,

    /* This is reserved for future usage */

} ANDROID_VENDOR_SUB_COMMAND;

typedef enum {
    GSCAN_SUBCMD_GET_CAPABILITIES = ANDROID_NL80211_SUBCMD_GSCAN_RANGE_START,

    GSCAN_SUBCMD_SET_CONFIG,                          /* 0x1001 */
    GSCAN_SUBCMD_SET_SCAN_CONFIG,                     /* 0x1002 */
    GSCAN_SUBCMD_ENABLE_GSCAN,                        /* 0x1003 */
    GSCAN_SUBCMD_GET_SCAN_RESULTS,                    /* 0x1004 */
    GSCAN_SUBCMD_SCAN_RESULTS,                        /* 0x1005 */

    GSCAN_SUBCMD_SET_HOTLIST,                         /* 0x1006 */

    GSCAN_SUBCMD_SET_SIGNIFICANT_CHANGE_CONFIG,       /* 0x1007 */
    GSCAN_SUBCMD_ENABLE_FULL_SCAN_RESULTS,            /* 0x1008 */
    GSCAN_SUBCMD_GET_CHANNEL_LIST,                    /* 0x1009 */

    GSCAN_SUBCMD_SET_EPNO_SSID = 0x100F,              /* 0x100F */

    GSCAN_SUBCMD_SET_SSID_WHITE_LIST,                 /* 0x1010 */
    GSCAN_SUBCMD_SET_ROAM_PARAMS,                     /* 0x1011 */
    GSCAN_SUBCMD_ENABLE_LAZY_ROAM,                    /* 0x1012 */
    GSCAN_SUBCMD_SET_BSSID_PREF,                      /* 0x1013 */
    GSCAN_SUBCMD_SET_BSSID_BLACKLIST,                 /* 0x1014 */

    GSCAN_SUBCMD_ANQPO_CONFIG,                        /* 0x1015 */
    /* Add more sub commands here */

} GSCAN_SUB_COMMAND;

typedef enum {
    GSCAN_ATTRIBUTE_CAPABILITIES = 1,

    GSCAN_ATTRIBUTE_NUM_BUCKETS = 10,
    GSCAN_ATTRIBUTE_BASE_PERIOD,
    GSCAN_ATTRIBUTE_BUCKETS_BAND,
    GSCAN_ATTRIBUTE_BUCKET_ID,
    GSCAN_ATTRIBUTE_BUCKET_PERIOD,
    GSCAN_ATTRIBUTE_BUCKET_NUM_CHANNELS,
    GSCAN_ATTRIBUTE_BUCKET_CHANNELS,
    GSCAN_ATTRIBUTE_NUM_AP_PER_SCAN,
    GSCAN_ATTRIBUTE_REPORT_THRESHOLD,
    GSCAN_ATTRIBUTE_NUM_SCANS_TO_CACHE,

    GSCAN_ATTRIBUTE_ENABLE_FEATURE = 20,
    GSCAN_ATTRIBUTE_SCAN_RESULTS_COMPLETE,            /* indicates no more results */
    GSCAN_ATTRIBUTE_FLUSH_FEATURE,                    /* Flush all the configs */
    GSCAN_ENABLE_FULL_SCAN_RESULTS,
    GSCAN_ATTRIBUTE_REPORT_EVENTS,
    /* Adaptive scan attributes */
    GSCAN_ATTRIBUTE_BUCKET_STEP_COUNT,
    GSCAN_ATTRIBUTE_BUCKET_MAX_PERIOD,

    GSCAN_ATTRIBUTE_NUM_OF_RESULTS = 30,
    GSCAN_ATTRIBUTE_FLUSH_RESULTS,
    GSCAN_ATTRIBUTE_SCAN_RESULTS,                     /* flat array of wifi_scan_result */
    GSCAN_ATTRIBUTE_SCAN_ID,                          /* indicates scan number */
    GSCAN_ATTRIBUTE_SCAN_FLAGS,                       /* indicates if scan was aborted */
    GSCAN_ATTRIBUTE_AP_FLAGS,                         /* flags on significant change event */
    GSCAN_ATTRIBUTE_NUM_CHANNELS,
    GSCAN_ATTRIBUTE_CHANNEL_LIST,
    GSCAN_ATTRIBUTE_CH_BUCKET_BITMASK,

    GSCAN_ATTRIBUTE_SSID = 40,
    GSCAN_ATTRIBUTE_BSSID,
    GSCAN_ATTRIBUTE_CHANNEL,
    GSCAN_ATTRIBUTE_RSSI,
    GSCAN_ATTRIBUTE_TIMESTAMP,
    GSCAN_ATTRIBUTE_RTT,
    GSCAN_ATTRIBUTE_RTTSD,

    GSCAN_ATTRIBUTE_HOTLIST_BSSIDS = 50,
    GSCAN_ATTRIBUTE_RSSI_LOW,
    GSCAN_ATTRIBUTE_RSSI_HIGH,
    GSCAN_ATTRIBUTE_HOTLIST_ELEM,
    GSCAN_ATTRIBUTE_HOTLIST_FLUSH,
    
    GSCAN_ATTRIBUTE_RSSI_SAMPLE_SIZE = 60,
    GSCAN_ATTRIBUTE_LOST_AP_SAMPLE_SIZE,
    GSCAN_ATTRIBUTE_MIN_BREACHING,
    GSCAN_ATTRIBUTE_NUM_AP,                     /* TBD */
    GSCAN_ATTRIBUTE_SIGNIFICANT_CHANGE_BSSIDS,
    GSCAN_ATTRIBUTE_SIGNIFICANT_CHANGE_FLUSH,

    /* EPNO */
    GSCAN_ATTRIBUTE_EPNO_SSID_LIST = 70,
    GSCAN_ATTRIBUTE_EPNO_SSID,
    GSCAN_ATTRIBUTE_EPNO_SSID_LEN,
    GSCAN_ATTRIBUTE_EPNO_RSSI,
    GSCAN_ATTRIBUTE_EPNO_FLAGS,
    GSCAN_ATTRIBUTE_EPNO_AUTH,
    GSCAN_ATTRIBUTE_EPNO_SSID_NUM,
    GSCAN_ATTRIBUTE_EPNO_FLUSH,

    GSCAN_ATTRIBUTE_WHITELIST_SSID = 80,
    GSCAN_ATTRIBUTE_NUM_WL_SSID,
    GSCAN_ATTRIBUTE_WL_SSID_LEN,
    GSCAN_ATTRIBUTE_WL_SSID_FLUSH,
    GSCAN_ATTRIBUTE_WHITELIST_SSID_ELEM,
    GSCAN_ATTRIBUTE_NUM_BSSID,
    GSCAN_ATTRIBUTE_BSSID_PREF_LIST,
    GSCAN_ATTRIBUTE_BSSID_PREF_FLUSH,
    GSCAN_ATTRIBUTE_BSSID_PREF,
    GSCAN_ATTRIBUTE_RSSI_MODIFIER,

    GSCAN_ATTRIBUTE_A_BAND_BOOST_THRESHOLD = 90,
    GSCAN_ATTRIBUTE_A_BAND_PENALTY_THRESHOLD,
    GSCAN_ATTRIBUTE_A_BAND_BOOST_FACTOR,
    GSCAN_ATTRIBUTE_A_BAND_PENALTY_FACTOR,
    GSCAN_ATTRIBUTE_A_BAND_MAX_BOOST,
    GSCAN_ATTRIBUTE_LAZY_ROAM_HYSTERESIS,
    GSCAN_ATTRIBUTE_ALERT_ROAM_RSSI_TRIGGER,
    GSCAN_ATTRIBUTE_LAZY_ROAM_ENABLE,

    /* BSSID blacklist */
    GSCAN_ATTRIBUTE_BSSID_BLACKLIST_FLUSH = 100,
    GSCAN_ATTRIBUTE_BLACKLIST_BSSID,

    /* ANQPO */
    GSCAN_ATTRIBUTE_ANQPO_HS_LIST = 110,
    GSCAN_ATTRIBUTE_ANQPO_HS_LIST_SIZE,
    GSCAN_ATTRIBUTE_ANQPO_HS_NETWORK_ID,
    GSCAN_ATTRIBUTE_ANQPO_HS_NAI_REALM,
    GSCAN_ATTRIBUTE_ANQPO_HS_ROAM_CONSORTIUM_ID,
    GSCAN_ATTRIBUTE_ANQPO_HS_PLMN,

    /* ePNO cfg */
    GSCAN_ATTRIBUTE_EPNO_5G_RSSI_THR = 130,
    GSCAN_ATTRIBUTE_EPNO_2G_RSSI_THR,
    GSCAN_ATTRIBUTE_EPNO_INIT_SCORE_MAX,
    GSCAN_ATTRIBUTE_EPNO_CUR_CONN_BONUS,
    GSCAN_ATTRIBUTE_EPNO_SAME_NETWORK_BONUS,
    GSCAN_ATTRIBUTE_EPNO_SECURE_BONUS,
    GSCAN_ATTRIBUTE_EPNO_5G_BONUS,

    GSCAN_ATTRIBUTE_MAX

} GSCAN_ATTRIBUTE;


typedef enum {
    GSCAN_EVENT_SIGNIFICANT_CHANGE_RESULTS,
    GSCAN_EVENT_HOTLIST_RESULTS_FOUND,
    GSCAN_EVENT_SCAN_RESULTS_AVAILABLE,
    GSCAN_EVENT_FULL_SCAN_RESULTS,
    RTT_EVENT_COMPLETE,
    GSCAN_EVENT_COMPLETE_SCAN,
    GSCAN_EVENT_HOTLIST_RESULTS_LOST,
    WIFI_EVENT_RSSI_MONITOR,
    GSCAN_EVENT_EPNO_EVENT,
    GSCAN_EVENT_ANQPO_HOTSPOT_MATCH,
} WIFI_VENDOR_EVENT;

typedef void (*wifi_internal_event_handler) (wifi_handle handle, int events);

class WifiCommand;

typedef struct {
    int nl_cmd;
    uint32_t vendor_id;
    int vendor_subcmd;
    nl_recvmsg_msg_cb_t cb_func;
    void *cb_arg;
} cb_info;

typedef struct {
    wifi_request_id id;
    WifiCommand *cmd;
} cmd_info;

typedef struct {
    wifi_handle handle;                             // handle to wifi data
    char name[IFNAMSIZ+1];                          // interface name + trailing null
    int  id;                                        // id to use when talking to driver
} interface_info;

typedef struct {

    struct nl_sock *cmd_sock;                       // command socket object
    struct nl_sock *event_sock;                     // event socket object
    int nl80211_family_id;                          // family id for 80211 driver
    int cleanup_socks[2];                           // sockets used to implement wifi_cleanup

    bool in_event_loop;                             // Indicates that event loop is active
    bool clean_up;                                  // Indication to clean up the socket

    wifi_internal_event_handler event_handler;      // default event handler
    wifi_cleaned_up_handler cleaned_up_handler;     // socket cleaned up handler

    cb_info *event_cb;                              // event callbacks
    int num_event_cb;                               // number of event callbacks
    int alloc_event_cb;                             // number of allocated callback objects
    pthread_mutex_t cb_lock;                        // mutex for the event_cb access

    cmd_info *cmd;                                  // Outstanding commands
    int num_cmd;                                    // number of commands
    int alloc_cmd;                                  // number of commands allocated

    interface_info **interfaces;                    // array of interfaces
    int num_interfaces;                             // number of interfaces


    // add other details
} hal_info;

#define PNO_SSID_FOUND  0x1
#define PNO_SSID_LOST    0x2

typedef struct wifi_pno_result {
    unsigned char ssid[DOT11_MAX_SSID_LEN];
    unsigned char ssid_len;
    signed char rssi;
    u16 channel;
    u16 flags;
    mac_addr  bssid;
} wifi_pno_result_t;

typedef struct wifi_gscan_result {
    u64 ts;                           // Time of discovery
    u8 ssid[DOT11_MAX_SSID_LEN+1];    // null terminated
    mac_addr bssid;                   // BSSID
    u32 channel;                      // channel frequency in MHz
    s32 rssi;                         // in db
    u64 rtt;                          // in nanoseconds
    u64 rtt_sd;                       // standard deviation in rtt
    u16 beacon_period;                // units are Kusec
    u16 capability;                   // Capability information
    u32 ie_length;
    char ie_data[1];
} wifi_gscan_result_t;

typedef struct wifi_gscan_full_result {
    wifi_gscan_result_t fixed;
    u32 scan_ch_bucket;              // scan chbucket bitmask
    u32 ie_length;                   // byte length of Information Elements
    u8  ie_data[1];                  // IE data to follow
} wifi_gscan_full_result_t;

wifi_error wifi_register_handler(wifi_handle handle, int cmd, nl_recvmsg_msg_cb_t func, void *arg);
wifi_error wifi_register_vendor_handler(wifi_handle handle,
            uint32_t id, int subcmd, nl_recvmsg_msg_cb_t func, void *arg);

void wifi_unregister_handler(wifi_handle handle, int cmd);
void wifi_unregister_vendor_handler(wifi_handle handle, uint32_t id, int subcmd);

wifi_error wifi_register_cmd(wifi_handle handle, int id, WifiCommand *cmd);
WifiCommand *wifi_unregister_cmd(wifi_handle handle, int id);
WifiCommand *wifi_get_cmd(wifi_handle handle, int id);
void wifi_unregister_cmd(wifi_handle handle, WifiCommand *cmd);

interface_info *getIfaceInfo(wifi_interface_handle);
wifi_handle getWifiHandle(wifi_interface_handle handle);
hal_info *getHalInfo(wifi_handle handle);
hal_info *getHalInfo(wifi_interface_handle handle);
wifi_handle getWifiHandle(hal_info *info);
wifi_interface_handle getIfaceHandle(interface_info *info);
wifi_error wifi_cancel_cmd(wifi_request_id id, wifi_interface_handle iface);

// some common macros

#define min(x, y)       ((x) < (y) ? (x) : (y))
#define max(x, y)       ((x) > (y) ? (x) : (y))

#endif

