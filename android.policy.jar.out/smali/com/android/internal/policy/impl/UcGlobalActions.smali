.class public Lcom/android/internal/policy/impl/UcGlobalActions;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UcGlobalActions$GestureListener;,
        Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/UcGlobalActions$LongPressAction;,
        Lcom/android/internal/policy/impl/UcGlobalActions$Action;,
        Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;,
        Lcom/android/internal/policy/impl/UcGlobalActions$RebootAction;,
        Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "UcGlobalActions"

.field private static final mLayoutHeigh:I = 0xa78

.field private static final mMaxParams:I = 0x32

.field private static final mOffset:I = 0x2bc

.field private static mOffsetMid:I = 0x0

.field private static final upOffsety:I = 0x50


# instance fields
.field private down:Z

.field private handup:Z

.field private isInAnimation:Z

.field private isShown:Z

.field private isShuttingDown:Z

.field private isValid:Z

.field private isup:Z

.field private isupScroll:Z

.field private mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

.field private mAniation1:Z

.field private mAniation2:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBgLastY:I

.field private mBitrateTop:F

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCirleLastY:I

.field private final mContext:Landroid/content/Context;

.field private mCurryVelocityY:F

.field private mCurryY:I

.field private mDelY:I

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mGesture:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mImgTop:I

.field private mIsUpScroll:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/UcGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mLastCurryY:I

.field private mLastDownY:I

.field private mLogo:Landroid/widget/ImageView;

.field private mMaxPoint:I

.field private mMidVelocityY:F

.field private mOffyHight:I

.field private mOverY:F

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerDrawable:Lcom/android/internal/policy/impl/UcPowerAnimation;

.field private mPowerImg:Landroid/view/View;

.field private mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

.field private mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

.field private mQuickVelocityY:F

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenHeigh:I

.field private mScreenWidth:I

.field private mScroller:Landroid/widget/Scroller;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/UcGlobalActions$Action;

.field private mTextView:Landroid/widget/TextView;

.field private mTouchValid:Z

.field private mUserUcPower:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1440
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mKeyguardShowing:Z

    .line 153
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDeviceProvisioned:Z

    .line 154
    sget-object v4, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .line 155
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mIsWaitingForEcmExit:Z

    .line 160
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isShuttingDown:Z

    .line 1144
    new-instance v4, Lcom/android/internal/policy/impl/UcGlobalActions$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1170
    new-instance v4, Lcom/android/internal/policy/impl/UcGlobalActions$9;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$9;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1188
    new-instance v4, Lcom/android/internal/policy/impl/UcGlobalActions$10;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$10;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1197
    new-instance v4, Lcom/android/internal/policy/impl/UcGlobalActions$11;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/internal/policy/impl/UcGlobalActions$11;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1209
    new-instance v4, Lcom/android/internal/policy/impl/UcGlobalActions$12;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$12;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHandler:Landroid/os/Handler;

    .line 1425
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mUserUcPower:Z

    .line 1427
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isShown:Z

    .line 1428
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isInAnimation:Z

    .line 1441
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isup:Z

    .line 1442
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isupScroll:Z

    .line 1443
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->handup:Z

    .line 1445
    iput v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mMaxPoint:I

    .line 1446
    iput v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBgLastY:I

    .line 1447
    iput v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCirleLastY:I

    .line 1448
    iput v8, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    .line 1449
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation1:Z

    .line 1450
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation2:Z

    .line 1451
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z

    .line 1452
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->down:Z

    .line 1455
    iput v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastDownY:I

    .line 1458
    iput v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mScreenWidth:I

    .line 1459
    iput v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mScreenHeigh:I

    .line 1460
    iput v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    .line 1461
    iput v8, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F

    .line 1462
    iput v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffyHight:I

    .line 1464
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mGesture:Landroid/view/GestureDetector;

    .line 1465
    iput v8, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryVelocityY:F

    .line 1466
    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mQuickVelocityY:F

    .line 1467
    const/high16 v4, 0x447a0000    # 1000.0f

    iput v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mMidVelocityY:F

    .line 1468
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mIsUpScroll:Z

    .line 1470
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isValid:Z

    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 171
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 174
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 175
    const-string v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 187
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHasTelephony:Z

    .line 190
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 192
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 193
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 197
    .local v3, "vibrator":Landroid/os/Vibrator;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHasVibrator:Z

    .line 199
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x112007a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mShowSilentToggle:Z

    .line 201
    return-void

    :cond_0
    move v4, v6

    .line 197
    goto :goto_0

    :cond_1
    move v5, v6

    .line 199
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->startQuickBoot()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/UcGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isShuttingDown:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isShuttingDown:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mUserUcPower:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->onRemoveWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;)Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcPowerOffView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation1:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation1:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation2:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation2:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/UcGlobalActions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/UcGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UcGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/UcGlobalActions;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/impl/UcGlobalActions;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # F

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F

    return p1
.end method

.method static synthetic access$3100()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->down:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isupScroll:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/UcGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffyHight:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->initAllView()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->handup:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/UcGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCirleLastY:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/UcGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBgLastY:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->resetAllView()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/UcGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isInAnimation:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isInAnimation:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->showViewByAnimation()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcPowerViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcPowerViewContainer;)Lcom/android/internal/policy/impl/UcPowerViewContainer;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/UcPowerViewContainer;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isShown:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isValid:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mGesture:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->onShutDown()V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/internal/policy/impl/UcGlobalActions;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p1, "x1"    # F

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryVelocityY:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/UcGlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/UcGlobalActions$Action;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 650
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 651
    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 652
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 653
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 654
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 655
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    if-nez v6, :cond_2

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    move v8, v11

    .line 658
    .local v8, "isCurrentUser":Z
    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 660
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$7;

    const v2, 0x10803d5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_6

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/UcGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 680
    .local v0, "switchToUser":Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "switchToUser":Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_1
    move v8, v12

    .line 656
    goto :goto_1

    :cond_2
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_3

    move v8, v11

    goto :goto_1

    :cond_3
    move v8, v12

    goto :goto_1

    .line 658
    .restart local v8    # "isCurrentUser":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 660
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v1, "Primary"

    goto :goto_3

    :cond_6
    const-string v1, ""

    goto :goto_4

    .line 684
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 1260
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1266
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1267
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1268
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1269
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .line 1271
    :cond_0
    return-void

    .line 1260
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1269
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private createDialog()Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
    .locals 13

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    .line 346
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$2;

    const v2, 0x1080377

    const v3, 0x1080379

    const v4, 0x104014b

    const v5, 0x104014c

    const v6, 0x104014d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/UcGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    .line 387
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->onAirplaneModeChanged()V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 390
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "defaultActions":[Ljava/lang/String;
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 394
    .local v8, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v9

    if-ge v11, v0, :cond_b

    .line 395
    aget-object v7, v9, v11

    .line 396
    .local v7, "actionKey":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 344
    .end local v7    # "actionKey":Ljava/lang/String;
    .end local v8    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "defaultActions":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    goto :goto_0

    .line 400
    .restart local v7    # "actionKey":Ljava/lang/String;
    .restart local v8    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v9    # "defaultActions":[Ljava/lang/String;
    .restart local v11    # "i":I
    :cond_1
    const-string v0, "power"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_2
    :goto_3
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 402
    :cond_3
    const-string v0, "reboot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$RebootAction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$RebootAction;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 404
    :cond_4
    const-string v0, "airplane"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 406
    :cond_5
    const-string v0, "bugreport"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->isCurrentUserOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->getBugReportAction()Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 411
    :cond_6
    const-string v0, "silent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 412
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 415
    :cond_7
    const-string v0, "users"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 416
    const-string v0, "fw.power_user_switcher"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 419
    :cond_8
    const-string v0, "settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->getSettingsAction()Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 421
    :cond_9
    const-string v0, "lockdown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->getLockdownAction()Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 424
    :cond_a
    const-string v0, "UcGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid global action key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 430
    .end local v7    # "actionKey":Ljava/lang/String;
    :cond_b
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    .line 432
    new-instance v12, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 433
    .local v12, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    iput-object v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 440
    new-instance v10, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0, v12}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 441
    .local v10, "dialog":Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 443
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 444
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 445
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 457
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 464
    return-object v10
.end method

.method private getBugReportAction()Lcom/android/internal/policy/impl/UcGlobalActions$Action;
    .locals 3

    .prologue
    .line 533
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$4;

    const v1, 0x108037b

    const v2, 0x1040145

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;II)V

    return-object v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 638
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 640
    :goto_0
    return-object v1

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLockdownAction()Lcom/android/internal/policy/impl/UcGlobalActions$Action;
    .locals 3

    .prologue
    .line 611
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$6;

    const v1, 0x108002f

    const v2, 0x104014f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;II)V

    return-object v0
.end method

.method private getSettingsAction()Lcom/android/internal/policy/impl/UcGlobalActions$Action;
    .locals 3

    .prologue
    .line 588
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$5;

    const v1, 0x1080442

    const v2, 0x104014e

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;II)V

    return-object v0
.end method

.method private handleShow()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mUserUcPower:Z

    if-eqz v0, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->awakenIfNecessary()V

    .line 255
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    .line 260
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$1;

    const v2, 0x1080377

    const v3, 0x1080379

    const v4, 0x104014b

    const v5, 0x104014c

    const v6, 0x104014d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/UcGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    .line 301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->onAirplaneModeChanged()V

    .line 303
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->refreshSilentMode()V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;)V

    .line 306
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 308
    .local v8, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    .end local v8    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->handleShowEx()V

    .line 333
    :goto_1
    return-void

    .line 258
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    goto :goto_0

    .line 317
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->awakenIfNecessary()V

    .line 318
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->createDialog()Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    .line 319
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->prepareDialog()V

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/UcGlobalActions$LongPressAction;

    if-nez v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;->onPress()V

    goto :goto_1

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 328
    .local v7, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v0, "UcGlobalActions"

    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->show()V

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method private handleShowEx()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1710
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->initData()V

    .line 1717
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 1719
    .local v3, "rotation":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1720
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    const v4, 0x10900f0

    invoke-virtual {v1, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/UcPowerViewContainer;

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    .line 1721
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/UcGlobalActions;->initView(Landroid/view/View;)V

    .line 1722
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1723
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7d9

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1725
    const v0, 0x10500

    .line 1729
    .local v0, "flags":I
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1730
    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1731
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1732
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1733
    const/16 v4, 0x11

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1735
    packed-switch v3, :pswitch_data_0

    .line 1752
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1753
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isShown:Z

    .line 1755
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->initViewEvent()V

    .line 1756
    new-instance v4, Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/internal/policy/impl/UcGlobalActions$GestureListener;

    invoke-direct {v6, p0, v9}, Lcom/android/internal/policy/impl/UcGlobalActions$GestureListener;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$1;)V

    invoke-direct {v4, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mGesture:Landroid/view/GestureDetector;

    .line 1757
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isValid:Z

    .line 1758
    return-void

    .line 1737
    :pswitch_0
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 1740
    :pswitch_1
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 1743
    :pswitch_2
    const/16 v4, 0x9

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 1746
    :pswitch_3
    const/16 v4, 0x8

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    .line 1735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initAllView()V
    .locals 3

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 1489
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/UcPowerAnimation;

    .line 1490
    .local v0, "drawable":Lcom/android/internal/policy/impl/UcPowerAnimation;
    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->initProgress()V

    .line 1495
    .end local v0    # "drawable":Lcom/android/internal/policy/impl/UcPowerAnimation;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1496
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1497
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1498
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 1501
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->onRemoveWindow()V

    .line 1502
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1813
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1814
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1815
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mScreenHeigh:I

    .line 1816
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mScreenWidth:I

    .line 1818
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation2:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation1:Z

    .line 1819
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z

    .line 1820
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x3f4ccccd    # 0.8f

    .line 1612
    if-nez p1, :cond_0

    .line 1704
    :goto_0
    return-void

    .line 1616
    :cond_0
    const v0, 0x10203e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    .line 1617
    const v0, 0x10203eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTextView:Landroid/widget/TextView;

    .line 1618
    const v0, 0x10203ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    .line 1620
    new-instance v0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->setRingWidth(I)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1060000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->setOutlineColor(I)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;

    move-result-object v0

    const-string v1, "#fffa3638"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->setRingColor(I)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;

    move-result-object v0

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->setCenterColor(I)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->create()Lcom/android/internal/policy/impl/UcPowerAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerDrawable:Lcom/android/internal/policy/impl/UcPowerAnimation;

    .line 1627
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerDrawable:Lcom/android/internal/policy/impl/UcPowerAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1628
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1629
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1631
    const v0, 0x10203e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/UcPowerOffView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    .line 1632
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    const/16 v1, 0xa78

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerOffView;->setLayoutHight(I)V

    .line 1634
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$15;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$15;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerOffView;->setScrollCallBack(Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;)V

    goto/16 :goto_0
.end method

.method private initViewEvent()V
    .locals 2

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    if-nez v0, :cond_0

    .line 1809
    :goto_0
    return-void

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerViewContainer;->setWindowManager(Landroid/view/WindowManager;)V

    .line 1767
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$16;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$16;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerViewContainer;->setOnAttachedToWindowListener(Lcom/android/internal/policy/impl/UcPowerViewContainer$OnAttachedToWindowListener;)V

    .line 1777
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$17;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$17;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerViewContainer;->setOnKeyListener(Lcom/android/internal/policy/impl/UcPowerViewContainer$OnKeyListener;)V

    .line 1783
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$18;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$18;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerViewContainer;->setOnBackListener(Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;)V

    .line 1795
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$19;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$19;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UcPowerViewContainer;->setOnMyTouchListener(Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;)V

    goto :goto_0
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 646
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1246
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1252
    .local v0, "airplaneModeOn":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    .line 1253
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 1248
    goto :goto_1

    .line 1252
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private onHidePowerLogo(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v9, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1837
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    if-nez v3, :cond_0

    .line 1882
    :goto_0
    return-void

    .line 1841
    :cond_0
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z

    .line 1843
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 1844
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1847
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 1848
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1851
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1852
    .local v0, "hide":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    const-string v4, "y"

    new-array v5, v8, [F

    int-to-float v6, p1

    aput v6, v5, v7

    int-to-float v6, p2

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1855
    .local v2, "up":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1856
    .local v1, "set":Landroid/animation/AnimatorSet;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1857
    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    aput-object v0, v3, v9

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1858
    new-instance v3, Lcom/android/internal/policy/impl/UcGlobalActions$20;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$20;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1880
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1851
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private onRemoveWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1475
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isShown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1479
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isShown:Z

    .line 1480
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->isInAnimation:Z

    .line 1482
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    .line 1484
    return-void
.end method

.method private onShowPowerLogo(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hight"    # I

    .prologue
    const/4 v2, 0x0

    .line 1574
    if-nez p1, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1578
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    mul-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1579
    .local v0, "in":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1580
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1581
    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$14;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/UcGlobalActions$14;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1607
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private onShowPowerView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1535
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    if-nez v1, :cond_0

    .line 1570
    :goto_0
    return-void

    .line 1539
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UcPowerOffView;->setVisibility(I)V

    .line 1540
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    const/16 v2, 0x7bc

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UcPowerOffView;->setMoveParams(I)V

    .line 1541
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/UcPowerOffView;->postInvalidate()V

    .line 1543
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3bd10000    # -700.0f

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1544
    .local v0, "in":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1545
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1546
    new-instance v1, Lcom/android/internal/policy/impl/UcGlobalActions$13;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$13;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1569
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/UcPowerOffView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private onShutDown()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1824
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z

    .line 1825
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_quickboot"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1827
    .local v0, "quickbootEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1828
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->startQuickBoot()V

    .line 1833
    :goto_1
    return-void

    .end local v0    # "quickbootEnabled":Z
    :cond_0
    move v0, v1

    .line 1825
    goto :goto_0

    .line 1832
    .restart local v0    # "quickbootEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2, v1, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(ZZ)V

    goto :goto_1
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->refreshSilentMode()V

    .line 688
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;)V

    .line 689
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 690
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 691
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 692
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 698
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 701
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;)V

    .line 704
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 699
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    .restart local v0    # "silentModeOn":Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/UcGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private resetAllView()V
    .locals 3

    .prologue
    .line 1506
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    if-eqz v1, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    const/16 v2, 0x7bc

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/UcPowerOffView;->setMoveParams(I)V

    .line 1510
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1511
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/UcPowerAnimation;

    .line 1512
    .local v0, "drawable":Lcom/android/internal/policy/impl/UcPowerAnimation;
    if-eqz v0, :cond_1

    .line 1513
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcPowerAnimation;->initProgress()V

    .line 1517
    .end local v0    # "drawable":Lcom/android/internal/policy/impl/UcPowerAnimation;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1518
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1519
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 1522
    :cond_2
    return-void
.end method

.method private showViewByAnimation()V
    .locals 3

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1527
    .local v0, "hight":I
    iput v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffyHight:I

    .line 1528
    iget v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mScreenHeigh:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffyHight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sput v1, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I

    .line 1529
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->onShowPowerView()V

    .line 1530
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->onShowPowerLogo(Landroid/view/View;I)V

    .line 1531
    return-void
.end method

.method private startQuickBoot()V
    .locals 3

    .prologue
    .line 1275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1278
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/UcGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 721
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$Action;->onPress()V

    .line 724
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 708
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 713
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "UcGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMyTouch(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1896
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1897
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 2044
    :cond_0
    :goto_0
    const/4 v12, 0x0

    :goto_1
    return v12

    .line 1899
    :pswitch_0
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isValid:Z

    .line 1901
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->down:Z

    .line 1902
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isup:Z

    .line 1903
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->handup:Z

    .line 1904
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastDownY:I

    .line 1905
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastDownY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mMaxPoint:I

    .line 1907
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    .line 1908
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBgLastY:I

    .line 1909
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCirleLastY:I

    .line 1910
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isupScroll:Z

    .line 1911
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryVelocityY:F

    .line 1912
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastDownY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastCurryY:I

    .line 1913
    const/4 v12, 0x1

    goto :goto_1

    .line 1916
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isValid:Z

    if-eqz v12, :cond_0

    .line 1920
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    .line 1921
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastDownY:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    .line 1923
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mMaxPoint:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    if-ge v12, v13, :cond_1

    .line 1924
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mMaxPoint:I

    .line 1927
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastCurryY:I

    if-lt v12, v13, :cond_4

    .line 1928
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mIsUpScroll:Z

    .line 1932
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastCurryY:I

    .line 1934
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    if-lez v12, :cond_7

    .line 1935
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    rsub-int v12, v12, 0xa78

    add-int/lit16 v8, v12, -0x2bc

    .line 1936
    .local v8, "offsety":I
    if-ltz v8, :cond_2

    .line 1937
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBgLastY:I

    .line 1938
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    invoke-virtual {v12, v8}, Lcom/android/internal/policy/impl/UcPowerOffView;->setMoveParams(I)V

    .line 1941
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    int-to-float v13, v13

    add-float v3, v12, v13

    .line 1942
    .local v3, "dy":F
    sget v12, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float v11, v3, v12

    .line 1943
    .local v11, "tmp":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/UcPowerAnimation;

    invoke-virtual {v12, v11}, Lcom/android/internal/policy/impl/UcPowerAnimation;->setProgress(F)V

    .line 1945
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    add-int v6, v12, v13

    .line 1946
    .local v6, "imgdy":I
    sget v12, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I

    if-le v6, v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    int-to-float v13, v6

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 1948
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_3

    .line 1949
    int-to-float v12, v6

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    .line 1952
    :cond_3
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget v14, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I

    sub-int v14, v6, v14

    int-to-double v14, v14

    const-wide v16, 0x3f40624dd2f1a9fcL    # 5.0E-4

    mul-double v14, v14, v16

    sub-double v4, v12, v14

    .line 1953
    .local v4, "dparams":D
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mIsUpScroll:Z

    if-nez v12, :cond_5

    .line 1954
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    float-to-double v12, v12

    sub-double/2addr v12, v4

    double-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    .line 1959
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    invoke-virtual {v12, v13}, Landroid/view/View;->setY(F)V

    .line 1960
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    .line 1930
    .end local v3    # "dy":F
    .end local v4    # "dparams":D
    .end local v6    # "imgdy":I
    .end local v8    # "offsety":I
    .end local v11    # "tmp":F
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mIsUpScroll:Z

    goto/16 :goto_2

    .line 1956
    .restart local v3    # "dy":F
    .restart local v4    # "dparams":D
    .restart local v6    # "imgdy":I
    .restart local v8    # "offsety":I
    .restart local v11    # "tmp":F
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    float-to-double v12, v12

    add-double/2addr v12, v4

    double-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOverY:F

    goto :goto_3

    .line 1962
    .end local v4    # "dparams":D
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    int-to-float v13, v6

    invoke-virtual {v12, v13}, Landroid/view/View;->setY(F)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    .line 1966
    .end local v3    # "dy":F
    .end local v6    # "imgdy":I
    .end local v8    # "offsety":I
    .end local v11    # "tmp":F
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffyHight:I

    neg-int v13, v13

    if-ge v12, v13, :cond_8

    .line 1967
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->initAllView()V

    goto/16 :goto_0

    .line 1969
    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffyHight:I

    neg-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_9

    .line 1970
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isup:Z

    if-nez v12, :cond_0

    .line 1973
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    neg-int v13, v13

    const/16 v14, 0xa78

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/policy/impl/UcPowerOffView;->startUp(II)V

    .line 1974
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isupScroll:Z

    .line 1975
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isup:Z

    goto/16 :goto_0

    .line 1979
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    add-int/2addr v12, v13

    int-to-float v3, v12

    .line 1980
    .restart local v3    # "dy":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    rsub-int v12, v12, 0xa78

    add-int/lit16 v9, v12, -0x2bc

    .line 1981
    .local v9, "offsety2":I
    const/4 v12, 0x0

    cmpl-float v12, v3, v12

    if-ltz v12, :cond_a

    .line 1982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/UcPowerAnimation;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/UcPowerAnimation;->setProgressEx()V

    .line 1984
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    invoke-virtual {v12, v9}, Lcom/android/internal/policy/impl/UcPowerOffView;->setMoveParams(I)V

    .line 1986
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v12, v3}, Landroid/view/View;->setY(F)V

    .line 1987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    .line 1993
    .end local v3    # "dy":F
    .end local v9    # "offsety2":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isValid:Z

    if-eqz v12, :cond_0

    .line 1997
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    .line 1998
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mLastDownY:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    .line 2000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCirleLastY:I

    .line 2002
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    if-ltz v12, :cond_11

    .line 2003
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mScreenHeigh:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    sub-int/2addr v13, v14

    if-lt v12, v13, :cond_b

    .line 2004
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->down:Z

    .line 2009
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    if-ge v12, v13, :cond_c

    .line 2010
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->handup:Z

    .line 2015
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->down:Z

    if-nez v12, :cond_10

    .line 2016
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->handup:Z

    if-eqz v12, :cond_d

    .line 2017
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    rsub-int v14, v14, 0xa78

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/policy/impl/UcPowerOffView;->scrollToUp(III)V

    goto/16 :goto_0

    .line 2006
    :cond_b
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->down:Z

    goto :goto_4

    .line 2012
    :cond_c
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->handup:Z

    goto :goto_5

    .line 2019
    :cond_d
    const/4 v10, 0x0

    .line 2020
    .local v10, "scrolltype":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mQuickVelocityY:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f

    .line 2021
    const/4 v10, 0x2

    .line 2025
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I

    rsub-int v14, v14, 0x7bc

    invoke-virtual {v12, v13, v14, v10}, Lcom/android/internal/policy/impl/UcPowerOffView;->scrollToUp(III)V

    goto/16 :goto_0

    .line 2022
    :cond_f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mMidVelocityY:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_e

    .line 2023
    const/4 v10, 0x1

    goto :goto_6

    .line 2028
    .end local v10    # "scrolltype":I
    :cond_10
    sget v7, Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I

    .line 2029
    .local v7, "middle":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mCurryY:I

    if-lt v12, v7, :cond_0

    .line 2030
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/UcPowerOffView;->setMoveParams(I)V

    .line 2031
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v12

    float-to-int v12, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7}, Lcom/android/internal/policy/impl/UcGlobalActions;->onHidePowerLogo(II)V

    goto/16 :goto_0

    .line 2035
    .end local v7    # "middle":I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isup:Z

    if-nez v12, :cond_0

    .line 2036
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->isupScroll:Z

    .line 2037
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerOffView:Lcom/android/internal/policy/impl/UcPowerOffView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDelY:I

    neg-int v13, v13

    const/16 v14, 0xa78

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/policy/impl/UcPowerOffView;->startUp(II)V

    goto/16 :goto_0

    .line 1897
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mKeyguardShowing:Z

    .line 209
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDeviceProvisioned:Z

    .line 214
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mUserUcPower:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->handleShow()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->dismiss()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcGlobalActions;->handleShow()V

    goto :goto_0
.end method
