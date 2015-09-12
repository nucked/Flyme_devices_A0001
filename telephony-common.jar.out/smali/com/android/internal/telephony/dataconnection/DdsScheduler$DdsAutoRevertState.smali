.class Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;
.super Lcom/android/internal/util/State;
.source "DdsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DdsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DdsAutoRevertState"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsScheduler[DdsAutoRevertState]"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 701
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    const-string v1, "Enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->triggerSwitch(Landroid/net/NetworkRequest;)V

    .line 704
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 708
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 713
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 726
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x84005

    if-ne v0, v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const/16 v1, -0x3e8

    # setter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->messageReqId:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1402(Lcom/android/internal/telephony/dataconnection/DdsScheduler;I)I

    .line 730
    :cond_0
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 715
    :pswitch_0
    const-string v0, "DdsScheduler[DdsAutoRevertState]"

    const-string v1, "SET_DDS_DONE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->updateCurrentDds(Landroid/net/NetworkRequest;)V

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsIdleState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2800(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsIdleState;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$3000(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    .line 719
    const/4 v0, 0x1

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x84003
        :pswitch_0
    .end packed-switch
.end method
