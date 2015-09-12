.class Lcom/android/internal/policy/impl/UcGlobalActions$12;
.super Landroid/os/Handler;
.source "UcGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1216
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mUserUcPower:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1800(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->onRemoveWindow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2000(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    goto :goto_0

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2100(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2100(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1224
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mDialog:Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2102(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;)Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;

    goto :goto_0

    .line 1228
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2200(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    .line 1231
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mUserUcPower:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1800(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$800(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1238
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$12;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2300(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    goto :goto_0

    .line 1212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
