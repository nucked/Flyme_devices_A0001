.class public Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    }
.end annotation


# static fields
.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field private static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "oem.intent.action.SCREEN_SHOT"

.field private static final DEBUG:Z

.field private static final KEYLOCK_MODE_FOOT:I = 0x4

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field private static final LOCK_TASK_END_DELAY:I = 0x7d0

.field private static final MSG_PANEL_STATUS:I = 0x1

.field public static mCurrentKeyMode:I

.field private static mDoublePiontHome:Z

.field static mFingerPrintBehavior:I

.field static mKeyguardState:Z

.field public static mLockHomeUp:I

.field private static mShotPiontHome:Z


# instance fields
.field private HomeConsume:Z

.field private mBackLongPress:Ljava/lang/Runnable;

.field private mDelay:Z

.field mDownTime:J

.field private mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

.field private mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

.field mHomeEvent:I

.field mHomeRepateBeavhaver:Z

.field private mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

.field private mKeyguardEnabled:Z

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMenuRepateBeavhaver:Z

.field mMenuUp:Z

.field mOemBaseReceiver:Landroid/content/BroadcastReceiver;

.field mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

.field mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

.field private mT:Landroid/telephony/TelephonyManager;

.field preShowingLock:Z

.field telecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    .line 84
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotPiontHome:Z

    .line 86
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoublePiontHome:Z

    .line 88
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    .line 91
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 111
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    .line 113
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerPrintBehavior:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 69
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 94
    new-instance v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OemShotScreenHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    .line 104
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelay:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeRepateBeavhaver:Z

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDownTime:J

    .line 142
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 358
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->HomeConsume:Z

    .line 604
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mOemBaseReceiver:Landroid/content/BroadcastReceiver;

    .line 636
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 776
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    .line 819
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preShowingLock:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OemPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/FingerprintUnlock;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->checkFingerPrint()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mT:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    return v0
.end method

.method private cancelPreloadRecentApps()V
    .locals 4

    .prologue
    .line 343
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 346
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 347
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when toggling recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private checkFingerPrint()V
    .locals 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preShowingLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerPrintBehavior:I

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string v0, "WindowManager"

    const-string v1, "checkFingerPrint  resume fingerprintUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 849
    :cond_0
    return-void
.end method

.method private getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 362
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 363
    return-object v0
.end method

.method private preloadRecentApps()V
    .locals 4

    .prologue
    .line 329
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 332
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 333
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private togglePanel()V
    .locals 4

    .prologue
    .line 296
    :try_start_0
    const-string v2, "WindowManager"

    const-string v3, "togglePanel"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 298
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 299
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when toggling Panel"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private toggleRecentApps()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 308
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "isCall":Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.dialer/com.android.incallui.InCallActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 312
    :goto_0
    if-eqz v1, :cond_2

    .line 326
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 310
    goto :goto_0

    .line 317
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 318
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 319
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 321
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException when toggling recent apps"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 502
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 503
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 505
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x2002

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 508
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 510
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 511
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 512
    return-void
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "arg1"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attach"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preShowingLock:Z

    .line 825
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 826
    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 780
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableKeyguard  enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    .line 782
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableKeyguard(Z)V

    .line 783
    return-void
.end method

.method public finishLayoutLw()V
    .locals 4

    .prologue
    const/4 v2, 0x6

    .line 831
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishLayoutLw()V

    .line 833
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preShowingLock:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerPrintBehavior:I

    if-nez v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 835
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 837
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 839
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public goingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 766
    const-string v0, "WindowManager"

    const-string v1, "goingToSleep  ondestory fingerprintUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goingToSleep(I)V

    .line 769
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 774
    :cond_0
    return-void
.end method

.method public handleDoubleTapOnHome()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 628
    const-string v0, "WindowManager"

    const-string v1, "handleDoubleTapOnHome"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeConsumed:Z

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->togglePanel()V

    .line 633
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 634
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 118
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v1, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v2, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "oem.intent.action.SCREEN_SHOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mOemBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/policy/impl/OemShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 128
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    .line 129
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 131
    new-instance v2, Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/android/internal/policy/impl/FingerprintUnlock;-><init>(Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;ILandroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    .line 132
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mT:Landroid/telephony/TelephonyManager;

    .line 134
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 274
    sget v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 275
    const-wide/16 v6, 0x0

    .line 291
    :goto_0
    return-wide v6

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->keyguardOn()Z

    move-result v3

    .line 279
    .local v3, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 280
    .local v2, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 281
    .local v5, "repeatCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 282
    .local v4, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x1

    .line 283
    .local v1, "down":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 285
    .local v0, "canceled":Z
    sget-boolean v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 286
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interceptKeyTi keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " down="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " repeatCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " keyguardOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mHomePressed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomePressed:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " canceled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " metaState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v6

    goto :goto_0

    .line 282
    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 146
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 147
    const/4 v8, 0x1

    .line 268
    :goto_0
    return v8

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 151
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v7, 0x1

    .line 152
    .local v7, "up":Z
    :goto_1
    const/high16 v8, 0x20000000

    and-int/2addr v8, p2

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    .line 153
    .local v2, "interactive":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v6

    .line 154
    .local v6, "source":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 155
    .local v5, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    const/4 v0, 0x1

    .line 157
    .local v0, "down":Z
    :goto_3
    sget-boolean v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 158
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptKeyTq keycode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " interactive="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " down ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " source="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " repeatCount ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    const/4 v8, 0x3

    if-ne v3, v8, :cond_6

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    if-eqz v8, :cond_6

    .line 166
    if-eqz v7, :cond_2

    .line 167
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    add-int/lit8 v8, v8, -0x1

    sput v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 169
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 151
    .end local v0    # "down":Z
    .end local v2    # "interactive":Z
    .end local v5    # "repeatCount":I
    .end local v6    # "source":I
    .end local v7    # "up":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 152
    .restart local v7    # "up":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 155
    .restart local v2    # "interactive":Z
    .restart local v5    # "repeatCount":I
    .restart local v6    # "source":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 171
    .restart local v0    # "down":Z
    :cond_6
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 173
    const/4 v8, 0x4

    if-eq v3, v8, :cond_7

    const/4 v8, 0x3

    if-eq v3, v8, :cond_7

    const/16 v8, 0x52

    if-ne v3, v8, :cond_8

    .line 175
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 178
    :cond_8
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 179
    const/4 v8, 0x3

    if-ne v3, v8, :cond_9

    .line 180
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 183
    :cond_9
    and-int/lit8 p2, p2, -0x3

    .line 184
    if-eqz v2, :cond_b

    const/4 v8, 0x4

    if-eq v3, v8, :cond_a

    const/4 v8, 0x3

    if-eq v3, v8, :cond_a

    const/16 v8, 0x52

    if-ne v3, v8, :cond_b

    :cond_a
    if-nez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_b

    const/16 v8, 0x101

    if-ne v6, v8, :cond_b

    .line 188
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 191
    :cond_b
    const/16 v8, 0x52

    if-eq v3, v8, :cond_c

    const/4 v8, 0x4

    if-ne v3, v8, :cond_e

    .line 192
    :cond_c
    if-eqz v2, :cond_d

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-nez v8, :cond_e

    .line 193
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 197
    :cond_e
    const/4 v8, 0x3

    if-eq v3, v8, :cond_f

    const/4 v8, 0x4

    if-ne v3, v8, :cond_13

    :cond_f
    const/16 v8, 0x101

    if-ne v6, v8, :cond_13

    .line 199
    if-eqz v7, :cond_10

    .line 200
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 201
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v4

    .line 202
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v10, 0x3c

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 203
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 205
    .end local v4    # "msg":Landroid/os/Message;
    :cond_10
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 209
    const/4 v8, 0x4

    if-ne v3, v8, :cond_11

    .line 210
    if-nez v0, :cond_12

    .line 211
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    :cond_11
    :goto_4
    const/4 v8, 0x4

    if-ne v3, v8, :cond_13

    .line 224
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 225
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 212
    :cond_12
    if-eqz v0, :cond_11

    if-nez v5, :cond_11

    .line 214
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 215
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/16 v8, 0x52

    if-ne v3, v8, :cond_17

    const/16 v8, 0x101

    if-ne v6, v8, :cond_17

    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v8

    if-nez v8, :cond_17

    .line 232
    if-eqz v7, :cond_16

    .line 233
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    if-eqz v8, :cond_14

    .line 234
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 236
    :cond_14
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 237
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 238
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 241
    :cond_15
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 242
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 243
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v10, 0x3c

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 246
    .end local v4    # "msg":Landroid/os/Message;
    :cond_16
    if-nez v7, :cond_17

    .line 247
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preloadRecentApps()V

    .line 248
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 249
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    .line 250
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 251
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 252
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 253
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 254
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 256
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 262
    .end local v4    # "msg":Landroid/os/Message;
    :cond_17
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 264
    if-nez v2, :cond_18

    const/16 v8, 0x86

    if-ne v3, v8, :cond_18

    .line 265
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 268
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v8

    goto/16 :goto_0
.end method

.method public keepScreenOn(I)V
    .locals 0
    .param p1, "millis"    # I

    .prologue
    .line 651
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 619
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "lidOpen"

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 624
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 625
    return-void

    .line 621
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAbortFingerprint()V
    .locals 2

    .prologue
    .line 798
    const-string v0, "WindowManager"

    const-string v1, "onAbortFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_1

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 802
    :cond_1
    return-void
.end method

.method public onIdentified(IZI)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "updated"    # Z
    .param p3, "mFingerPrintBehavior"    # I

    .prologue
    const-wide/16 v8, 0x32

    const/16 v7, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 657
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onIdentified  success + mScreenOnFully "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mKeyguard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAwake "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 660
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 662
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resetAttempts()V

    .line 663
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v1

    .line 664
    .local v1, "mNotOcculed":Z
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHideLockScreen:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v5, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v4, v5, :cond_4

    move v0, v2

    .line 665
    .local v0, "mHideLock":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-nez v4, :cond_5

    .line 667
    :cond_1
    sget-boolean v4, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v4, :cond_2

    .line 669
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 670
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 671
    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 672
    sput v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 678
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    new-instance v3, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 713
    :cond_3
    :goto_1
    return-void

    .end local v0    # "mHideLock":Z
    :cond_4
    move v0, v3

    .line 664
    goto :goto_0

    .line 686
    .restart local v0    # "mHideLock":Z
    :cond_5
    sget-boolean v4, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v4, :cond_3

    .line 688
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 689
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 690
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mScreenOnFully "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAwake "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sput v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 694
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 696
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-nez v2, :cond_3

    .line 700
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_1
.end method

.method public onNomatch(IIIII)V
    .locals 8
    .param p1, "attempts"    # I
    .param p2, "mFingerPrintBehavior"    # I
    .param p3, "result"    # I
    .param p4, "id"    # I
    .param p5, "userdata"    # I

    .prologue
    const-wide/16 v6, 0x12c

    const/16 v1, 0x8

    const/4 v4, 0x3

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 723
    const/4 p2, 0x0

    .line 724
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onNomatch attempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isKeyguardOn ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOnFully "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAwake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    if-gt p1, v4, :cond_3

    .line 728
    const/16 v0, 0x32

    if-lt p4, v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 732
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104075c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->showNoMatchView(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 751
    :cond_2
    :goto_0
    return-void

    .line 740
    :cond_3
    const/16 v0, 0x23

    if-ge p4, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_2

    .line 741
    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 744
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-nez v0, :cond_6

    .line 745
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 747
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->identifyPause()V

    .line 748
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onResumeFingerprint(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .prologue
    .line 787
    const-string v0, "WindowManager"

    const-string v1, "onResumeFingerprint  enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_0

    .line 789
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 794
    :cond_0
    return-void
.end method

.method public onStatus(II)V
    .locals 2
    .param p1, "mStatus"    # I
    .param p2, "userData"    # I

    .prologue
    .line 854
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessage(I)Z

    .line 868
    :cond_0
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 3
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 807
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 808
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenTurningOn  resume mScreenOnFully= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isInteractive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    const-string v0, "WindowManager"

    const-string v1, "screenTurningOn  resume fingerprintUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 817
    :cond_0
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 756
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 758
    const-string v0, "WindowManager"

    const-string v1, "startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 761
    return-void
.end method

.method public updateOemSettings()V
    .locals 6

    .prologue
    .line 561
    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 562
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "oem_acc_key_define"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 567
    .local v1, "mMenubehavior":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 569
    :try_start_0
    const-string v3, "proc/s1302/key_rep"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 577
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    const-string v3, "proc/s1302/key_rep"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 578
    :catch_1
    move-exception v0

    .line 580
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
