.class Lcn/oneplus/telephony/OemDataCardSelectionController$1;
.super Landroid/content/BroadcastReceiver;
.source "OemDataCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/oneplus/telephony/OemDataCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;


# direct methods
.method constructor <init>(Lcn/oneplus/telephony/OemDataCardSelectionController;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const-wide/16 v8, 0x7d0

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    const-string v5, "slot"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 220
    .local v3, "slot":I
    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "stateExtra":Ljava/lang/String;
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$000(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Z

    move-result-object v5

    aput-boolean v6, v5, v3

    .line 223
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v5

    sget-object v6, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_UNKNOWN:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v6, v5, v3

    .line 224
    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "IMSI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 226
    :cond_0
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$000(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Z

    move-result-object v5

    const/4 v6, 0x1

    aput-boolean v6, v5, v3

    .line 227
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v5

    sget-object v6, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v6, v5, v3

    .line 230
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->getHandleIccLoaded(I)Z
    invoke-static {v5, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$200(Lcn/oneplus/telephony/OemDataCardSelectionController;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 232
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->clearHandleIccLoaded(I)V
    invoke-static {v5, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$300(Lcn/oneplus/telephony/OemDataCardSelectionController;I)V

    .line 235
    :cond_1
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->all_cards_state_known()Z
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$400(Lcn/oneplus/telephony/OemDataCardSelectionController;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$500(Lcn/oneplus/telephony/OemDataCardSelectionController;)I

    move-result v1

    .line 239
    .local v1, "cardstates":I
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v7, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 240
    .local v2, "delay_msg":Landroid/os/Message;
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-virtual {v5, v2, v8, v9}, Lcn/oneplus/telephony/OemDataCardSelectionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 270
    .end local v1    # "cardstates":I
    .end local v2    # "delay_msg":Landroid/os/Message;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SIM_STATE_CHANGED intent received SIM STATE is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIccLoaded["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mIccLoaded:[Z
    invoke-static {v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$000(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Z

    move-result-object v7

    aget-boolean v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$700(Lcn/oneplus/telephony/OemDataCardSelectionController;Ljava/lang/String;)V

    .line 273
    .end local v3    # "slot":I
    .end local v4    # "stateExtra":Ljava/lang/String;
    :cond_3
    return-void

    .line 244
    .restart local v3    # "slot":I
    .restart local v4    # "stateExtra":Ljava/lang/String;
    :cond_4
    const-string v5, "NOT_READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 245
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v5

    sget-object v6, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v6, v5, v3

    .line 247
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->all_cards_state_known()Z
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$400(Lcn/oneplus/telephony/OemDataCardSelectionController;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$500(Lcn/oneplus/telephony/OemDataCardSelectionController;)I

    move-result v1

    .line 249
    .restart local v1    # "cardstates":I
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v7, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 250
    .restart local v2    # "delay_msg":Landroid/os/Message;
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-virtual {v5, v2, v8, v9}, Lcn/oneplus/telephony/OemDataCardSelectionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 253
    .end local v1    # "cardstates":I
    .end local v2    # "delay_msg":Landroid/os/Message;
    :cond_5
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 254
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v5

    sget-object v6, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v6, v5, v3

    .line 255
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mSubInfoListProcessing:[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$600(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController$SimpleSubInfo;->clear()V

    .line 257
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # invokes: Lcn/oneplus/telephony/OemDataCardSelectionController;->copy_card_state()I
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$500(Lcn/oneplus/telephony/OemDataCardSelectionController;)I

    move-result v1

    .line 258
    .restart local v1    # "cardstates":I
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    const/4 v6, 0x6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 259
    .restart local v2    # "delay_msg":Landroid/os/Message;
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    invoke-virtual {v5, v2, v8, v9}, Lcn/oneplus/telephony/OemDataCardSelectionController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 261
    .end local v1    # "cardstates":I
    .end local v2    # "delay_msg":Landroid/os/Message;
    :cond_6
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 263
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v5

    sget-object v6, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_READY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v6, v5, v3

    goto/16 :goto_0

    .line 265
    :cond_7
    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    iget-object v5, p0, Lcn/oneplus/telephony/OemDataCardSelectionController$1;->this$0:Lcn/oneplus/telephony/OemDataCardSelectionController;

    # getter for: Lcn/oneplus/telephony/OemDataCardSelectionController;->mCardState:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    invoke-static {v5}, Lcn/oneplus/telephony/OemDataCardSelectionController;->access$100(Lcn/oneplus/telephony/OemDataCardSelectionController;)[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    move-result-object v5

    sget-object v6, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOCKED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v6, v5, v3

    goto/16 :goto_0
.end method
