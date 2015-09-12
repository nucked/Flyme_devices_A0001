.class Landroid/hardware/camera2/legacy/RequestThreadManager$5;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCleanup:Z

.field private final mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 1

    .prologue
    .line 735
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 737
    new-instance v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/LegacyResultMapper;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 741
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    if-eqz v3, :cond_0

    .line 742
    const/4 v3, 0x1

    .line 1023
    :goto_0
    return v3

    .line 745
    :cond_0
    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request thread handling message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_1
    const-wide/16 v22, 0x0

    .line 749
    .local v22, "startTime":J
    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v22

    .line 752
    :cond_2
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1020
    :pswitch_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on RequestThread."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 754
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;

    .line 755
    .local v9, "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    iget-object v3, v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    if-eqz v3, :cond_5

    iget-object v3, v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v21

    .line 756
    .local v21, "sizes":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configure outputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " surfaces configured."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 761
    .local v24, "success":Z
    if-nez v24, :cond_3

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Timed out while queueing configure request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v5, v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    # invokes: Landroid/hardware/camera2/legacy/RequestThreadManager;->configureOutputs(Ljava/util/Collection;)V
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$800(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    .line 773
    iget-object v3, v9, Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 774
    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 775
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    sub-long v26, v6, v22

    .line 776
    .local v26, "totalTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Configure took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    .end local v9    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v21    # "sizes":I
    .end local v24    # "success":Z
    .end local v26    # "totalTime":J
    :cond_4
    :goto_2
    :pswitch_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 755
    .restart local v9    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 765
    .restart local v21    # "sizes":I
    :catch_0
    move-exception v10

    .line 766
    .local v10, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Interrupted while waiting for requests to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_2

    .line 780
    .end local v9    # "config":Landroid/hardware/camera2/legacy/RequestThreadManager$ConfigureHolder;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v21    # "sizes":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestThread:Landroid/hardware/camera2/legacy/RequestHandlerThread;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestHandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 783
    .local v11, "handler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    move-result-object v15

    .line 785
    .local v15, "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    if-nez v15, :cond_8

    .line 789
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 791
    .restart local v24    # "success":Z
    if-nez v24, :cond_6

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Timed out while waiting for prior requests to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 803
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mIdleLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 805
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestQueue:Landroid/hardware/camera2/legacy/RequestQueue;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestQueue;->getNext()Landroid/util/Pair;

    move-result-object v15

    .line 808
    if-nez v15, :cond_7

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setIdle()Z

    .line 810
    monitor-exit v5

    goto/16 :goto_2

    .line 812
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 796
    .end local v24    # "success":Z
    :catch_1
    move-exception v10

    .line 797
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Interrupted while waiting for requests to complete: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_2

    .line 812
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v24    # "success":Z
    :cond_7
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 815
    .end local v24    # "success":Z
    :cond_8
    if-eqz v15, :cond_9

    .line 817
    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    :cond_9
    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/legacy/BurstHolder;

    iget-object v5, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/hardware/camera2/legacy/BurstHolder;->produceRequestHolders(J)Ljava/util/List;

    move-result-object v19

    .line 823
    .local v19, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 824
    .local v4, "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v18

    .line 826
    .local v18, "request":Landroid/hardware/camera2/CaptureRequest;
    const/16 v16, 0x0

    .line 829
    .local v16, "paramsChanged":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    iget-object v3, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v0, v18

    if-eq v3, v0, :cond_d

    .line 833
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    move-result-object v17

    .line 835
    .local v17, "previewSize":Landroid/util/Size;
    new-instance v13, Landroid/hardware/camera2/legacy/LegacyRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v13, v3, v0, v1, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)V

    .line 840
    .local v13, "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v13}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertRequestMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget-object v5, v13, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 845
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v5, v13, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 856
    const/16 v16, 0x1

    .line 857
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    iget-object v5, v13, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    # setter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1302(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 860
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # setter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v3, v13}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1202(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 864
    .end local v13    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v17    # "previewSize":Landroid/util/Size;
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    const-wide/16 v6, 0xfa0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->queueRequest(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/legacy/LegacyRequest;JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 867
    .restart local v24    # "success":Z
    if-nez v24, :cond_f

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Timed out while queueing capture request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    .line 914
    .end local v24    # "success":Z
    :catch_2
    move-exception v10

    .line 915
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Received device exception during capture call: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    .line 986
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v16    # "paramsChanged":Z
    .end local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_e
    :goto_4
    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 987
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    sub-long v26, v6, v22

    .line 988
    .restart local v26    # "totalTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capture request took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mRequestCounter:Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$2100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->countAndLog()V

    goto/16 :goto_2

    .line 846
    .end local v26    # "totalTime":J
    .restart local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .restart local v13    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .restart local v16    # "paramsChanged":Z
    .restart local v17    # "previewSize":Landroid/util/Size;
    .restart local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    :catch_3
    move-exception v10

    .line 849
    .local v10, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Exception while setting camera parameters: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->failRequest()V

    .line 851
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z

    goto/16 :goto_3

    .line 879
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "legacyRequest":Landroid/hardware/camera2/legacy/LegacyRequest;
    .end local v17    # "previewSize":Landroid/util/Size;
    .restart local v24    # "success":Z
    :cond_f
    :try_start_6
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasPreviewTargets()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # invokes: Landroid/hardware/camera2/legacy/RequestThreadManager;->doPreviewCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1600(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 882
    :cond_10
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 883
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForPreviewsEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 886
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Timed out while waiting for preview requests to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextPreview()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 919
    .end local v24    # "success":Z
    :catch_4
    move-exception v10

    .line 920
    .local v10, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Interrupted during capture: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_4

    .line 890
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v24    # "success":Z
    :cond_11
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mReceivedJpeg:Landroid/os/ConditionVariable;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # invokes: Landroid/hardware/camera2/legacy/RequestThreadManager;->doJpegCapturePrepare(Landroid/hardware/camera2/legacy/RequestHolder;)V
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1700(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 900
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->processFaceDetectMode(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V

    .line 906
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->hasJpegTargets()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # invokes: Landroid/hardware/camera2/legacy/RequestThreadManager;->doJpegCapture(Landroid/hardware/camera2/legacy/RequestHolder;)V
    invoke-static {v3, v4}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$2000(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/RequestHolder;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mReceivedJpeg:Landroid/os/ConditionVariable;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    invoke-virtual {v3, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v3

    if-nez v3, :cond_13

    .line 909
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Hit timeout for jpeg callback!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failNextJpeg()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 931
    :cond_13
    if-eqz v16, :cond_15

    .line 932
    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->DEBUG:Z
    invoke-static {}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Params changed -- getting new Parameters from HAL."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_14
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    # setter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1302(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/LegacyRequest;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 948
    :cond_15
    new-instance v8, Landroid/util/MutableLong;

    const-wide/16 v6, 0x0

    invoke-direct {v8, v6, v7}, Landroid/util/MutableLong;-><init>(J)V

    .line 950
    .local v8, "timestampMutable":Landroid/util/MutableLong;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v5, 0xfa0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForRequestCompleted(Landroid/hardware/camera2/legacy/RequestHolder;JLjava/util/concurrent/TimeUnit;Landroid/util/MutableLong;)Z

    move-result v24

    .line 954
    if-nez v24, :cond_16

    .line 955
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Timed out while waiting for request to complete."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_7

    .line 965
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v14

    .line 966
    .local v14, "mParams_temp":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getAEStatus()I

    move-result v2

    .line 968
    .local v2, "ae_state":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mMapper:Landroid/hardware/camera2/legacy/LegacyResultMapper;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    iget-wide v6, v8, Landroid/util/MutableLong;->value:J

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;JI)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v20

    .line 977
    .local v20, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mFocusStateMapper:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1900(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mFaceDetectMapper:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1800(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mLastRequest:Landroid/hardware/camera2/legacy/LegacyRequest;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/LegacyRequest;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->mapResultFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/LegacyRequest;)V

    .line 981
    invoke-virtual {v4}, Landroid/hardware/camera2/legacy/RequestHolder;->requestFailed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;I)Z

    goto/16 :goto_3

    .line 924
    .end local v2    # "ae_state":I
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v14    # "mParams_temp":Landroid/hardware/Camera$Parameters;
    .end local v20    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v24    # "success":Z
    :catch_5
    move-exception v10

    .line 925
    .local v10, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Received device exception during capture call: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_4

    .line 937
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v24    # "success":Z
    :catch_6
    move-exception v10

    .line 938
    .restart local v10    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Received device exception: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_4

    .line 958
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v8    # "timestampMutable":Landroid/util/MutableLong;
    :catch_7
    move-exception v10

    .line 959
    .local v10, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Interrupted waiting for request completion: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto/16 :goto_4

    .line 993
    .end local v4    # "holder":Landroid/hardware/camera2/legacy/RequestHolder;
    .end local v8    # "timestampMutable":Landroid/util/MutableLong;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "handler":Landroid/os/Handler;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "nextBurst":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    .end local v16    # "paramsChanged":Z
    .end local v18    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v19    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/legacy/RequestHolder;>;"
    .end local v24    # "success":Z
    :pswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->mCleanup:Z

    .line 995
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    const-wide/16 v6, 0xfa0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Landroid/hardware/camera2/legacy/CaptureCollector;->waitForEmpty(JLjava/util/concurrent/TimeUnit;)Z

    move-result v24

    .line 997
    .restart local v24    # "success":Z
    if-nez v24, :cond_17

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Timed out while queueing cleanup request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCaptureCollector:Landroid/hardware/camera2/legacy/CaptureCollector;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/CaptureCollector;->failAll()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8

    .line 1006
    .end local v24    # "success":Z
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$700(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/GLThreadManager;->quit()V

    .line 1008
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    const/4 v5, 0x0

    # setter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mGLThreadManager:Landroid/hardware/camera2/legacy/GLThreadManager;
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$702(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/camera2/legacy/GLThreadManager;)Landroid/hardware/camera2/legacy/GLThreadManager;

    .line 1010
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1500(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    const/4 v5, 0x0

    # setter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$1502(Landroid/hardware/camera2/legacy/RequestThreadManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 1014
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mCallbackOutputs:Ljava/util/List;
    invoke-static {v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$2200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    move-result-object v5

    # invokes: Landroid/hardware/camera2/legacy/RequestThreadManager;->resetJpegSurfaceFormats(Ljava/util/Collection;)V
    invoke-static {v3, v5}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$2300(Landroid/hardware/camera2/legacy/RequestThreadManager;Ljava/util/Collection;)V

    goto/16 :goto_2

    .line 1001
    :catch_8
    move-exception v10

    .line 1002
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$000(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Interrupted while waiting for requests to complete: "

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/RequestThreadManager$5;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    # getter for: Landroid/hardware/camera2/legacy/RequestThreadManager;->mDeviceState:Landroid/hardware/camera2/legacy/CameraDeviceState;
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CameraDeviceState;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setError(I)V

    goto :goto_6

    .line 752
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
