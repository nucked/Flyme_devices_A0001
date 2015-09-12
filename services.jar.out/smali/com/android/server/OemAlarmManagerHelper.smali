.class public Lcom/android/server/OemAlarmManagerHelper;
.super Ljava/lang/Object;
.source "OemAlarmManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemAlarmManagerHelper$GetDataFromProviderRunnable;
    }
.end annotation


# static fields
.field private static final COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static DEBUG:Z = false

.field private static final FILTER_NAME:Ljava/lang/String; = "alarm_filter_packages"

.field private static final INEXACT_ALARM_FEATURE_NAME:Ljava/lang/String; = "oem.inexact.alarm"

.field private static final TAG:Ljava/lang/String; = "OemAlarmManagerHelper"

.field private static filtrateAlarmStr:Ljava/lang/String;

.field private static mAlarm:Lcom/android/server/AlarmManagerService;

.field private static mContext:Landroid/content/Context;

.field private static mHaveAlarmFeature:Z

.field private static final mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLockObj:Ljava/lang/Object;

.field private static final mPkgWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoveFilterPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUidWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    .line 58
    sput-boolean v0, Lcom/android/server/OemAlarmManagerHelper;->mHaveAlarmFeature:Z

    .line 63
    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemAlarmManagerHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OemAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OemAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OemAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/OemAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OemAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/OemAlarmManagerHelper;->mLockObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/OemAlarmManagerHelper;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/OemAlarmManagerHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/server/OemAlarmManagerHelper;->getDataFromProvider(Landroid/content/Context;)V

    return-void
.end method

.method private static checkPackage(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 246
    .local v9, "uid":I
    sget-object v12, Lcom/android/server/OemAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 247
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "packages":[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 249
    const-string v11, "OemAlarmManagerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    return v10

    .line 252
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v7, v0, v2

    .line 268
    .local v7, "pkg":Ljava/lang/String;
    const-string v12, "clock"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "alarm"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "calendar"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "com.android.cts.app.stub"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 270
    :cond_2
    sget-boolean v11, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 271
    const-string v11, "OemAlarmManagerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Packagename match key! using exact alarm!!!  pkg == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_3
    const/4 v3, 0x0

    .line 277
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {v5, v7, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 282
    :goto_2
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-lez v12, :cond_4

    .line 283
    sget-boolean v11, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 284
    const-string v11, "OemAlarmManagerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This package use exact alarm !!!  pkg == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 252
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_5
    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v8, v0, v2

    .line 292
    .local v8, "pkg1":Ljava/lang/String;
    const-string v10, "OemAlarmManagerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This package use inexact alarm !!!  pkg1 == "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v8    # "pkg1":Ljava/lang/String;
    :cond_6
    move v10, v11

    .line 295
    goto/16 :goto_0
.end method

.method private static checkUid()Z
    .locals 6

    .prologue
    .line 215
    sget-boolean v3, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 216
    sget-object v3, Lcom/android/server/OemAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    .local v2, "uidWhite":Ljava/lang/String;
    const-string v3, "OemAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid in mUidWhiteList =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v2    # "uidWhite":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 221
    .local v1, "uid":I
    invoke-static {v1}, Lcom/android/server/OemAlarmManagerHelper;->inUidWhiteList(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    sget-boolean v3, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 223
    const-string v3, "OemAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUid uid == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is inUidWhiteList!  using exact alarm!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    const/4 v3, 0x1

    .line 230
    :goto_1
    return v3

    .line 227
    :cond_2
    sget-boolean v3, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 228
    const-string v3, "OemAlarmManagerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This uid use inexact alarm !!!  uid == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getDataFromProvider(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 408
    const/4 v7, 0x0

    .line 409
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 410
    .local v6, "configVersion":I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "version"

    aput-object v0, v2, v1

    const-string v0, "xml"

    aput-object v0, v2, v3

    .line 412
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/android/server/OemAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/OemAlarmManagerHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    const-string v3, "filtername=\"alarm_filter_packages\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 415
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 416
    const-string v0, "version"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 417
    .local v9, "versioncolumnIndex":I
    const-string v0, "xml"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 418
    .local v10, "xmlcolumnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 419
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 420
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    .line 421
    sget-boolean v0, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "OemAlarmManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The version is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " , The filtrateAlarmStr is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/server/OemAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/OemAlarmManagerHelper;->getWhiteList(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v9    # "versioncolumnIndex":I
    .end local v10    # "xmlcolumnIndex":I
    :goto_0
    if-eqz v7, :cond_1

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v7, 0x0

    .line 439
    :cond_1
    :goto_1
    return-void

    .line 427
    :cond_2
    :try_start_1
    const-string v0, "OemAlarmManagerHelper"

    const-string v1, "The Filtrate alarm cursor is null,so get data from xml file in system/etc/alarm_filter_packages.xml !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OemAlarmManagerHelper;->getWhiteList(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v8

    .line 431
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "OemAlarmManagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We can not get Filtrate app data from provider,because of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    if-eqz v7, :cond_1

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v7, 0x0

    goto :goto_1

    .line 433
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method public static getWhiteList(Z)V
    .locals 11
    .param p0, "isFromdb"    # Z

    .prologue
    .line 323
    const/4 v6, 0x0

    .line 324
    .local v6, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 325
    .local v3, "strReader":Ljava/io/StringReader;
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 326
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "mUidWhiteList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 329
    :cond_0
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 330
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "mPkgWhiteList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 333
    :cond_1
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 334
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "mKeyList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 337
    :cond_2
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 338
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "mRemoveFilterPackagesList is not empty!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 342
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 343
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-nez p0, :cond_7

    .line 344
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/alarm_filter_packages.xml"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    .local v5, "xmlFile":Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .local v7, "xmlReader":Ljava/io/FileReader;
    :try_start_2
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v7

    .line 359
    .end local v5    # "xmlFile":Ljava/io/File;
    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    :goto_0
    :try_start_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 360
    .local v1, "eventType":I
    :goto_1
    const/4 v8, 0x1

    if-eq v1, v8, :cond_f

    .line 361
    packed-switch v1, :pswitch_data_0

    .line 384
    :cond_4
    :goto_2
    :pswitch_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 348
    .end local v1    # "eventType":I
    .restart local v5    # "xmlFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v8, "OemAlarmManagerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find or open alarm_filter_packages file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    if-eqz v6, :cond_5

    .line 393
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 395
    :cond_5
    if-eqz v3, :cond_6

    .line 396
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 402
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "xmlFile":Ljava/io/File;
    :cond_6
    :goto_3
    return-void

    .line 398
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "xmlFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 399
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 354
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "xmlFile":Ljava/io/File;
    :cond_7
    :try_start_5
    new-instance v4, Ljava/io/StringReader;

    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->filtrateAlarmStr:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 355
    .end local v3    # "strReader":Ljava/io/StringReader;
    .local v4, "strReader":Ljava/io/StringReader;
    :try_start_6
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v3, v4

    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto :goto_0

    .line 366
    .restart local v1    # "eventType":I
    :pswitch_1
    :try_start_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UidWhiteArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 367
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 368
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 386
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 387
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_8
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 392
    if-eqz v6, :cond_8

    .line 393
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 395
    :cond_8
    if-eqz v3, :cond_6

    .line 396
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 398
    :catch_3
    move-exception v0

    .line 399
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 369
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PkgWhiteArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 370
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 371
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 388
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_b
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "Got execption parsing permissions."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 392
    if-eqz v6, :cond_a

    .line 393
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 395
    :cond_a
    if-eqz v3, :cond_6

    .line 396
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    .line 398
    :catch_5
    move-exception v0

    .line 399
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 372
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FilterPackagesArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 373
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 374
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 391
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v8

    .line 392
    :goto_6
    if-eqz v6, :cond_c

    .line 393
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 395
    :cond_c
    if-eqz v3, :cond_d

    .line 396
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 400
    :cond_d
    :goto_7
    throw v8

    .line 375
    .restart local v1    # "eventType":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_e
    :try_start_f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KeyArray"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 376
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 377
    sget-object v8, Lcom/android/server/OemAlarmManagerHelper;->mKeyList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 392
    :cond_f
    if-eqz v6, :cond_10

    .line 393
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 395
    :cond_10
    if-eqz v3, :cond_6

    .line 396
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_3

    .line 398
    :catch_6
    move-exception v0

    .line 399
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OemAlarmManagerHelper"

    const-string v9, "Got execption close permReader."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 398
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v0

    .line 399
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "OemAlarmManagerHelper"

    const-string v10, "Got execption close permReader."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 391
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "xmlFile":Ljava/io/File;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto :goto_6

    .end local v3    # "strReader":Ljava/io/StringReader;
    .end local v5    # "xmlFile":Ljava/io/File;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto :goto_6

    .line 388
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlFile":Ljava/io/File;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v6, v7

    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v3    # "strReader":Ljava/io/StringReader;
    .end local v5    # "xmlFile":Ljava/io/File;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto/16 :goto_5

    .line 386
    .end local v6    # "xmlReader":Ljava/io/FileReader;
    .restart local v5    # "xmlFile":Ljava/io/File;
    .restart local v7    # "xmlReader":Ljava/io/FileReader;
    :catch_a
    move-exception v0

    move-object v6, v7

    .end local v7    # "xmlReader":Ljava/io/FileReader;
    .restart local v6    # "xmlReader":Ljava/io/FileReader;
    goto/16 :goto_4

    .end local v3    # "strReader":Ljava/io/StringReader;
    .end local v5    # "xmlFile":Ljava/io/File;
    .restart local v4    # "strReader":Ljava/io/StringReader;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4    # "strReader":Ljava/io/StringReader;
    .restart local v3    # "strReader":Ljava/io/StringReader;
    goto/16 :goto_4

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inPackageNameWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 303
    sget-object v0, Lcom/android/server/OemAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/server/OemAlarmManagerHelper;->mPkgWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static inUidWhiteList(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 313
    sget-object v0, Lcom/android/server/OemAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/OemAlarmManagerHelper;->mUidWhiteList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 97
    sput-object p0, Lcom/android/server/OemAlarmManagerHelper;->mContext:Landroid/content/Context;

    .line 98
    sput-object p1, Lcom/android/server/OemAlarmManagerHelper;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 99
    sget-object v1, Lcom/android/server/OemAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    .local v0, "pms":Landroid/content/pm/PackageManager;
    const-string v1, "oem.inexact.alarm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/OemAlarmManagerHelper;->mHaveAlarmFeature:Z

    .line 103
    return-void
.end method

.method public static isFilterRemovePackage(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 445
    sget-boolean v2, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 446
    sget-object v2, Lcom/android/server/OemAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 447
    .local v1, "removePackage":Ljava/lang/String;
    const-string v2, "OemAlarmManagerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackage in mRemoveFilterPackagesList =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "removePackage":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/server/OemAlarmManagerHelper;->mRemoveFilterPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isNeedInexactAlarm()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    sget-boolean v1, Lcom/android/server/OemAlarmManagerHelper;->mHaveAlarmFeature:Z

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    sget-object v1, Lcom/android/server/OemAlarmManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/OemAlarmManagerHelper;->checkPackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setInexactAlarm(J)J
    .locals 6
    .param p0, "windowLength"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 129
    sget-boolean v1, Lcom/android/server/OemAlarmManagerHelper;->mHaveAlarmFeature:Z

    if-eqz v1, :cond_2

    cmp-long v1, p0, v2

    if-nez v1, :cond_2

    .line 130
    sget-boolean v1, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "OemAlarmManagerHelper"

    const-string v4, "windowLength == AlarmManager.WINDOW_EXACT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    sget-object v4, Lcom/android/server/OemAlarmManagerHelper;->mLockObj:Ljava/lang/Object;

    monitor-enter v4

    .line 135
    :try_start_0
    invoke-static {}, Lcom/android/server/OemAlarmManagerHelper;->isNeedInexactAlarm()Z

    move-result v0

    .line 136
    .local v0, "isInexact":Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz v0, :cond_3

    .line 138
    sget-boolean v1, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "OemAlarmManagerHelper"

    const-string v2, "Using  inexact alarm!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    const-wide/16 p0, -0x1

    .line 152
    .end local p0    # "windowLength":J
    :cond_2
    :goto_0
    return-wide p0

    .line 136
    .end local v0    # "isInexact":Z
    .restart local p0    # "windowLength":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 144
    .restart local v0    # "isInexact":Z
    :cond_3
    sget-boolean v1, Lcom/android/server/OemAlarmManagerHelper;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 145
    const-string v1, "OemAlarmManagerHelper"

    const-string v4, "Using exact alarm!!!!!!!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-wide p0, v2

    .line 148
    goto :goto_0
.end method
