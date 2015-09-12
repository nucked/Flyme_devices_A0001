.class public Lcom/android/server/am/OnePlusProcessManager;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusProcessManager$OPPMValue;,
        Lcom/android/server/am/OnePlusProcessManager$OPPMKey;,
        Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;,
        Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;,
        Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final APP_WIDGET_FILE:Ljava/lang/String; = "appwidgets.xml"

.field private static final APP_WIDGET_PATH:Ljava/lang/String; = "/data/data_bpm/appwidgets.xml"

.field private static final BAD_APPS_FILE:Ljava/lang/String; = "bad_apps.xml"

.field private static final BAD_APPS_PATH:Ljava/lang/String; = "/data/data_bpm/bad_apps.xml"

.field private static final BPM_DIR:Ljava/lang/String; = "/data/data_bpm/"

.field private static final BPM_FILE:Ljava/lang/String; = "bpm.xml"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_FILE:Ljava/lang/String; = "bpm_sts.xml"

.field public static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final BRD_FILE:Ljava/lang/String; = "brd.xml"

.field private static final BRD_PATH:Ljava/lang/String; = "/data/data_bpm/brd.xml"

.field public static DEBUG:Z = false

.field public static DEBUG_DETAIL:Z = false

.field private static final INIT_CONFIG_DATA:I = 0x70

.field public static IN_USING:I = 0x0

.field private static final PHONE_PKG_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final PKG_FILE:Ljava/lang/String; = "pkg.xml"

.field private static final PKG_PATH:Ljava/lang/String; = "/data/data_bpm/pkg.xml"

.field public static final POLICY_USE_CGROUP:Z = true

.field private static final START_WATCHING:I = 0x6f

.field private static final SUSPEND_DELAY:J = 0x61a8L

.field private static final SYS_BRD_FILE:Ljava/lang/String; = "/system/bpm/brd.xml"

.field private static final SYS_PKG_FILE:Ljava/lang/String; = "/system/bpm/pkg.xml"

.field public static final SYS_STATUS_FILE:Ljava/lang/String; = "/system/bpm/bpm_sts.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusProcessManager"

.field private static final UPDATE_APPWIDGET:I = 0x69

.field private static final UPDATE_BAD:I = 0x68

.field private static final UPDATE_BPM:I = 0x65

.field private static final UPDATE_BRD:I = 0x66

.field private static final UPDATE_PKG:I = 0x67

.field private static final UPDATE_STS:I = 0x64

.field public static final VERSION:I = 0xe644d5

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService; = null

.field private static mBPMStatus:Z = false

.field static final mCgroupFreezerPath:Ljava/lang/String; = "/sys/fs/cgroup/freezer/"

.field public static mLock:Ljava/lang/Object;

.field private static mNotification:Landroid/app/INotificationManager;

.field private static mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

.field static mPhoneAppReady:Z

.field static mSuspentRecents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mSuspentUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBPMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

.field final mHandler:Landroid/os/Handler;

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field mResumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/OnePlusProcessManager$OPPMKey;",
            "Lcom/android/server/am/OnePlusProcessManager$OPPMValue;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeProcessHander:Landroid/os/Handler;

.field private mSuspendProcessHander:Landroid/os/Handler;

.field private mWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->IN_USING:I

    .line 90
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 91
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 98
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 100
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 103
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 109
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 155
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentRecents:Ljava/util/Vector;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    .line 158
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 609
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 105
    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 106
    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mAppWidgetList:Ljava/util/List;

    .line 153
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    .line 159
    new-instance v2, Lcom/android/server/am/OnePlusProcessManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusProcessManager$1;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mHandler:Landroid/os/Handler;

    .line 606
    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    .line 607
    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    .line 1955
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    .line 612
    const-string v2, "OnePlusProcessManager"

    const-string v3, "OnePlusProcessManager VERSION = v15090901"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v2, "sys.cgroup.version"

    const-string v3, "v15090901"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v2, "persist.sys.cgroup.debug"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 615
    const-string v2, "persist.sys.cgroup.debugdetail"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 617
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6f

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 618
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x70

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 620
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SuspenPorcessThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 621
    .local v1, "mSuspendThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 623
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ResumeProcessThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, "mResumeThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 625
    new-instance v2, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    .line 626
    new-instance v2, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHander;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    .line 627
    sput-object p1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 629
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareBPMConfigFiles()V

    .line 630
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 632
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusProcessManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusProcessManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isLocationApplication(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusProcessManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateProcessStateForChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusProcessManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioPids()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .prologue
    .line 1596
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 1598
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1599
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPidToCgroupTasksWithJudge():app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", --> childPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v1, "addPidToCgroupTasksWithJudge"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1603
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V

    .line 1606
    :cond_1
    return-void
.end method

.method private cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1021
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1022
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    .line 1023
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1024
    .local v3, "pkg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/OnePlusProcessManager$2;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/server/am/OnePlusProcessManager$2;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1033
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 1034
    return-void

    .line 1033
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 1065
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1066
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotificationsWithPkg():pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    if-nez v1, :cond_1

    .line 1077
    :goto_0
    return-void

    .line 1071
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception---->cancelNotificationsWithPkg():pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static final checkBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1714
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 1727
    :cond_0
    :goto_0
    return v0

    .line 1717
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 1718
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBroadcast(): app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1722
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_3

    .line 1723
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPM skip: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1727
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 7
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1755
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_0

    move v6, v0

    .line 1771
    :goto_0
    return v6

    .line 1758
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkPackageCanStart(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1761
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_1

    .line 1762
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not want to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_1
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1768
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    :cond_2
    move v6, v0

    .line 1771
    goto :goto_0
.end method

.method private checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 726
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_0

    .line 727
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIsNeedResumeProcess(): app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    if-nez p1, :cond_2

    .line 788
    :cond_1
    :goto_0
    return v2

    .line 733
    :cond_2
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_4

    .line 734
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_3

    .line 735
    const-string v2, "OnePlusProcessManager"

    const-string v4, "---->#return true , FIRST_APPLICATION_UID"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v2, v3

    .line 736
    goto :goto_0

    .line 739
    :cond_4
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_6

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 740
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_5

    .line 741
    const-string v2, "OnePlusProcessManager"

    const-string v4, "---->#return true,in system app"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v3

    .line 742
    goto :goto_0

    .line 745
    :cond_6
    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v4, :cond_8

    .line 746
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_7

    .line 747
    const-string v2, "OnePlusProcessManager"

    const-string v4, "---->#return true,persistent app"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v3

    .line 748
    goto :goto_0

    .line 751
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 753
    const-string v2, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->#return true,checkProcessAdj uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 754
    goto :goto_0

    .line 757
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkTouchWindow(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 759
    const-string v2, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---->#return true,touched window app uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 761
    goto/16 :goto_0

    .line 765
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 766
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_b

    .line 767
    const-string v2, "OnePlusProcessManager"

    const-string v4, "---->#return true,home app"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v2, v3

    .line 768
    goto/16 :goto_0

    .line 771
    :cond_c
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 772
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 773
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_e

    .line 774
    const-string v2, "OnePlusProcessManager"

    const-string v4, "---->#return true , in mPkgList"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v2, v3

    .line 775
    goto/16 :goto_0

    .line 786
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_f
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_1

    .line 787
    const-string v3, "OnePlusProcessManager"

    const-string v4, "---->#return false , others ------> bingo false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkIsSuspenProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method private checkProcessAdj(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "ret":Z
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-eqz v1, :cond_1

    .line 953
    :cond_0
    const/4 v0, 0x1

    .line 955
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 956
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessAdj(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_2
    return v0
.end method

.method static final checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1674
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v2, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return v0

    .line 1677
    :cond_1
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 1678
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkProcessWhileBroadcastTimeout(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "checkProcessWhileBroadcastTimeout "

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1682
    const-string v0, "OnePlusProcessManager"

    const-string v2, "checkProcessWhileBroadcastTimeout:broadcast proc is suspend, kill it"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 1684
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    move v0, v1

    .line 1685
    goto :goto_0
.end method

.method static final checkProcessWhileTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1653
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v2, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return v0

    .line 1656
    :cond_1
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 1657
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkProcessWhileTimeout(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "checkProcessWhileTimeout"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1660
    const-string v0, "OnePlusProcessManager"

    const-string v2, "checkProcessWhileTimeout():service is suspend, kill it in background!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 1662
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    move v0, v1

    .line 1663
    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1884
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile():fromFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1886
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1891
    :goto_0
    return-void

    .line 1889
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1890
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0
.end method

.method private getActiveAudioPids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 961
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 962
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_pid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "pids":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 968
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveAudioPids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioPidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBPMEnable_out()Z
    .locals 2

    .prologue
    .line 1179
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 1180
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Fatal: mOnePlusProcessManager = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v0, 0x0

    .line 1183
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager;->getBPMEnable()Z

    move-result v0

    goto :goto_0
.end method

.method private getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    const-string v1, "input_method"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService;

    .line 1410
    .local v0, "imManager":Lcom/android/server/InputMethodManagerService;
    if-eqz v0, :cond_0

    .line 1411
    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 1413
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusProcessManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 676
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 679
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method static final getLiveComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "wms"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    const/4 v1, 0x0

    .line 1566
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1567
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 1568
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.ImageWallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1570
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1575
    :cond_0
    return-object v1
.end method

.method public static final getLivePackageForLiveWallPaper()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1556
    const-string v2, "wallpaper"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1558
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->getLiveComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1559
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .locals 4
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 1528
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1529
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1530
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1531
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    monitor-exit v3

    .line 1535
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :goto_1
    return-object v1

    .line 1529
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1535
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_1

    .line 1536
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1540
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1541
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1542
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1543
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1544
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, p1, :cond_0

    .line 1545
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1548
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit v4

    return-object v2

    .line 1549
    .end local v0    # "i":I
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getWakeLockedPids()[I
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_0

    .line 990
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getWakeLockedPids()[I

    move-result-object v0

    return-object v0
.end method

.method static final handlePhoneAppReadyState(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1787
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1789
    const-string v0, "OnePlusProcessManager"

    const-string v1, "start phone proc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 1792
    :cond_1
    return-void
.end method

.method static final handlePhoneAppReadyState(Landroid/content/pm/ProviderInfo;)V
    .locals 6
    .param p0, "cpi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1800
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1801
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1802
    const-string v3, "OnePlusProcessManager"

    const-string v4, "content provider ,we start phone first "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 1805
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1807
    .local v0, "apps":Ljava/util/List;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1808
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1809
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1810
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v4, "com.android.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1811
    const-string v3, "OnePlusProcessManager"

    const-string v4, "we start phone ok"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1816
    .end local v0    # "apps":Ljava/util/List;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 1819
    :cond_2
    return-void
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1362
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInclude(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1822
    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    if-nez p1, :cond_1

    .line 1831
    :cond_0
    :goto_0
    return v4

    .line 1826
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1827
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1828
    const/4 v4, 0x1

    goto :goto_0

    .line 1826
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v4, 0x0

    .line 1384
    if-nez p1, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return v4

    .line 1388
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 1389
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v2, :cond_5

    .line 1390
    const/4 v3, 0x0

    .line 1391
    .local v3, "p":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1392
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1393
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_3

    .line 1394
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInputMethodApplication(): im="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1396
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_4

    .line 1397
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInputMethodApplication(): im="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 1402
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "p":Ljava/lang/String;
    :cond_5
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_0

    .line 1403
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInputMethodApplication(): app="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", return false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isLocationApplication(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 996
    const-string v4, "location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService;

    .line 998
    .local v1, "lm":Lcom/android/server/LocationManagerService;
    if-nez v1, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return v3

    .line 1001
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->getLocationListenersUid()[I

    move-result-object v2

    .line 1002
    .local v2, "uids":[I
    if-eqz v2, :cond_0

    .line 1005
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_2

    .line 1006
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLocationApplication(): uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 1008
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLocationApplication(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ---> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1011
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1012
    aget v4, v2, v0

    if-ne p1, v4, :cond_3

    .line 1013
    const/4 v3, 0x1

    goto :goto_0

    .line 1011
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static isSuspendUid(I)Z
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 1210
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1211
    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1212
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1213
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1835
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1836
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1837
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1838
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file don\'t exist!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    .end local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 1841
    .restart local v1    # "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1843
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 1845
    .local v7, "success":Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1847
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1850
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1851
    .local v9, "type":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 1852
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1853
    .local v8, "tag":Ljava/lang/String;
    const-string v11, "p"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1854
    const/4 v11, 0x0

    const-string v12, "att"

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1855
    .local v10, "value":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1856
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1860
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    .line 1861
    const/4 v7, 0x1

    .line 1866
    if-eqz v6, :cond_4

    .line 1867
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v5, v6

    .line 1873
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_6

    .line 1874
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " date size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_6
    if-eqz v7, :cond_8

    move-object v1, v4

    .line 1876
    goto :goto_0

    .line 1869
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 1872
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1862
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    .line 1863
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked():path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  --> failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1866
    if-eqz v5, :cond_5

    .line 1867
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1869
    :catch_2
    move-exception v0

    .line 1870
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1865
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 1866
    :goto_3
    if-eqz v5, :cond_7

    .line 1867
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1871
    :cond_7
    :goto_4
    throw v11

    .line 1869
    :catch_3
    move-exception v0

    .line 1870
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1878
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_0

    .line 1879
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FO]loadStateLocked(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file failed parsing!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1865
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1862
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2072
    const-string v0, "OnePlusProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    return-void
.end method

.method private parseActiveAudioPidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "pids"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 973
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 974
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseActiveAudioPidsStr():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 984
    :cond_1
    :goto_0
    return-object v0

    .line 979
    :cond_2
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "pid":[Ljava/lang/String;
    goto :goto_0
.end method

.method private printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4
    .param p1, "preceding"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1904
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1906
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1908
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private queryHomeResolveInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1354
    .local v0, "mHomeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1358
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v1
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;

    .prologue
    .line 1612
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 1626
    :cond_0
    :goto_0
    return-void

    .line 1616
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1620
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p0, v1, :cond_2

    .line 1621
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeTopRelateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1624
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto :goto_0
.end method

.method private resumeTopRelateProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1239
    if-nez p1, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_0

    .line 1245
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_2

    .line 1246
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeTopProcess():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_2
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "TopRelateProcess "

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    .line 1249
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1250
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 1251
    .local v1, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "TopRelateProcess connection"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto :goto_1

    .line 1255
    .end local v1    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1256
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 1257
    .local v0, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "TopRelateProcess conProviders"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto :goto_2

    .line 1262
    .end local v0    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    .line 1263
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "TopRelateProcess adjSource"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private sendResumeMessage(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .prologue
    .line 695
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 696
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 697
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 698
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 699
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 700
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 701
    return-void
.end method

.method public static sendSignal(II)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "sigNo"    # I

    .prologue
    .line 454
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSignal(): pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sigNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    .line 458
    return-void
.end method

.method private sendSuspendMessage(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "delay"    # J

    .prologue
    .line 683
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    add-int/lit16 v1, v1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 685
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 686
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 687
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 689
    return-void
.end method

.method private setCGroupStateLocked(IZ)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    .line 260
    const/16 v12, 0x2710

    move/from16 v0, p1

    if-lt v0, v12, :cond_1

    .line 261
    const/4 v1, 0x0

    .line 263
    .local v1, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/freezer.state"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 266
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 267
    .local v9, "pf":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 268
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 270
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 271
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 272
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception : file not exists : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    if-eqz v1, :cond_1

    .line 309
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    const/4 v1, 0x0

    .line 318
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v9    # "pf":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 312
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v9    # "pf":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 313
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 276
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "pf":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v2, "cgroupout":Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 279
    if-eqz p2, :cond_4

    .line 281
    :try_start_4
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 282
    .local v7, "index":I
    if-gez v7, :cond_3

    .line 283
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v12, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setCGroupStateLocked "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " FROZEN"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v6, "FROZEN"

    .line 286
    .local v6, "freeze":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 287
    .local v10, "statebuffer":[B
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 288
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 302
    .end local v6    # "freeze":Ljava/lang/String;
    .end local v10    # "statebuffer":[B
    :cond_3
    :goto_1
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    if-eqz v2, :cond_6

    .line 309
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 310
    const/4 v1, 0x0

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 291
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v7    # "index":I
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_6
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 292
    .restart local v7    # "index":I
    if-ltz v7, :cond_3

    .line 293
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mSuspentUids:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    const-string v12, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setCGroupStateLocked "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " THAWED"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v11, "THAWED"

    .line 296
    .local v11, "thawed":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 297
    .restart local v10    # "statebuffer":[B
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 298
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 302
    .end local v7    # "index":I
    .end local v10    # "statebuffer":[B
    .end local v11    # "thawed":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 303
    :catch_1
    move-exception v4

    move-object v1, v2

    .line 304
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/io/IOException;
    :goto_2
    :try_start_8
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException -->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 308
    if-eqz v1, :cond_1

    .line 309
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 310
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 312
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 312
    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v4    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 307
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v12

    .line 308
    :goto_3
    if-eqz v1, :cond_5

    .line 309
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 310
    const/4 v1, 0x0

    .line 315
    :cond_5
    :goto_4
    throw v12

    .line 312
    :catch_4
    move-exception v3

    .line 313
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v13, "OnePlusProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 307
    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 303
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :catch_5
    move-exception v4

    goto/16 :goto_2

    .end local v1    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    :cond_6
    move-object v1, v2

    .end local v2    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v1    # "cgroupout":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method static final setPhoneAppReadyState(Z)V
    .locals 0
    .param p0, "isPhoneAppReady"    # Z

    .prologue
    .line 1778
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 1779
    return-void
.end method

.method static final skipBroadcast(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 3
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1735
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 1747
    :cond_0
    :goto_0
    return v0

    .line 1738
    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1739
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 1740
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPM Denial: receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v2, v2, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;  ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1461
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v4, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return v3

    .line 1464
    :cond_1
    if-eqz p1, :cond_0

    .line 1468
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1483
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1484
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1485
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "skipBroadcast mBrdList"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto :goto_0

    .line 1490
    .end local v0    # "action":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1491
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v5, "skipBroadcast checkIsNeedResumeProcess "

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto :goto_0

    .line 1504
    :cond_5
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_7

    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1505
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 1506
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not skip callingUid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_6
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " skipBroadcast firstApplication"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "callinguid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 1515
    :cond_7
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1517
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_9

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1518
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 1519
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not skip top activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_8
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipBroadcast top Process"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 1524
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1133
    if-nez p1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    .line 1139
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_2

    .line 1140
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspendProcess(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_2
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v1, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_3

    .line 1145
    const-wide/16 v2, 0x61a8

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendMessage(Lcom/android/server/am/ProcessRecord;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspend Process failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1148
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1151
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 1152
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already exist MSG: SUSPEND_PROCESS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1155
    :cond_4
    const-wide/16 v2, 0x61a8

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendSuspendMessage(Lcom/android/server/am/ProcessRecord;J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static final suspendProcessState_out(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1692
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_1

    .line 1693
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1694
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore----> checkProcessWhileBroadcastTimeout(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1697
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1.SuspendProcessState(): app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 1699
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1700
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0
.end method

.method private updateProcessStateForChanged(Z)V
    .locals 5
    .param p1, "inUsing"    # Z

    .prologue
    .line 1300
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateWidgets()V

    .line 1301
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1302
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessStateForChanged():inUsing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1306
    if-eqz p1, :cond_3

    .line 1307
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 1308
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1309
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 1310
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1311
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "updateProcessStateForChanged"

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    .line 1307
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1313
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 1326
    .end local v0    # "i":I
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1318
    :cond_3
    :try_start_1
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 1319
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1320
    .restart local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_4

    .line 1321
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "updateProcessStateForChanged"

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    .line 1318
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1326
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    return-void
.end method

.method private updateProcessStateForWidgetChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1334
    if-eqz p1, :cond_0

    .line 1335
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateWidget(Ljava/lang/String;)V

    .line 1338
    :cond_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1339
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 1340
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1341
    .local v1, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1

    .line 1342
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1343
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v4, "updateProcessStateForWidgetChanged"

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeProcessMessage(ILjava/lang/String;)Z

    .line 1339
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1345
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    .line 1349
    .end local v0    # "i":I
    .end local v1    # "rec":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1350
    return-void
.end method

.method private updateWidget(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1381
    return-void
.end method

.method private updateWidgets()V
    .locals 0

    .prologue
    .line 1377
    return-void
.end method

.method private static writePidToTasksFile(II)V
    .locals 11
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 365
    const/16 v8, 0x2710

    if-ge p0, v8, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tasks"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 373
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 374
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 375
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 378
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 379
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not exist ------- Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 393
    .local v1, "ex":Ljava/io/IOException;
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnePlusProcessManager]IOException --> writePidToTasksFile() : cgroup: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, ""

    .line 384
    .local v5, "pidsStr":Ljava/lang/String;
    const-string v6, ""

    .line 385
    .local v6, "pidsStr_debug":Ljava/lang/String;
    const-string v7, ""

    .line 386
    .local v7, "processName":Ljava/lang/String;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "cgroupout":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 388
    .local v4, "pidbuffer":[B
    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 389
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 390
    sget-boolean v8, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 391
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writePidToTasksFile():uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " --> ok"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method addOPPMValueByApp(Lcom/android/server/am/ProcessRecord;)I
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1997
    const/4 v0, 0x0

    .line 1998
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1999
    .local v1, "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    if-nez p1, :cond_0

    .line 2000
    const/4 v0, -0x1

    move v8, v0

    .line 2018
    .end local v0    # "ret":I
    .local v8, "ret":I
    :goto_0
    return v8

    .line 2004
    .end local v8    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    move-result-object v1

    .line 2005
    if-nez v1, :cond_1

    .line 2006
    const/4 v0, 0x1

    .line 2007
    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    .end local v1    # "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;-><init>(Lcom/android/server/am/OnePlusProcessManager;IILjava/lang/String;J)V

    .line 2009
    .restart local v1    # "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v8, v0

    .line 2018
    .end local v0    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_0

    .line 2011
    .end local v8    # "ret":I
    .restart local v0    # "ret":I
    :cond_1
    const/4 v0, 0x2

    .line 2012
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->uid:I

    .line 2013
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->pid:I

    .line 2014
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->processName:Ljava/lang/String;

    .line 2015
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    goto :goto_1
.end method

.method addOPPMValueByUid(I)I
    .locals 9
    .param p1, "uid"    # I

    .prologue
    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1976
    .local v1, "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    const/16 v2, 0x2710

    if-ge p1, v2, :cond_0

    .line 1977
    const/4 v0, -0x1

    move v8, v0

    .line 1993
    .end local v0    # "ret":I
    .local v8, "ret":I
    :goto_0
    return v8

    .line 1981
    .end local v8    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    move-result-object v1

    .line 1982
    if-nez v1, :cond_1

    .line 1983
    const/4 v0, 0x1

    .line 1984
    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    .end local v1    # "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;-><init>(Lcom/android/server/am/OnePlusProcessManager;IILjava/lang/String;J)V

    .line 1986
    .restart local v1    # "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;

    invoke-direct {v3, p0, p1}, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v8, v0

    .line 1993
    .end local v0    # "ret":I
    .restart local v8    # "ret":I
    goto :goto_0

    .line 1988
    .end local v8    # "ret":I
    .restart local v0    # "ret":I
    :cond_1
    const/4 v0, 0x2

    .line 1989
    iput p1, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->uid:I

    .line 1990
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    goto :goto_1
.end method

.method checkAppDelayStateValuable(ZILcom/android/server/am/ProcessRecord;Z)Z
    .locals 8
    .param p1, "byUid"    # Z
    .param p2, "uid"    # I
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "freeze"    # Z

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x1

    .line 2023
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_0

    .line 2024
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppDelayStateValuable(): mResumeMap.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_0
    const/4 v1, 0x0

    .line 2026
    .local v1, "valuable":Z
    const/4 v0, 0x0

    .line 2027
    .local v0, "ov":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    if-ne p1, v6, :cond_3

    .line 2028
    if-ge p2, v7, :cond_1

    .line 2029
    const/4 v1, 0x0

    move v2, v1

    .line 2068
    .end local v1    # "valuable":Z
    .local v2, "valuable":I
    :goto_0
    return v2

    .line 2032
    .end local v2    # "valuable":I
    .restart local v1    # "valuable":Z
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    move-result-object v0

    .line 2041
    :goto_1
    if-nez v0, :cond_8

    .line 2042
    if-ne p4, v6, :cond_6

    .line 2043
    const/4 v1, 0x1

    :cond_2
    :goto_2
    move v2, v1

    .line 2068
    .restart local v2    # "valuable":I
    goto :goto_0

    .line 2034
    .end local v2    # "valuable":I
    :cond_3
    if-eqz p3, :cond_4

    iget v3, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ge v3, v7, :cond_5

    .line 2035
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    .line 2036
    .restart local v2    # "valuable":I
    goto :goto_0

    .line 2038
    .end local v2    # "valuable":I
    :cond_5
    iget v3, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    move-result-object v0

    goto :goto_1

    .line 2045
    :cond_6
    const/4 v1, 0x1

    .line 2046
    if-ne p1, v6, :cond_7

    .line 2047
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->addOPPMValueByUid(I)I

    goto :goto_2

    .line 2049
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/am/OnePlusProcessManager;->addOPPMValueByApp(Lcom/android/server/am/ProcessRecord;)I

    goto :goto_2

    .line 2053
    :cond_8
    if-ne p4, v6, :cond_a

    .line 2054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x61a8

    cmp-long v3, v4, v6

    if-gez v3, :cond_9

    .line 2055
    const/4 v1, 0x0

    .line 2056
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2057
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppDelayStateValuable(): ov = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2059
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 2062
    :cond_a
    const/4 v1, 0x1

    .line 2063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;->lastResumeTime:J

    goto :goto_2
.end method

.method public checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 1451
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1452
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1453
    const/4 v2, 0x1

    .line 1456
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPackage(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 896
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 897
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 923
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 909
    :cond_2
    if-nez p1, :cond_3

    .line 910
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exits!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    :cond_3
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 915
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 916
    .restart local v1    # "pkg":Ljava/lang/String;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 917
    goto :goto_0

    .end local v1    # "pkg":Ljava/lang/String;
    :cond_5
    move v2, v3

    .line 923
    goto :goto_0
.end method

.method public checkPackageCanStart(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v0, 0x0

    .line 1417
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return v0

    .line 1422
    :cond_1
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 1426
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1432
    iget v1, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    .line 1437
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkBroadcast(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1442
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkPackage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1446
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x1

    .line 705
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v2, :cond_0

    .line 717
    :goto_0
    return v1

    .line 710
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 711
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->getLivePackageForLiveWallPaper()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "wallpaperPkg":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 713
    monitor-exit v2

    goto :goto_0

    .line 715
    .end local v0    # "wallpaperPkg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "wallpaperPkg":Ljava/lang/String;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    goto :goto_0
.end method

.method public checkTouchWindow(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 875
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    monitor-enter v3

    .line 876
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    .line 878
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 879
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 880
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerPolicy$WindowState;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 882
    .local v1, "token":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v4, :cond_0

    .line 883
    const/4 v2, 0x1

    monitor-exit v3

    .line 888
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/WindowManagerPolicy$WindowState;>;"
    .end local v1    # "token":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    return v2

    .line 887
    :cond_1
    monitor-exit v3

    .line 888
    const/4 v2, 0x0

    goto :goto_0

    .line 887
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@The BPM status is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    const-string v0, "@The BPM list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1913
    const-string v0, "@The PKG list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1914
    const-string v0, "@The BRD list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1915
    const-string v0, "@The BAD list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBadList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1916
    const-string v0, "@The AppWidget list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAppWidgetList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 1917
    const-string v0, "@The suspend list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    return-void
.end method

.method public getBPMEnable()Z
    .locals 3

    .prologue
    .line 1163
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1164
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBPMEnable():mBPMStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method getOPPMValueByUid(I)Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1958
    const/4 v2, 0x0

    .line 1959
    .local v2, "ret":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    const/16 v3, 0x2710

    if-ge p1, v3, :cond_0

    .line 1960
    const/4 v3, 0x0

    .line 1970
    :goto_0
    return-object v3

    .line 1963
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1964
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/am/OnePlusProcessManager$OPPMKey;Lcom/android/server/am/OnePlusProcessManager$OPPMValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;

    iget v3, v3, Lcom/android/server/am/OnePlusProcessManager$OPPMKey;->uid:I

    if-ne v3, p1, :cond_1

    .line 1965
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    check-cast v2, Lcom/android/server/am/OnePlusProcessManager$OPPMValue;

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/am/OnePlusProcessManager$OPPMKey;Lcom/android/server/am/OnePlusProcessManager$OPPMValue;>;"
    .restart local v2    # "ret":Lcom/android/server/am/OnePlusProcessManager$OPPMValue;
    :cond_2
    move-object v3, v2

    .line 1970
    goto :goto_0
.end method

.method loadNPMConfigFiles()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 636
    const-string v2, "/data/data_bpm/pkg.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 637
    const-string v2, "/data/data_bpm/brd.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 638
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 639
    const-string v2, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FO]loadNPMConfigFiles(): mPkgList.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v2, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FO]loadNPMConfigFiles(): mBrdList.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 644
    .local v0, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 645
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 646
    .local v1, "temp":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 647
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 652
    .end local v1    # "temp":Z
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 653
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 654
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]loadNPMConfigFiles(): mBPMStatus= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 645
    goto :goto_0

    .line 649
    .restart local v1    # "temp":Z
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_1
.end method

.method public openDebug(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1899
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 1900
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 1901
    return-void
.end method

.method prepareBPMConfigFiles()V
    .locals 5

    .prologue
    .line 1105
    const-string v2, "OnePlusProcessManager"

    const-string v3, "[FO]prepareBPMConfigFiles()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data_bpm/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1109
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1112
    :cond_0
    const-string v2, "/system/bpm/pkg.xml"

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v2, "/system/bpm/brd.xml"

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string v2, "/system/bpm/bpm_sts.xml"

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1121
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/pkg.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1122
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/brd.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1123
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "chmod 0770 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1128
    :goto_1
    return-void

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]initBPMConfigFiles(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1124
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1125
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]prepareBPMConfigFiles(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendResumeProcessMessage(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1217
    const/16 v2, 0x2710

    if-ge p1, v2, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return v0

    .line 1220
    :cond_1
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 1221
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeProcessByUID():uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHander:Landroid/os/Handler;

    add-int/lit16 v3, p1, -0x2710

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->isSuspendUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHander:Landroid/os/Handler;

    add-int/lit16 v2, p1, -0x2710

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1227
    goto :goto_0

    .line 1229
    :cond_3
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->sendResumeMessage(IJ)V

    .line 1230
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResumeProcessMessage:uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " why = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1231
    goto :goto_0
.end method

.method public setBPMEnable(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    .line 1170
    const-string v0, "persist.sys.cgroup.active"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :goto_0
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 1176
    return-void

    .line 1172
    :cond_0
    const-string v0, "persist.sys.cgroup.active"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCGroupState(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v4, 0x1

    .line 400
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 404
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v1, :cond_2

    if-ne p2, v4, :cond_2

    .line 405
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 406
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCGroupState():uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",   ---> mBPMStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  --> ignore.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_2
    const-string v1, "persist.sys.cgroup.way"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 412
    .local v0, "cgroup_way":I
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_3

    .line 413
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCGroupState(): uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  cgroup_way="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 449
    :cond_4
    :goto_1
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupStateLocked(IZ)V

    goto :goto_0

    .line 429
    :pswitch_2
    const/4 p2, 0x1

    .line 430
    goto :goto_1

    .line 432
    :pswitch_3
    const/4 p2, 0x0

    .line 433
    goto :goto_1

    .line 435
    :pswitch_4
    if-ne p2, v4, :cond_4

    goto/16 :goto_0

    .line 440
    :pswitch_5
    if-nez p2, :cond_4

    goto/16 :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method updateProperties()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 658
    const-string v0, "persist.sys.cgroup.using"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->IN_USING:I

    .line 660
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->IN_USING:I

    packed-switch v0, :pswitch_data_0

    .line 670
    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]updateProperties(): mBPMStatus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , IN_USING="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/am/OnePlusProcessManager;->IN_USING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    return-void

    .line 662
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_0

    .line 665
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writePidsToTasksFile(I)V
    .locals 14
    .param p1, "uid"    # I

    .prologue
    .line 322
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/tasks"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 327
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 328
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 331
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 332
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not exist ------- Exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 336
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    :cond_2
    const-string v6, ""

    .line 337
    .local v6, "pidsStr":Ljava/lang/String;
    const-string v7, ""

    .line 338
    .local v7, "pidsStr_debug":Ljava/lang/String;
    const-string v8, ""

    .line 339
    .local v8, "processName":Ljava/lang/String;
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "cgroupout":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v10, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 343
    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 344
    .local v9, "rec":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_3

    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_3

    iget v11, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v11, p1, :cond_3

    .line 345
    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 346
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 347
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 348
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 349
    .local v5, "pidbuffer":[B
    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 342
    .end local v5    # "pidbuffer":[B
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 352
    .end local v9    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 353
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :try_start_2
    sget-boolean v11, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v11, :cond_1

    .line 355
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "writePidsToTasksFile(): pidsStr_debug="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",  uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",  processName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 357
    .end local v0    # "cgroupout":Ljava/io/FileOutputStream;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v6    # "pidsStr":Ljava/lang/String;
    .end local v7    # "pidsStr_debug":Ljava/lang/String;
    .end local v8    # "processName":Ljava/lang/String;
    .end local v10    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catch_0
    move-exception v1

    .line 358
    .local v1, "ex":Ljava/io/IOException;
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[OnePlusProcessManager]IOException --> writePidsToTasksFile() : cgroup: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 353
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .restart local v6    # "pidsStr":Ljava/lang/String;
    .restart local v7    # "pidsStr_debug":Ljava/lang/String;
    .restart local v8    # "processName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method
