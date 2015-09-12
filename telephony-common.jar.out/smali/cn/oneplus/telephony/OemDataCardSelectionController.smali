.class public Lcn/oneplus/telephony/OemDataCardSelectionController;
.super Landroid/os/Handler;
.source "OemDataCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;,
        Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_VOICE_SLOT_ID:I = 0x0

.field private static final MSG_ALL_CARDS_AVAILABLE:I = 0x1

.field private static final MSG_CHECK_CARD_STATUS_STABLE:I = 0x5

.field private static final MSG_CHECK_CARD_STATUS_STABLE_ABSENT:I = 0x6

.field private static final MSG_CONFIG_LTE_DONE:I = 0x2

.field private static final MSG_HANDLE_ICC_LOADED:I = 0x4

.field private static final MSG_MODEM_STACK_READY:I = 0x3

.field private static final OEM_CARD_STABLE_DURATION:I = 0x7d0

.field public static final OEM_DEFAULT_DATA_SLOT_ID:I = 0x0

.field static final PHONE_COUNT:I

.field static final TAG:Ljava/lang/String; = "OemDataCardSelectionController"

.field private static instance:Lcn/oneplus/telephony/OemDataCardSelectionController;


# instance fields
.field private mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

.field private final mContext:Landroid/content/Context;

.field private mDefault_Data_Iccid:Ljava/lang/String;

.field private mDefault_Data_Slot:I

.field private mIccLoaded:[Z

.field private mInConfigLte:Z

.field mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private mNeedHandleIccLoadedEvent:[Z

.field private mNeedHandleModemReadyEvent:Z

.field private mNeedHandleModemReadyEventdds:Z

.field mPhones:[Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    iput-boolean v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    .line 81
    iput-boolean v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEvent:Z

    .line 82
    iput-boolean v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEventdds:Z

    .line 214
    new-instance v2, Lcn/oneplus/telephony/OemDataCardSelectionController$1;

    invoke-direct {v2, p0}, Lcn/oneplus/telephony/OemDataCardSelectionController$1;-><init>(Lcn/oneplus/telephony/OemDataCardSelectionController;)V

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    iput-object p1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    .line 164
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Lcom/android/internal/telephony/PhoneProxy;

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 165
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v2

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 169
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    .line 171
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    aput-boolean v4, v2, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    .line 175
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_1

    .line 176
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_UNKNOWN:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v3, v2, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_1
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    .line 180
    const/4 v0, 0x0

    :goto_2
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    .line 181
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    new-instance v3, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    invoke-direct {v3, p0}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;-><init>(Lcn/oneplus/telephony/OemDataCardSelectionController;)V

    aput-object v3, v2, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 184
    :cond_2
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    .line 185
    const/4 v0, 0x0

    :goto_3
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_3

    .line 186
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    aput-boolean v4, v2, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 189
    :cond_3
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    if-eqz v2, :cond_4

    .line 190
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Z
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    return-object v0
.end method

.method static synthetic access$200(Lcn/oneplus/telephony/OemDataCardSelectionController;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getHandleIccLoaded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/oneplus/telephony/OemDataCardSelectionController;I)V
    .locals 0
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->clearHandleIccLoaded(I)V

    return-void
.end method

.method static synthetic access$400(Lcn/oneplus/telephony/OemDataCardSelectionController;)Z
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->all_cards_state_known()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/oneplus/telephony/OemDataCardSelectionController;)I
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 54
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;
    .locals 1
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcn/oneplus/telephony/OemDataCardSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/oneplus/telephony/OemDataCardSelectionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private all_cards_state_absent()Z
    .locals 4

    .prologue
    .line 338
    const/4 v0, 0x1

    .line 340
    .local v0, "all_absent":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    .line 341
    sget-object v2, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 342
    const/4 v0, 0x0

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all_absent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 347
    return v0

    .line 340
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private all_cards_state_known()Z
    .locals 5

    .prologue
    .line 297
    const/4 v0, 0x1

    .line 298
    .local v0, "all_known":Z
    const/4 v1, 0x0

    .line 301
    .local v1, "card_not_handled":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v2, v3, :cond_4

    .line 302
    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_UNKNOWN:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_0

    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_READY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_0

    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOCKED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-ne v3, v4, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 309
    :cond_1
    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-ne v3, v4, :cond_3

    .line 310
    add-int/lit8 v1, v1, 0x1

    .line 301
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_3
    sget-object v3, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v4, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v4, v4, v2

    if-ne v3, v4, :cond_2

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 315
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "all_known="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", card_not_handled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 316
    if-eqz v0, :cond_5

    sget v3, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-eq v1, v3, :cond_5

    .line 317
    const/4 v3, 0x1

    .line 320
    :goto_2
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private all_cards_state_loaded()Z
    .locals 4

    .prologue
    .line 325
    const/4 v0, 0x1

    .line 327
    .local v0, "all_loaded":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v2, :cond_0

    .line 328
    sget-object v2, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v3, v3, v1

    if-eq v2, v3, :cond_1

    .line 329
    const/4 v0, 0x0

    .line 333
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all_loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 334
    return v0

    .line 327
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearHandleIccLoaded(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 282
    return-void
.end method

.method private copy_card_state()I
    .locals 4

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    .line 291
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->ordinal()I

    move-result v2

    mul-int/lit8 v3, v1, 0xa

    add-int v1, v2, v3

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return v1
.end method

.method private getHandleIccLoaded(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public static getInstance()Lcn/oneplus/telephony/OemDataCardSelectionController;
    .locals 3

    .prologue
    .line 626
    const-class v1, Lcn/oneplus/telephony/OemDataCardSelectionController;

    monitor-enter v1

    .line 627
    :try_start_0
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "OemDataCardSelectionController was not initialize!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 630
    :cond_0
    :try_start_1
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getPreferredNetworkFromDb(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 677
    const/4 v0, -0x1

    .line 679
    .local v0, "nwMode":I
    :try_start_0
    iget-object v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 683
    :goto_0
    return v0

    .line 681
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    const-class v1, Lcn/oneplus/telephony/OemDataCardSelectionController;

    monitor-enter v1

    .line 618
    :try_start_0
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-direct {v0, p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    .line 620
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController;->instance:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-static {v0}, Lcom/android/internal/telephony/OemUtils;->setoemDCSinstance(Ljava/lang/Object;)V

    .line 622
    :cond_0
    monitor-exit v1

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v0, "OemDataCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "OemDataCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private setDefaultVoiceSub()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 389
    const/4 v4, 0x0

    .line 390
    .local v4, "mActCount":I
    const/4 v0, 0x0

    .line 391
    .local v0, "activesub":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 392
    .local v6, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v6, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 396
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 397
    move-object v0, v5

    .line 398
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 401
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    if-eqz v4, :cond_0

    .line 405
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->fetchOEMDefaultVoiceCardIccid()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "iccid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 407
    .local v1, "destsub":Landroid/telephony/SubscriptionInfo;
    if-ne v4, v8, :cond_5

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultVoiceSub: one active sub "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " make it default voice sub."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 409
    move-object v1, v0

    .line 424
    :cond_4
    :goto_2
    if-eqz v1, :cond_0

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultVoiceSub: set default voice to slot"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_0

    .line 412
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 413
    .restart local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_7

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 414
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultVoiceSub: iccid match in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 415
    move-object v1, v5

    .line 416
    goto :goto_2

    .line 418
    :cond_7
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    if-nez v7, :cond_6

    .line 419
    move-object v1, v5

    goto :goto_3
.end method

.method private setHandleIccLoaded(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleIccLoadedEvent:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 278
    return-void
.end method

.method private setLastDataSub()V
    .locals 15

    .prologue
    .line 433
    const/4 v7, 0x0

    .line 434
    .local v7, "mActCount":I
    const/4 v0, 0x0

    .line 436
    .local v0, "activesub":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v12

    .line 437
    .local v12, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v12, :cond_0

    .line 438
    const-string v13, "no active sub now."

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    .line 443
    .local v11, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getStatus()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 445
    move-object v0, v11

    .line 446
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 449
    .end local v11    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    if-nez v7, :cond_3

    .line 450
    const-string v13, "not any active subinfo."

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_3
    const/4 v9, 0x0

    .line 455
    .local v9, "need_update":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget v13, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v3, v13, :cond_6

    .line 456
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    .line 457
    .restart local v11    # "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v11, :cond_5

    .line 459
    iget-object v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    aget-object v13, v13, v3

    invoke-virtual {v13}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->is_absent_sub()Z

    move-result v13

    if-nez v13, :cond_4

    .line 460
    const/4 v9, 0x1

    .line 461
    iget-object v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    aget-object v13, v13, v3

    invoke-virtual {v13}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->clear()V

    .line 455
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 465
    :cond_5
    iget-object v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    aget-object v13, v13, v3

    invoke-virtual {v13, v11}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->compare(Landroid/telephony/SubscriptionInfo;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 466
    const/4 v9, 0x1

    .line 467
    iget-object v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    aget-object v13, v13, v3

    invoke-virtual {v13, v11}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->cp(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_3

    .line 472
    .end local v11    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_6
    if-nez v9, :cond_7

    .line 473
    const-string v13, "all sub infos are the same, no process."

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_7
    iget-object v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v13}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v13

    if-nez v13, :cond_8

    .line 478
    const-string v13, "modem stack is not ready, do not set primary sub."

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    .line 479
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEvent:Z

    goto :goto_0

    .line 483
    :cond_8
    iget-boolean v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    if-eqz v13, :cond_9

    .line 484
    const-string v13, "In configuring LTE now."

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/SubscriptionController;->fetchOEMDefaultDataCardIccid()Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, "last_data_card_iccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/SubscriptionController;->fetchOEMDefaultDataCardSlot()I

    move-result v6

    .line 495
    .local v6, "last_data_slot":I
    const/4 v8, -0x1

    .line 496
    .local v8, "multi_mode_slot":I
    packed-switch v7, :pswitch_data_0

    .line 524
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fatal, can\'t arrive here. active sub count:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :pswitch_0
    if-eqz v5, :cond_a

    .line 500
    const/4 v3, 0x0

    :goto_4
    sget v13, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v3, v13, :cond_a

    .line 501
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    .line 502
    .restart local v11    # "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v11, :cond_d

    .line 503
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 504
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "match iccid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in slot"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 505
    move v8, v3

    .line 513
    .end local v11    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_a
    const/4 v13, -0x1

    if-ne v13, v8, :cond_c

    .line 514
    const/4 v13, -0x1

    if-ne v13, v6, :cond_b

    .line 515
    const/4 v6, 0x0

    .line 517
    :cond_b
    move v8, v6

    .line 529
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getPrimarySlot()I

    move-result v10

    .line 530
    .local v10, "primarySlot":I
    iput v8, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    .line 531
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v13

    iget v14, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Iccid:Ljava/lang/String;

    .line 535
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "multi_mode_slot="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", primarySlot="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", default data iccid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Iccid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 539
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    .line 544
    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .line 545
    .local v2, "data_phone":Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 546
    .local v1, "data_pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v13, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->OemsetInitialAttachApn()V

    .line 547
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/internal/telephony/OemUtils;->setInitApnSentFlag(Z)V

    .line 549
    const/4 v13, 0x2

    invoke-virtual {p0, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {p0, v8, v13}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setPreferredNetwork(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 500
    .end local v1    # "data_pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "data_phone":Lcom/android/internal/telephony/PhoneProxy;
    .end local v10    # "primarySlot":I
    .restart local v11    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 521
    .end local v11    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    .line 522
    goto :goto_5

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMultiMode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 649
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v3, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v3, :cond_1

    .line 650
    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getPreferredNetworkFromDb(I)I

    move-result v0

    .line 651
    .local v0, "current":I
    if-eq v0, v2, :cond_0

    .line 655
    .end local v0    # "current":I
    :goto_1
    return v0

    .line 649
    .restart local v0    # "current":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "current":I
    :cond_1
    move v0, v2

    .line 655
    goto :goto_1
.end method

.method public getPrimarySlot()I
    .locals 3

    .prologue
    .line 659
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcn/oneplus/telephony/OemDataCardSelectionController;->PHONE_COUNT:I

    if-ge v1, v2, :cond_2

    .line 660
    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getPreferredNetworkFromDb(I)I

    move-result v0

    .line 661
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    .line 668
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 659
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 560
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 562
    :pswitch_0
    const-string v3, "on EVENT MSG_MODEM_STACK_READY"

    invoke-direct {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 563
    iget-boolean v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEventdds:Z

    if-eqz v3, :cond_1

    .line 565
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onConfigLteDone()V

    .line 566
    iput-boolean v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEventdds:Z

    .line 569
    :cond_1
    iget-boolean v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEvent:Z

    if-eqz v3, :cond_0

    .line 570
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setLastDataSub()V

    .line 571
    iput-boolean v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEvent:Z

    goto :goto_0

    .line 575
    :pswitch_1
    const-string v3, "on EVENT MSG_ALL_CARDS_AVAILABLE"

    invoke-direct {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setLastDataSub()V

    goto :goto_0

    .line 579
    :pswitch_2
    const-string v3, "on EVENT MSG_CONFIG_LTE_DONE"

    invoke-direct {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 580
    iput-boolean v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mInConfigLte:Z

    .line 581
    invoke-virtual {p0, p1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onConfigLteDone(Landroid/os/Message;)V

    goto :goto_0

    .line 584
    :pswitch_3
    const-string v3, "on EVENT MSG_HANDLE_ICC_LOADED"

    invoke-direct {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onIccLoadedDone()V

    goto :goto_0

    .line 588
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 590
    .local v0, "cardstate_before":Ljava/lang/Integer;
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I

    move-result v1

    .line 591
    .local v1, "cardstate_now":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on EVENT MSG_CHECK_CARD_STATUS_STABLE, card state before:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", card state now:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 594
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 598
    .end local v0    # "cardstate_before":Ljava/lang/Integer;
    .end local v1    # "cardstate_now":I
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 600
    .restart local v0    # "cardstate_before":Ljava/lang/Integer;
    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I

    move-result v1

    .line 601
    .restart local v1    # "cardstate_now":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on EVENT MSG_CHECK_CARD_STATUS_STABLE_ABSENT, card state before:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", card state now:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->all_cards_state_absent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    move-result-object v2

    .line 608
    .local v2, "dummySubId":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDataSubId(I)V

    goto/16 :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onConfigLteDone()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onConfigLteDone(Landroid/os/Message;)V

    .line 352
    return-void
.end method

.method protected onConfigLteDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 360
    iget v1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    .line 361
    .local v1, "primarySlot":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 362
    .local v0, "currentDdsSubid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigLteDone primary Slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentDdsSubid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIccLoaded["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modem stack is not ready, do not set dds on sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    .line 368
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mNeedHandleModemReadyEventdds:Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    .line 373
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 383
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    iget v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Slot:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultDataCardSlot(I)V

    .line 384
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    iget-object v3, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mDefault_Data_Iccid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultDataCardIccid(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icc not loaded in primary Slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wait and handle icc load event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController;->loge(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->setHandleIccLoaded(I)V

    goto :goto_1
.end method

.method protected onIccLoadedDone()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->onConfigLteDone(Landroid/os/Message;)V

    .line 356
    return-void
.end method

.method public setPreferredNetwork(ILandroid/os/Message;)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 636
    invoke-virtual {p0}, Lcn/oneplus/telephony/OemDataCardSelectionController;->getMultiMode()I

    move-result v0

    .line 637
    .local v0, "network":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dds and multi mode for sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V

    .line 638
    new-instance v1, Lcom/android/internal/telephony/OemPrefNetworkRequest;

    iget-object v2, p0, Lcn/oneplus/telephony/OemDataCardSelectionController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/android/internal/telephony/OemPrefNetworkRequest;-><init>(Landroid/content/Context;IILandroid/os/Message;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/OemPrefNetworkRequest;->loop()V

    .line 640
    return-void
.end method
