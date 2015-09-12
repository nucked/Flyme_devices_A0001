.class Lcom/android/server/am/OnePlusProcessManager$1;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 162
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_0

    .line 163
    const-string v3, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]handleMessage(): msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 168
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    new-instance v4, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v6, "/data/data_bpm/"

    invoke-direct {v4, v5, v6}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$002(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 169
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->startWatching()V

    goto :goto_0

    .line 174
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusProcessManager;->loadNPMConfigFiles()V

    .line 178
    :sswitch_2
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v0

    .line 180
    .local v0, "oldStatus":Z
    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 182
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_2

    .line 183
    const-string v3, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 186
    .local v2, "temp":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$300(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 192
    .end local v2    # "temp":Z
    :cond_4
    :goto_2
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_5

    .line 193
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FO]UPDATE_STS: after: mBPMStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 195
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v3

    if-eq v3, v0, :cond_1

    .line 196
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Z

    move-result v4

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->updateProcessStateForChanged(Z)V
    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$400(Lcom/android/server/am/OnePlusProcessManager;Z)V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 185
    goto :goto_1

    .line 189
    .restart local v2    # "temp":Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    goto :goto_2

    .line 203
    .end local v0    # "oldStatus":Z
    .end local v1    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "temp":Z
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v4, "/data/data_bpm/brd.xml"

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$302(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 208
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$1;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v4, "/data/data_bpm/pkg.xml"

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$202(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x6f -> :sswitch_0
        0x70 -> :sswitch_1
    .end sparse-switch
.end method
