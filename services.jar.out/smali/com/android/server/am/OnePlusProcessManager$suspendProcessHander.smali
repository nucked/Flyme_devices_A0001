.class Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "suspendProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 463
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 464
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v9, 0x2710

    const/16 v13, 0x9

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 469
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 470
    .local v4, "pid":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 471
    .local v6, "uid":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 473
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-lt v6, v9, :cond_0

    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    if-eqz v0, :cond_0

    .line 482
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v8, v9, :cond_0

    .line 485
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->checkIsNeedResumeProcess(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v8, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 486
    sget-boolean v8, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v8, :cond_0

    .line 487
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suspend falsefrom checkIsResumeProcess uid ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->isInputMethodApplication(Lcom/android/server/am/ProcessRecord;)Z
    invoke-static {v8, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$600(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 493
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suspend false from isInputMethodApplication uid ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    :cond_3
    if-eqz v0, :cond_4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v8, v8, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v8, :cond_4

    .line 500
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suspend false  order broadcast, return uid ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->suspendProcess(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v8, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$700(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 506
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioPids()[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->access$800(Lcom/android/server/am/OnePlusProcessManager;)[Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "mTrackPids":[Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 508
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v3

    if-ge v2, v8, :cond_8

    .line 509
    aget-object v8, v3, v2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 508
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 512
    :cond_6
    aget-object v8, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 513
    sget-boolean v8, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v8, :cond_0

    .line 514
    const-string v8, "OnePlusProcessManager"

    const-string v9, "suspend false #return from audio track 1"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 519
    :cond_7
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    aget-object v9, v3, v2

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->getProcessForPid(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    invoke-static {v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 520
    .local v5, "trackApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_5

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v8, v9, :cond_5

    .line 521
    sget-boolean v8, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v8, :cond_0

    .line 522
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suspend false from audio track 2 uid ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 530
    .end local v2    # "i":I
    .end local v5    # "trackApp":Lcom/android/server/am/ProcessRecord;
    :cond_8
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->getWakeLockedPids()[I
    invoke-static {v8}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;)[I

    move-result-object v7

    .line 531
    .local v7, "wakeLocks":[I
    if-eqz v7, :cond_a

    .line 532
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v8, v7

    if-ge v2, v8, :cond_a

    .line 533
    aget v8, v7, v2

    if-ne v4, v8, :cond_9

    .line 534
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v8, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1100(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 535
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suspend false #wakelock:  kill "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v9, v11}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 541
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_3
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8, v13}, Lcom/android/server/am/OnePlusProcessManager;->sendSignal(II)V

    goto/16 :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 532
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 555
    .end local v2    # "i":I
    :cond_a
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->isLocationApplication(I)Z
    invoke-static {v8, v9}, Lcom/android/server/am/OnePlusProcessManager;->access$1200(Lcom/android/server/am/OnePlusProcessManager;I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 556
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->cancelNotifications(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v8, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1100(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/ProcessRecord;)V

    .line 557
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suspend false #gps: kill uid ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v9, v11}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    .line 562
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 569
    :goto_4
    iget v8, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8, v13}, Lcom/android/server/am/OnePlusProcessManager;->sendSignal(II)V

    goto/16 :goto_0

    .line 564
    :catch_1
    move-exception v1

    .line 566
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 573
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_b
    sget-boolean v8, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v8, :cond_c

    .line 574
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "suspend false "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " suspend!!!!!!!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_c
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHander;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v8, v6, v12}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)V

    goto/16 :goto_0
.end method
