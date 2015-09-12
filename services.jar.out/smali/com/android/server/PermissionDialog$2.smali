.class Lcom/android/server/PermissionDialog$2;
.super Landroid/os/Handler;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 183
    .local v5, "remember":Z
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 191
    :pswitch_0
    const/4 v4, 0x1

    .line 197
    .local v4, "mode":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$400(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$500(Lcom/android/server/PermissionDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 201
    iget-object v0, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$900(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCode:I
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$600(Lcom/android/server/PermissionDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUid:I
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$700(Lcom/android/server/PermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$800(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZ)V

    .line 203
    iget-object v0, p0, Lcom/android/server/PermissionDialog$2;->this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->dismiss()V

    .line 204
    return-void

    .line 185
    .end local v4    # "mode":I
    :pswitch_1
    const/4 v4, 0x0

    .line 186
    .restart local v4    # "mode":I
    goto :goto_0

    .line 188
    .end local v4    # "mode":I
    :pswitch_2
    const/4 v4, 0x1

    .line 189
    .restart local v4    # "mode":I
    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
