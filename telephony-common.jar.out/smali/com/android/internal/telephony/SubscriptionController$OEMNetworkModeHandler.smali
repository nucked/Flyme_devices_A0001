.class Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;
.super Landroid/os/Handler;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OEMNetworkModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "x1"    # Lcom/android/internal/telephony/SubscriptionController$1;

    .prologue
    .line 1677
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1680
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1683
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1684
    .local v1, "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CONFIG_LTE_DONE. set dds on subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->access$500(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 1685
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->regDdsSwitchInfo()V
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionController;->access$600(Lcom/android/internal/telephony/SubscriptionController;)V

    .line 1686
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_0

    .line 1691
    .end local v1    # "subId":Ljava/lang/Integer;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1692
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1693
    .restart local v1    # "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OEM_EVENT_CONFIG_DDS_DONE subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phone id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->access$500(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 1695
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->unregDdsSwitchInfo()V
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionController;->access$700(Lcom/android/internal/telephony/SubscriptionController;)V

    .line 1696
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1698
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 1699
    .local v2, "subinfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_1

    .line 1700
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultDataCardIccid(Ljava/lang/String;)V

    .line 1701
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->storeOEMDefaultDataCardSlot(I)V

    goto/16 :goto_0

    .line 1704
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController$OEMNetworkModeHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dds subId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->access$500(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1680
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
