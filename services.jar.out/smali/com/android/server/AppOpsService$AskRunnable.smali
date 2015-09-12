.class final Lcom/android/server/AppOpsService$AskRunnable;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AskRunnable"
.end annotation


# instance fields
.field final code:I

.field final op:Lcom/android/server/AppOpsService$Op;

.field final packageName:Ljava/lang/String;

.field final request:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p6, "request"    # Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    .line 1505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1506
    iput p2, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    .line 1507
    iput p3, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    .line 1508
    iput-object p4, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    .line 1509
    iput-object p5, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    .line 1510
    iput-object p6, p0, Lcom/android/server/AppOpsService$AskRunnable;->request:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .line 1511
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1515
    const/4 v7, 0x0

    .line 1516
    .local v7, "permDialog":Lcom/android/server/PermissionDialog;
    iget-object v8, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v8

    .line 1520
    :try_start_0
    const-string v1, "AppOps"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating dialog box, packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->request:Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-virtual {v1, v2}, Lcom/android/server/PermissionDialogReqQueue;->register(Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    .line 1522
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v1}, Lcom/android/server/PermissionDialogReqQueue;->getDialog()Lcom/android/server/PermissionDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1523
    new-instance v0, Lcom/android/server/PermissionDialog;

    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, p0, Lcom/android/server/AppOpsService$AskRunnable;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, v3, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/android/server/AppOpsService$AskRunnable;->code:I

    iget v5, p0, Lcom/android/server/AppOpsService$AskRunnable;->uid:I

    iget-object v6, p0, Lcom/android/server/AppOpsService$AskRunnable;->packageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PermissionDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;Landroid/os/Handler;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    .end local v7    # "permDialog":Lcom/android/server/PermissionDialog;
    .local v0, "permDialog":Lcom/android/server/PermissionDialog;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$AskRunnable;->op:Lcom/android/server/AppOpsService$Op;

    iget-object v1, v1, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v1, v0}, Lcom/android/server/PermissionDialogReqQueue;->setDialog(Lcom/android/server/PermissionDialog;)V

    .line 1527
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1528
    if-eqz v0, :cond_0

    .line 1529
    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->show()V

    .line 1530
    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->updateText()V

    .line 1534
    :cond_0
    return-void

    .line 1527
    .end local v0    # "permDialog":Lcom/android/server/PermissionDialog;
    .restart local v7    # "permDialog":Lcom/android/server/PermissionDialog;
    :catchall_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "permDialog":Lcom/android/server/PermissionDialog;
    .restart local v0    # "permDialog":Lcom/android/server/PermissionDialog;
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1

    .end local v0    # "permDialog":Lcom/android/server/PermissionDialog;
    .restart local v7    # "permDialog":Lcom/android/server/PermissionDialog;
    :cond_1
    move-object v0, v7

    .end local v7    # "permDialog":Lcom/android/server/PermissionDialog;
    .restart local v0    # "permDialog":Lcom/android/server/PermissionDialog;
    goto :goto_0
.end method
