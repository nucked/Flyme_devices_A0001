.class public final Lcom/qti/dpm/DpmService;
.super Lcom/qti/dpm/IDpmService$Stub;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/dpm/DpmService$2;,
        Lcom/qti/dpm/DpmService$PackageListener;,
        Lcom/qti/dpm/DpmService$DpmReceiver;,
        Lcom/qti/dpm/DpmService$DpmSender;,
        Lcom/qti/dpm/DpmService$ApnTypeToInt;,
        Lcom/qti/dpm/DpmService$DpmWwanInfo;,
        Lcom/qti/dpm/DpmService$DpmWifiInfo;,
        Lcom/qti/dpm/DpmService$DpmRatInfo;,
        Lcom/qti/dpm/DpmService$FeatureType;
    }
.end annotation


# static fields
.field private static final CLAT_INTERFACE_NAME:Ljava/lang/String; = "clat4"

.field public static final CT_FEATURE:I = 0x2

.field private static final DBG:Z = false

.field private static final DPM_CONFIG_FEATURE_MASK_NSRM:I = 0x4

.field static final DPM_DEBUG_LOGLEVEL:I = 0xf86

.field static final DPM_D_NOTIFY_NSRM_BLOCKED_UID:I = 0x8

.field static final DPM_D_REQ_REQUEST_GET_APP_INFO_LIST:I = 0x1

.field static final DPM_MAX_COMMAND_BYTES:I = 0x2000

.field static final DPM_NET_SUBTYPE_WLAN_B:I = 0x14

.field static final DPM_NET_SUBTYPE_WLAN_G:I = 0x15

.field public static final DPM_PREFERENCE_CHANGED_ACTION:Ljava/lang/String; = "com.qti.dpmframework.DPM_PREFERENCE_CHANGED"

.field public static final DPM_RET_BUSY:I = -0x2

.field public static final DPM_RET_ERROR:I = -0x1

.field public static final DPM_RET_FEATURE_UNSUPPORTED:I = -0x4

.field public static final DPM_RET_FILE_SIZE_TOO_LARGE:I = -0x5

.field public static final DPM_RET_INVALID_ARGS:I = -0x3

.field public static final DPM_RET_INVALID_VERSION:I = -0x8

.field public static final DPM_RET_PATH_ACCESS_DENIED:I = -0x6

.field public static final DPM_RET_PATH_NAME_TOO_LONG:I = -0x7

.field public static final DPM_RET_SUCCESS:I = 0x3e8

.field static final DPM_S_NOTIFY_APP_INFO_LIST_CHG:I = 0xd

.field static final DPM_S_NOTIFY_INIT_DONE:I = 0x9

.field public static final DPM_S_NOTIFY_NSRM_BKG_EVT_STATE_CHG:I = 0xc

.field static final DPM_S_NOTIFY_SCREEN_STATE_CHG:I = 0xe

.field static final DPM_S_NOTIFY_TETHERING_STATE_CHG:I = 0xf

.field static final DPM_S_NOTIFY_WLAN_STATE_CHG:I = 0xa

.field static final DPM_S_NOTIFY_WWAN_STATE_CHG:I = 0xb

.field static final DPM_S_REQ_GET_FEATURE_STATUS:I = 0x2

.field static final DPM_S_REQ_REFRESH_NSRM_CONFIG:I = 0x6

.field static final DPM_S_REQ_SET_FEATURE_STATUS:I = 0x4

.field static final DPM_S_RSP_GET_FEATURE_STATUS:I = 0x3

.field static final DPM_S_RSP_REFRESH_NSRM_CONFIG:I = 0x7

.field static final DPM_S_RSP_SET_FEATURE_STATUS:I = 0x5

.field static final DPM_VERBOSE_LOGLEVEL:I = 0x1e91

.field public static final EVENT_POSTDPMDINIT:I = 0x3

.field public static final EVENT_SEND:I = 0x1

.field public static final EVENT_TOGGLE_WIFI:I = 0x2

.field public static final EXTRA_FEATURE_ID:Ljava/lang/String; = "dpmFeatureId"

.field public static final EXTRA_FEATURE_PARAMETER:Ljava/lang/String; = "dpmFeatureParameter"

.field public static final EXTRA_PARAMETER_VALUE:Ljava/lang/String; = "dpmParameterValue"

.field public static final FD_FEATURE:I = 0x1

.field private static final MAX_DNS_ADDRS:I = 0x2

.field public static final NSRM_FEATURE:I = 0x3

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final SOCKET_NAME_DPM:Ljava/lang/String; = "dpmd"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final SUB_TYPE:Ljava/lang/String; = "SERVICE"

.field public static final dataPath:Ljava/lang/String; = "/data/dpm/"

.field static isDispatched:Z = false

.field static isDpmdDisconnected:Z = false

.field static isDpmdUp:Z = false

.field public static final systemPath:Ljava/lang/String; = "/system/etc/dpm/"


# instance fields
.field DPM_EVENT_STATE_OFF:Z

.field DPM_EVENT_STATE_ON:Z

.field private _dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

.field private _dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

.field alarmMgr:Landroid/app/IAlarmManager;

.field apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

.field private bluetoothTethered:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultNetwork:I

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mNsrm:Lcom/qti/dpm/DpmNsrm;

.field private mNsrmClass:Ljava/lang/Class;

.field private mNsrmObj:Ljava/lang/Object;

.field mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

.field mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

.field mReceiverThread:Ljava/lang/Thread;

.field mRequestMessagesPending:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qti/dpm/DpmRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field mSender:Lcom/qti/dpm/DpmService$DpmSender;

.field mSenderThread:Landroid/os/HandlerThread;

.field mSocket:Landroid/net/LocalSocket;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field powerMgr:Landroid/os/IPowerManager;

.field private usbTethered:Z

.field private wifiTethered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    sput-boolean v0, Lcom/qti/dpm/DpmService;->isDpmdUp:Z

    .line 126
    sput-boolean v0, Lcom/qti/dpm/DpmService;->isDpmdDisconnected:Z

    .line 129
    sput-boolean v0, Lcom/qti/dpm/DpmService;->isDispatched:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 841
    invoke-direct {p0}, Lcom/qti/dpm/IDpmService$Stub;-><init>()V

    .line 96
    iput-object v4, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    .line 97
    iput-object v4, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    .line 98
    iput-object v4, p0, Lcom/qti/dpm/DpmService;->mNsrmClass:Ljava/lang/Class;

    .line 99
    iput-object v4, p0, Lcom/qti/dpm/DpmService;->mNsrmObj:Ljava/lang/Object;

    .line 100
    iput-object v4, p0, Lcom/qti/dpm/DpmService;->powerMgr:Landroid/os/IPowerManager;

    .line 101
    iput-object v4, p0, Lcom/qti/dpm/DpmService;->alarmMgr:Landroid/app/IAlarmManager;

    .line 106
    iput-boolean v5, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    .line 107
    iput-boolean v5, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    .line 108
    iput-boolean v5, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    .line 170
    iput-boolean v6, p0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    .line 171
    iput-boolean v5, p0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    .line 178
    const/16 v3, 0x11

    iput v3, p0, Lcom/qti/dpm/DpmService;->mDefaultNetwork:I

    .line 386
    new-instance v3, Lcom/qti/dpm/DpmService$ApnTypeToInt;

    invoke-direct {v3, p0, v4}, Lcom/qti/dpm/DpmService$ApnTypeToInt;-><init>(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$1;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    .line 388
    new-instance v3, Lcom/qti/dpm/DpmService$1;

    invoke-direct {v3, p0}, Lcom/qti/dpm/DpmService$1;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 844
    iput v5, p0, Lcom/qti/dpm/DpmService;->mRequestMessagesPending:I

    .line 845
    iput-object p1, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    .line 846
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Landroid/os/IPowerManager;

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->powerMgr:Landroid/os/IPowerManager;

    .line 847
    const-string v3, "alarm"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Landroid/app/IAlarmManager;

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->alarmMgr:Landroid/app/IAlarmManager;

    .line 848
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "DPMSender"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    .line 849
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 851
    const-string v3, "persist.dpm.loglevel"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 852
    .local v2, "val":I
    const/16 v3, 0xf86

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1e91

    if-ne v2, v3, :cond_1

    .line 853
    :cond_0
    sput-boolean v6, Lcom/qti/dpm/DpmMsg;->ADDTL_MSG:Z

    .line 856
    :cond_1
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 857
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_2

    .line 858
    const-string v3, "SERVICE"

    const-string v4, "Looper obj is NULL."

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :goto_0
    return-void

    .line 861
    :cond_2
    new-instance v3, Lcom/qti/dpm/DpmService$DpmSender;

    invoke-direct {v3, p0, v1}, Lcom/qti/dpm/DpmService$DpmSender;-><init>(Lcom/qti/dpm/DpmService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    .line 863
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 864
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 874
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 875
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 877
    new-instance v3, Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-direct {v3, p0}, Lcom/qti/dpm/DpmService$DpmWifiInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .line 878
    new-instance v3, Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-direct {v3, p0}, Lcom/qti/dpm/DpmService$DpmWwanInfo;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .line 879
    new-instance v3, Lcom/qti/dpm/DpmService$DpmReceiver;

    invoke-direct {v3, p0}, Lcom/qti/dpm/DpmService$DpmReceiver;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

    .line 880
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mReceiver:Lcom/qti/dpm/DpmService$DpmReceiver;

    const-string v5, "DPMReceiver"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/qti/dpm/DpmService;->mReceiverThread:Ljava/lang/Thread;

    .line 881
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 882
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->initNsrm()V

    goto :goto_0
.end method

.method private NetworkStateStringToInt(Ljava/lang/String;)I
    .locals 7
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 979
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 991
    const/4 v0, 0x5

    :goto_1
    :pswitch_0
    return v0

    .line 979
    :sswitch_0
    const-string v6, "CONNECTING"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v6, "CONNECTED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_2
    const-string v6, "SUSPENDED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_3
    const-string v6, "DISCONNECTING"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_4
    const-string v6, "DISCONNECTED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 983
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 985
    goto :goto_1

    :pswitch_3
    move v0, v3

    .line 987
    goto :goto_1

    :pswitch_4
    move v0, v4

    .line 989
    goto :goto_1

    .line 979
    :sswitch_data_0
    .sparse-switch
        -0x7c6dfd17 -> :sswitch_1
        -0x3eb5be5a -> :sswitch_3
        -0x11519548 -> :sswitch_0
        0x37c8963b -> :sswitch_4
        0x430d9dbb -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private NetworkStateToInt(Landroid/net/NetworkInfo$State;)I
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 996
    sget-object v0, Lcom/qti/dpm/DpmService$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1010
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 998
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1000
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1002
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1004
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1006
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1008
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/qti/dpm/DpmService;Landroid/net/NetworkInfo$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->setWwanInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWwanInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->dlogd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/qti/dpm/DpmService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/qti/dpm/DpmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->wifiTethered:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/qti/dpm/DpmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->usbTethered:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/qti/dpm/DpmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->bluetoothTethered:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/qti/dpm/DpmService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendTetheringState(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/qti/dpm/DpmService;I)Lcom/qti/dpm/DpmRequest;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/qti/dpm/DpmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->postDpmdUpInit()V

    return-void
.end method

.method static synthetic access$2300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/qti/dpm/DpmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->sendInitReq()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/qti/dpm/DpmService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->requestFeaturesSettings()V

    return-void
.end method

.method static synthetic access$2800(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmService;->readDPMMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/qti/dpm/DpmService;Landroid/os/Parcel;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processResponse(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Lcom/qti/dpm/DpmRequest;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendAppInfoList(Lcom/qti/dpm/DpmRequest;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qti/dpm/DpmService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendScreenState(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/qti/dpm/DpmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/qti/dpm/DpmService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->setWlanInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWifiInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/dpm/DpmService;
    .param p1, "x1"    # Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    return-void
.end method

.method private static dlogd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1518
    return-void
.end method

.method private static dloge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1530
    return-void
.end method

.method private static dlogi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1524
    return-void
.end method

.method private static dlogv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1521
    return-void
.end method

.method private static dlogw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1527
    return-void
.end method

.method private findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;
    .locals 5
    .param p1, "serial"    # I

    .prologue
    .line 916
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 917
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 918
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/dpm/DpmRequest;

    .line 919
    .local v1, "rr":Lcom/qti/dpm/DpmRequest;
    iget v3, v1, Lcom/qti/dpm/DpmRequest;->mSerial:I

    if-ne v3, p1, :cond_0

    .line 920
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 921
    monitor-exit v4

    .line 925
    .end local v1    # "rr":Lcom/qti/dpm/DpmRequest;
    :goto_1
    return-object v1

    .line 917
    .restart local v1    # "rr":Lcom/qti/dpm/DpmRequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    .end local v1    # "rr":Lcom/qti/dpm/DpmRequest;
    :cond_1
    monitor-exit v4

    .line 925
    const/4 v1, 0x0

    goto :goto_1

    .line 924
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getWlanDns()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 1014
    new-array v3, v9, [Ljava/lang/String;

    .line 1015
    .local v3, "dnsInfo":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_0

    .line 1016
    const-string v7, "0.0.0.0"

    aput-object v7, v3, v5

    .line 1015
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1021
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 1022
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    .line 1023
    .local v2, "dnsAddress":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v5, 0x0

    .line 1024
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1025
    .local v0, "addr":Ljava/net/InetAddress;
    if-lt v5, v9, :cond_2

    .line 1027
    const-string v7, "SERVICE"

    const-string v8, "getWlanDns: Max dns addrs reached"

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "dnsAddress":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    return-object v3

    .line 1030
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "dnsAddress":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1031
    add-int/lit8 v5, v5, 0x1

    .line 1032
    goto :goto_1

    .line 1035
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "dnsAddress":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 1036
    .local v4, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getWlanDns caught out of bound exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1037
    .end local v4    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v4

    .line 1038
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getWlanDns caught null ptr exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1039
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    .line 1040
    .local v4, "ex":Ljava/lang/Exception;
    const-string v7, "SERVICE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getWlanDns caught unexpected exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private handleGetAppInfoMsg(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmService$PackageListener;->sendInstalledPackageInfo()Z

    .line 805
    :cond_0
    return-void
.end method

.method private handleNsrmBlockedUid(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 808
    const-string v4, "SERVICE"

    const-string v5, "handleNsrmBlockedUid called"

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->dlogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 810
    .local v3, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 811
    .local v2, "isBlockedInt":I
    if-ne v2, v1, :cond_0

    .line 813
    .local v1, "isBlocked":Z
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->powerMgr:Landroid/os/IPowerManager;

    invoke-interface {v4, v3, v1}, Landroid/os/IPowerManager;->updateBlockedUids(IZ)V

    .line 814
    iget-object v4, p0, Lcom/qti/dpm/DpmService;->alarmMgr:Landroid/app/IAlarmManager;

    invoke-interface {v4, v3, v1}, Landroid/app/IAlarmManager;->updateBlockedUids(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 820
    :goto_1
    return-void

    .line 811
    .end local v1    # "isBlocked":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 815
    .restart local v1    # "isBlocked":Z
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 817
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "SERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm/power obj NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initNsrm()V
    .locals 5

    .prologue
    .line 891
    const-string v2, "persist.dpm.feature"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 892
    .local v0, "dpmFeature":I
    const/4 v1, 0x0

    .line 893
    .local v1, "nsrmFeature":Z
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 894
    const/4 v1, 0x1

    .line 895
    :cond_0
    const-string v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initNsrm nsrmFeature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    if-eqz v1, :cond_1

    .line 897
    new-instance v2, Lcom/qti/dpm/DpmService$PackageListener;

    invoke-direct {v2, p0}, Lcom/qti/dpm/DpmService$PackageListener;-><init>(Lcom/qti/dpm/DpmService;)V

    iput-object v2, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    .line 898
    new-instance v2, Lcom/qti/dpm/DpmNsrm;

    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/qti/dpm/DpmNsrm;-><init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V

    iput-object v2, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    .line 900
    :cond_1
    return-void
.end method

.method private static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1502
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1514
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    return-void
.end method

.method private static logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1508
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void
.end method

.method private static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1505
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    return-void
.end method

.method private static logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1511
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    return-void
.end method

.method private postDpmdUpInit()V
    .locals 5

    .prologue
    .line 770
    const-string v3, "SERVICE"

    const-string v4, "starting initialization of components that require dpmd to have started"

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;

    move-result-object v0

    .line 777
    .local v0, "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    if-eqz v0, :cond_0

    .line 778
    invoke-direct {p0, v0}, Lcom/qti/dpm/DpmService;->sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-result-object v1

    .line 781
    .local v1, "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    if-eqz v1, :cond_1

    .line 782
    invoke-direct {p0, v1}, Lcom/qti/dpm/DpmService;->sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    .line 786
    :cond_1
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 787
    .local v2, "pm":Landroid/os/PowerManager;
    if-eqz v2, :cond_2

    .line 788
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/qti/dpm/DpmService;->mScreenOn:Z

    .line 789
    iget-boolean v3, p0, Lcom/qti/dpm/DpmService;->mScreenOn:Z

    invoke-direct {p0, v3}, Lcom/qti/dpm/DpmService;->sendScreenState(Z)V

    .line 792
    :cond_2
    sget-boolean v3, Lcom/qti/dpm/DpmService;->isDpmdDisconnected:Z

    if-eqz v3, :cond_3

    .line 793
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    if-eqz v3, :cond_3

    .line 794
    iget-object v3, p0, Lcom/qti/dpm/DpmService;->mPackageListener:Lcom/qti/dpm/DpmService$PackageListener;

    invoke-virtual {v3}, Lcom/qti/dpm/DpmService$PackageListener;->sendInstalledPackageInfo()Z

    .line 798
    :cond_3
    invoke-virtual {p0}, Lcom/qti/dpm/DpmService;->nsrmPostInit()V

    .line 799
    return-void
.end method

.method private processResponse(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 905
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 906
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processUnsolicited(Landroid/os/Parcel;)V

    .line 913
    :goto_0
    return-void

    .line 907
    :cond_0
    if-nez v0, :cond_1

    .line 908
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->processSolicited(Landroid/os/Parcel;)V

    goto :goto_0

    .line 910
    :cond_1
    const-string v1, "SERVICE"

    const-string v2, "malformed message, expected RESPONSE_UNSOLICITED or RESPONSE_SOLICITED, rejecting"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSolicited(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 931
    .local v2, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 933
    .local v0, "error":I
    invoke-direct {p0, v2}, Lcom/qti/dpm/DpmService;->findAndRemoveRequestFromList(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v1

    .line 934
    .local v1, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v1, :cond_0

    .line 935
    const-string v3, "SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected solicited response! sn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :goto_0
    return-void

    .line 939
    :cond_0
    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {v1, v0}, Lcom/qti/dpm/DpmRequest;->onError(I)V

    .line 941
    invoke-virtual {v1}, Lcom/qti/dpm/DpmRequest;->release()V

    goto :goto_0

    .line 944
    :cond_1
    invoke-virtual {v1}, Lcom/qti/dpm/DpmRequest;->release()V

    goto :goto_0
.end method

.method private processUnsolicited(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 948
    const-string v1, "SERVICE"

    const-string v2, "processUnsolicited called"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 952
    .local v0, "response":I
    packed-switch v0, :pswitch_data_0

    .line 973
    :goto_0
    :pswitch_0
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKOWN Unsolicited Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :goto_1
    return-void

    .line 954
    :pswitch_1
    const-string v1, "SERVICE"

    const-string v2, "DPM_S_RESP_SET_FEATURE_STATUS received"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleFeatureStatusSetResponse(Landroid/os/Parcel;)V

    goto :goto_1

    .line 958
    :pswitch_2
    const-string v1, "SERVICE"

    const-string v2, "DPM_D_REQ_REQUEST_GET_APP_INFO_LIST"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->handleGetAppInfoMsg(Landroid/os/Parcel;)V

    goto :goto_1

    .line 962
    :pswitch_3
    const-string v1, "SERVICE"

    const-string v2, "DPM_D_NOTIFY_NSRM_BLOCKED_UID received"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-direct {p0, p1}, Lcom/qti/dpm/DpmService;->handleNsrmBlockedUid(Landroid/os/Parcel;)V

    goto :goto_1

    .line 966
    :pswitch_4
    const-string v1, "SERVICE"

    const-string v2, "DPM_S_RSP_REFRESH_NSRM_CONFIG"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleNsrmRefreshResponse(Landroid/os/Parcel;)V

    goto :goto_1

    .line 970
    :pswitch_5
    const-string v1, "SERVICE"

    const-string v2, "DPM_S_RSP_GET_FEATURE_STATUS"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->handleFeatureStatusNotification(Landroid/os/Parcel;)V

    goto :goto_0

    .line 952
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static readDPMMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 610
    const/4 v2, 0x0

    .line 611
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 613
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 615
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 616
    const-string v5, "SERVICE"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 644
    :goto_0
    return v1

    .line 620
    :cond_1
    add-int/2addr v2, v0

    .line 621
    sub-int/2addr v3, v0

    .line 622
    if-gtz v3, :cond_0

    .line 624
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 629
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 630
    move v3, v1

    .line 632
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 634
    if-gez v0, :cond_3

    .line 635
    const-string v5, "SERVICE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 637
    goto :goto_0

    .line 640
    :cond_3
    add-int/2addr v2, v0

    .line 641
    sub-int/2addr v3, v0

    .line 642
    if-gtz v3, :cond_2

    goto :goto_0
.end method

.method private requestFeatureSettings(I)Z
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 828
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 829
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 830
    const-string v1, "SERVICE"

    const-string v2, "requestFeatureSettings: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v1, 0x0

    .line 837
    :goto_0
    return v1

    .line 833
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const-string v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFeatureSettings: featureId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    goto :goto_0
.end method

.method private requestFeaturesSettings()V
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/qti/dpm/DpmService;->requestFeatureSettings(I)Z

    .line 825
    return-void
.end method

.method private static rlog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1536
    invoke-static {p0, p1}, Lcom/qti/dpm/DpmMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    return-void
.end method

.method private sendAppInfoList(Lcom/qti/dpm/DpmRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;

    .prologue
    .line 1171
    const-string v0, "SERVICE"

    const-string v1, "sendAppInfoList"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0, p1}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1173
    return-void
.end method

.method private sendInitReq()Z
    .locals 3

    .prologue
    .line 1161
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1162
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1163
    const-string v1, "SERVICE"

    const-string v2, "sendinitReq: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const/4 v1, 0x0

    .line 1167
    :goto_0
    return v1

    .line 1166
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1167
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendScreenState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1135
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1136
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1137
    const-string v1, "SERVICE"

    const-string v2, "sendScreenState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    :goto_0
    return-void

    .line 1140
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendScreenState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    goto :goto_0

    .line 1141
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sendTetheringState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1148
    const/16 v2, 0xf

    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1149
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1150
    const-string v1, "SERVICE"

    const-string v2, "sendTetheringState: rr = NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :goto_0
    return-void

    .line 1153
    :cond_0
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    iget-object v2, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTetheringState: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    goto :goto_0

    .line 1154
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V
    .locals 12
    .param p1, "dpmWifiInfo"    # Lcom/qti/dpm/DpmService$DpmWifiInfo;

    .prologue
    .line 1047
    iget-object v9, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_3

    if-eqz p1, :cond_3

    .line 1049
    :try_start_0
    invoke-direct {p0}, Lcom/qti/dpm/DpmService;->getWlanDns()[Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "dnsInfo":[Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string v9, " "

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v1, "dnsAddrs":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 1053
    .local v3, "dnsStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1052
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1056
    .end local v3    # "dnsStr":Ljava/lang/String;
    :cond_0
    const-string v9, "SERVICE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendWifiStatus - subType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " networkState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " softApState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ssid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bssid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ipV4Addr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ifNameV4="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ipAddrV6="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ifNameV6="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " DNS addrs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qti/dpm/DpmService;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const/16 v9, 0xa

    invoke-static {v9}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v8

    .line 1070
    .local v8, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v8, :cond_1

    .line 1071
    const-string v9, "SERVICE"

    const-string v10, "updateWlanStatus: rr=NULL - no updated"

    invoke-static {v9, v10}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dnsAddrs":Ljava/lang/String;
    .end local v2    # "dnsInfo":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "rr":Lcom/qti/dpm/DpmRequest;
    :goto_1
    return-void

    .line 1075
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "dnsAddrs":Ljava/lang/String;
    .restart local v2    # "dnsInfo":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v8    # "rr":Lcom/qti/dpm/DpmRequest;
    :cond_1
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1080
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1081
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1082
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1083
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1084
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v10, p1, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1085
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v9, 0x2

    if-ge v4, v9, :cond_2

    .line 1086
    iget-object v9, v8, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1085
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1088
    :cond_2
    invoke-virtual {p0, v8}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1089
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dnsAddrs":Ljava/lang/String;
    .end local v2    # "dnsInfo":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "rr":Lcom/qti/dpm/DpmRequest;
    :catch_0
    move-exception v7

    .line 1090
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v9, "SERVICE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendWifiStatus: null pointer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1093
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :cond_3
    const-string v9, "SERVICE"

    const-string v10, "sendWlanStatus: null mWifiManager or dpmWifiInfo"

    invoke-static {v9, v10}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V
    .locals 5
    .param p1, "dpmWwanInfo"    # Lcom/qti/dpm/DpmService$DpmWwanInfo;

    .prologue
    .line 1098
    iget-object v2, p0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1100
    const/16 v2, 0xb

    :try_start_0
    invoke-static {v2}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v1

    .line 1101
    .local v1, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v1, :cond_0

    .line 1102
    const-string v2, "SERVICE"

    const-string v3, "sendWwanStatus: rr=NULL - no updated"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_0
    const-string v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendWwanStatus type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipV4Addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ifNameV4="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipV6Addr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ifNameV6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mccMnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkType:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1120
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1121
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1122
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1123
    iget-object v2, v1, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    iget-object v3, p1, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0, v1}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    .end local v1    # "rr":Lcom/qti/dpm/DpmRequest;
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendWwanStatus: null pointer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1130
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    const-string v2, "SERVICE"

    const-string v3, "sendWwanStatus: null TelephonyManager or dpmWwanInfo"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->dlogw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWlanInfo(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 241
    if-nez p1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 246
    .local v3, "dpmNi":Landroid/net/NetworkInfo;
    const-string v8, "linkProperties"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 247
    .local v2, "dpmLp":Landroid/net/LinkProperties;
    const-string v8, "bssid"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "bssid":Ljava/lang/String;
    const-string v8, "wifiInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiInfo;

    .line 249
    .local v4, "dpmWi":Landroid/net/wifi/WifiInfo;
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    const/16 v9, 0x15

    iput v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->subType:I

    .line 251
    if-eqz v3, :cond_2

    .line 252
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qti/dpm/DpmService;->NetworkStateToInt(Landroid/net/NetworkInfo$State;)I

    move-result v9

    iput v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->networkState:I

    .line 255
    :cond_2
    if-eqz v2, :cond_5

    .line 256
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v7

    .line 257
    .local v7, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 258
    .local v6, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 259
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v8, v0, Ljava/net/Inet4Address;

    if-eqz v8, :cond_4

    .line 260
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_3

    .line 261
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV4:Ljava/lang/String;

    .line 262
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_1

    .line 265
    :cond_4
    instance-of v8, v0, Ljava/net/Inet6Address;

    if-eqz v8, :cond_3

    .line 266
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_3

    .line 267
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ifNameV6:Ljava/lang/String;

    .line 268
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ipAddrV6:Ljava/lang/String;

    goto :goto_1

    .line 274
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "linkAddress":Landroid/net/LinkAddress;
    .end local v7    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_5
    if-eqz v4, :cond_6

    .line 275
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    iput v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->rssi:I

    .line 276
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->ssid:Ljava/lang/String;

    .line 277
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->bssid:Ljava/lang/String;

    .line 280
    :cond_6
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_0

    .line 281
    iget-object v8, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    iget-object v9, p0, Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    iput v9, v8, Lcom/qti/dpm/DpmService$DpmWifiInfo;->softApState:I

    goto/16 :goto_0
.end method

.method private setWwanInfo(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string v14, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 295
    .local v13, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/qti/dpm/DpmService;->NetworkStateStringToInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->networkState:I

    .line 296
    const-string v14, "apnType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qti/dpm/DpmService;->apnToInt:Lcom/qti/dpm/DpmService$ApnTypeToInt;

    # invokes: Lcom/qti/dpm/DpmService$ApnTypeToInt;->getApnIntValue(Ljava/lang/String;)I
    invoke-static {v15, v3}, Lcom/qti/dpm/DpmService$ApnTypeToInt;->access$100(Lcom/qti/dpm/DpmService$ApnTypeToInt;Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->apn:I

    .line 298
    const-string v14, "linkProperties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/LinkProperties;

    .line 299
    .local v10, "lp":Landroid/net/LinkProperties;
    if-eqz v10, :cond_8

    .line 300
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v9

    .line 301
    .local v9, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 302
    .local v8, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 303
    .local v1, "addr":Ljava/net/InetAddress;
    instance-of v14, v1, Ljava/net/Inet4Address;

    if-eqz v14, :cond_3

    .line 304
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_1

    .line 308
    :cond_3
    instance-of v14, v1, Ljava/net/Inet6Address;

    if-eqz v14, :cond_2

    .line 309
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_4

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV6:Ljava/lang/String;

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV6:Ljava/lang/String;

    .line 313
    :cond_4
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .line 314
    .local v7, "link":Landroid/net/LinkProperties;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "clat4"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 315
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v12

    .line 316
    .local v12, "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/LinkAddress;

    .line 317
    .local v11, "stackedLinkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v11}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 318
    .local v2, "address":Ljava/net/InetAddress;
    instance-of v14, v2, Ljava/net/Inet4Address;

    if-eqz v14, :cond_6

    .line 319
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_6

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 321
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_3

    .line 328
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "stackedLinkAddress":Landroid/net/LinkAddress;
    .end local v12    # "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_7
    const-string v14, "SERVICE"

    const-string v15, "no clat4 interface present for ipv6 address"

    invoke-static {v14, v15}, Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 335
    .end local v1    # "addr":Ljava/net/InetAddress;
    .end local v7    # "link":Landroid/net/LinkProperties;
    .end local v8    # "linkAddress":Landroid/net/LinkAddress;
    .end local v9    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v14, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    :goto_4
    iput v14, v15, Lcom/qti/dpm/DpmService$DpmWwanInfo;->roaming:I

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->mccMnc:Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qti/dpm/DpmService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v15

    iput v15, v14, Lcom/qti/dpm/DpmService$DpmWwanInfo;->subType:I

    goto/16 :goto_0

    .line 336
    :cond_9
    const/4 v14, 0x0

    goto :goto_4
.end method


# virtual methods
.method public checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z
    .locals 6
    .param p1, "feature"    # Lcom/qti/dpm/DpmService$FeatureType;

    .prologue
    const/4 v2, 0x0

    .line 1404
    const-string v3, "persist.dpm.feature"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1405
    .local v1, "value":I
    const/4 v0, 0x0

    .line 1406
    .local v0, "enabled":Z
    sget-object v3, Lcom/qti/dpm/DpmService$2;->$SwitchMap$com$qti$dpm$DpmService$FeatureType:[I

    invoke-virtual {p1}, Lcom/qti/dpm/DpmService$FeatureType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1411
    const/4 v0, 0x0

    .line 1414
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1415
    const-string v3, "SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :goto_1
    return v2

    .line 1408
    :pswitch_0
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1409
    const/4 v0, 0x1

    goto :goto_0

    .line 1418
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 1406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getNSRMEnabled()I
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmNsrm;->getNSRMEnabled()I

    move-result v0

    .line 1452
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public getPolicyVersion(I)I
    .locals 1
    .param p1, "policyType"    # I

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->getPolicyVersion(I)I

    move-result v0

    .line 1436
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->_dpmWifiInfo:Lcom/qti/dpm/DpmService$DpmWifiInfo;

    return-object v0
.end method

.method getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->_dpmWwanInfo:Lcom/qti/dpm/DpmService$DpmWwanInfo;

    return-object v0
.end method

.method public handleFeatureStatusNotification(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->handleFeatureStatusNotification(Landroid/os/Parcel;)V

    .line 1467
    :cond_0
    return-void
.end method

.method public handleFeatureStatusSetResponse(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->handleFeatureStatusSetResponse(Landroid/os/Parcel;)V

    .line 1473
    :cond_0
    return-void
.end method

.method public handleNsrmRefreshResponse(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->handleNsrmRefreshResponse(Landroid/os/Parcel;)V

    .line 1479
    :cond_0
    return-void
.end method

.method public nsrmConfigRefresh()Z
    .locals 3

    .prologue
    .line 1422
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1423
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1424
    const-string v1, "SERVICE"

    const-string v2, "nsrmConfigRefresh: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const/4 v1, 0x0

    .line 1428
    :goto_0
    return v1

    .line 1427
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1428
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public nsrmPostInit()V
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmNsrm;->nsrmPostInit()V

    .line 1485
    :cond_0
    return-void
.end method

.method public requestFeatureSettingsChange(II)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 1389
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/qti/dpm/DpmRequest;->obtain(I)Lcom/qti/dpm/DpmRequest;

    move-result-object v0

    .line 1390
    .local v0, "rr":Lcom/qti/dpm/DpmRequest;
    if-nez v0, :cond_0

    .line 1391
    const-string v1, "SERVICE"

    const-string v2, "requestFeatureSettingsChange: rr=NULL"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const/4 v1, 0x0

    .line 1400
    :goto_0
    return v1

    .line 1394
    :cond_0
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    iget-object v1, v0, Lcom/qti/dpm/DpmRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    const-string v1, "SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFeatureSettingsChange: feature id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmService;->dlogi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p0, v0}, Lcom/qti/dpm/DpmService;->send(Lcom/qti/dpm/DpmRequest;)V

    .line 1400
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized send(Lcom/qti/dpm/DpmRequest;)V
    .locals 3
    .param p1, "rr"    # Lcom/qti/dpm/DpmRequest;

    .prologue
    .line 886
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qti/dpm/DpmService;->mSender:Lcom/qti/dpm/DpmService$DpmSender;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/qti/dpm/DpmService$DpmSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 887
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    monitor-exit p0

    return-void

    .line 886
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendPrefChangedBroadcast(III)V
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "featureParameter"    # I
    .param p3, "value"    # I

    .prologue
    .line 1488
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.qti.dpmframework.DPM_PREFERENCE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "dpmFeatureId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1490
    const-string v2, "dpmFeatureParameter"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1491
    const-string v2, "dpmParameterValue"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    :try_start_1
    iget-object v2, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BROADCAST_STICKY"

    const-string v4, "DPM sendPrefChangedBroadcast()"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iget-object v2, p0, Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1499
    :goto_0
    monitor-exit p0

    return-void

    .line 1496
    :catch_0
    move-exception v1

    .line 1497
    .local v1, "se":Ljava/lang/SecurityException;
    :try_start_2
    const-string v2, "SERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPrefChangedBroadcast() SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1488
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setNSRMEnabled(I)I
    .locals 1
    .param p1, "nsrmSetType"    # I

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1}, Lcom/qti/dpm/DpmNsrm;->setNSRMEnabled(I)I

    move-result v0

    .line 1460
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public updatePolicy(ILjava/lang/String;)I
    .locals 1
    .param p1, "policyType"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/qti/dpm/DpmService;->mNsrm:Lcom/qti/dpm/DpmNsrm;

    invoke-virtual {v0, p1, p2}, Lcom/qti/dpm/DpmNsrm;->updatePolicy(ILjava/lang/String;)I

    move-result v0

    .line 1444
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method
