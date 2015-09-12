.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 5494
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 5494
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5497
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 5502
    .local v10, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5503
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 5506
    .local v23, "dockState":I
    packed-switch v23, :pswitch_data_0

    .line 5521
    const/16 v18, 0x0

    .line 5525
    .local v18, "config":I
    :goto_0
    const/4 v3, 0x3

    move/from16 v0, v23

    if-eq v0, v3, :cond_1

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 5528
    :cond_0
    const/4 v3, 0x3

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5530
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v23

    # setter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$8902(Landroid/media/AudioService;I)I

    .line 5814
    .end local v18    # "config":I
    .end local v23    # "dockState":I
    :cond_2
    :goto_1
    return-void

    .line 5508
    .restart local v23    # "dockState":I
    :pswitch_0
    const/16 v18, 0x7

    .line 5509
    .restart local v18    # "config":I
    goto :goto_0

    .line 5511
    .end local v18    # "config":I
    :pswitch_1
    const/16 v18, 0x6

    .line 5512
    .restart local v18    # "config":I
    goto :goto_0

    .line 5514
    .end local v18    # "config":I
    :pswitch_2
    const/16 v18, 0x8

    .line 5515
    .restart local v18    # "config":I
    goto :goto_0

    .line 5517
    .end local v18    # "config":I
    :pswitch_3
    const/16 v18, 0x9

    .line 5518
    .restart local v18    # "config":I
    goto :goto_0

    .line 5531
    .end local v18    # "config":I
    .end local v23    # "dockState":I
    :cond_3
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5532
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 5534
    .local v35, "state":I
    const/16 v32, 0x10

    .line 5535
    .local v32, "outDevice":I
    const v27, -0x7ffffff8

    .line 5536
    .local v27, "inDevice":I
    const/4 v11, 0x0

    .line 5538
    .local v11, "address":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    .line 5539
    .local v16, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v16, :cond_2

    .line 5543
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 5544
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    .line 5545
    .local v15, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v15, :cond_4

    .line 5546
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 5557
    :cond_4
    :goto_2
    invoke-static {v11}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5558
    const-string v11, ""

    .line 5561
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, v35

    if-ne v0, v3, :cond_6

    const/16 v19, 0x1

    .line 5562
    .local v19, "connected":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v19

    move/from16 v1, v32

    # invokes: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v11}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v19

    move/from16 v1, v27

    # invokes: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v11}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v36, 0x1

    .line 5564
    .local v36, "success":Z
    :goto_4
    if-eqz v36, :cond_2

    .line 5565
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 5566
    if-eqz v19, :cond_8

    .line 5567
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v16

    # setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 5572
    :goto_5
    monitor-exit v4

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5549
    .end local v19    # "connected":Z
    .end local v36    # "success":Z
    :sswitch_0
    const/16 v32, 0x20

    .line 5550
    goto :goto_2

    .line 5552
    :sswitch_1
    const/16 v32, 0x40

    goto :goto_2

    .line 5561
    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    .line 5562
    .restart local v19    # "connected":Z
    :cond_7
    const/16 v36, 0x0

    goto :goto_4

    .line 5569
    .restart local v36    # "success":Z
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 5570
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 5574
    .end local v11    # "address":Ljava/lang/String;
    .end local v15    # "btClass":Landroid/bluetooth/BluetoothClass;
    .end local v16    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v19    # "connected":Z
    .end local v27    # "inDevice":I
    .end local v32    # "outDevice":I
    .end local v35    # "state":I
    .end local v36    # "success":Z
    :cond_9
    const-string v3, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5575
    const-string v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 5577
    .restart local v35    # "state":I
    const-string v3, "card"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 5578
    .local v12, "alsaCard":I
    const-string v3, "device"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5580
    .local v13, "alsaDevice":I
    const/4 v3, -0x1

    if-ne v12, v3, :cond_a

    const/4 v3, -0x1

    if-ne v13, v3, :cond_a

    const-string v33, ""

    .line 5584
    .local v33, "params":Ljava/lang/String;
    :goto_6
    const/16 v32, 0x2000

    .line 5585
    .restart local v32    # "outDevice":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v32

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 5580
    .end local v32    # "outDevice":I
    .end local v33    # "params":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto :goto_6

    .line 5586
    .end local v12    # "alsaCard":I
    .end local v13    # "alsaDevice":I
    .end local v35    # "state":I
    :cond_b
    const-string v3, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5592
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_audio_automatic_routing_disabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 5594
    .local v28, "isDisabled":I
    if-nez v28, :cond_2

    .line 5598
    const-string v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 5600
    .restart local v35    # "state":I
    const-string v3, "card"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 5601
    .restart local v12    # "alsaCard":I
    const-string v3, "device"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5602
    .restart local v13    # "alsaDevice":I
    const-string v3, "hasPlayback"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 5603
    .local v26, "hasPlayback":Z
    const-string v3, "hasCapture"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 5604
    .local v24, "hasCapture":Z
    const-string v3, "hasMIDI"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 5606
    .local v25, "hasMIDI":Z
    const/4 v3, -0x1

    if-ne v12, v3, :cond_d

    const/4 v3, -0x1

    if-ne v13, v3, :cond_d

    const-string v33, ""

    .line 5610
    .restart local v33    # "params":Ljava/lang/String;
    :goto_7
    if-eqz v26, :cond_c

    .line 5611
    const/16 v32, 0x4000

    .line 5612
    .restart local v32    # "outDevice":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v32

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 5616
    .end local v32    # "outDevice":I
    :cond_c
    if-eqz v24, :cond_2

    .line 5617
    const v27, -0x7ffff000

    .line 5618
    .restart local v27    # "inDevice":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v27

    move/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 5606
    .end local v27    # "inDevice":I
    .end local v33    # "params":Ljava/lang/String;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto :goto_7

    .line 5620
    .end local v12    # "alsaCard":I
    .end local v13    # "alsaDevice":I
    .end local v24    # "hasCapture":Z
    .end local v25    # "hasMIDI":Z
    .end local v26    # "hasPlayback":Z
    .end local v28    # "isDisabled":I
    .end local v35    # "state":I
    :cond_e
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5621
    const/4 v14, 0x0

    .line 5622
    .local v14, "broadcast":Z
    const/16 v34, -0x1

    .line 5623
    .local v34, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 5624
    :try_start_2
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 5626
    .local v17, "btState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_10

    .line 5630
    :cond_f
    const/4 v14, 0x1

    .line 5632
    :cond_10
    packed-switch v17, :pswitch_data_1

    .line 5654
    :cond_11
    :goto_8
    const/4 v14, 0x0

    .line 5657
    :cond_12
    :goto_9
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5658
    if-eqz v14, :cond_2

    .line 5659
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v34

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;I)V

    .line 5662
    new-instance v31, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5663
    .local v31, "newIntent":Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5664
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v31

    # invokes: Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 5634
    .end local v31    # "newIntent":Landroid/content/Intent;
    :pswitch_4
    const/16 v34, 0x1

    .line 5635
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_12

    .line 5638
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    goto :goto_9

    .line 5657
    .end local v17    # "btState":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 5642
    .restart local v17    # "btState":I
    :pswitch_5
    const/16 v34, 0x0

    .line 5643
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I

    .line 5644
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_9

    .line 5647
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_11

    .line 5650
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2702(Landroid/media/AudioService;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_8

    .line 5666
    .end local v14    # "broadcast":Z
    .end local v17    # "btState":I
    .end local v34    # "scoAudioState":I
    :cond_13
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5667
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 5668
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioOrientationEventListener;->onOrientationChanged(I)V

    .line 5669
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioService$AudioOrientationEventListener;->enable()V

    .line 5671
    :cond_14
    const-string v3, "screen_state=on"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5672
    :cond_15
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5673
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 5675
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9200(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioService$AudioOrientationEventListener;->disable()V

    .line 5677
    :cond_16
    const-string v3, "screen_state=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5678
    :cond_17
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5679
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    # invokes: Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5680
    :cond_18
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5682
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5690
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v3}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaFocusControl;->discardAudioFocusOwner()V

    .line 5693
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    # invokes: Landroid/media/AudioService;->readAudioSettings(Z)V
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;Z)V

    .line 5695
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v8}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 5704
    :cond_19
    const-string v3, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 5705
    const-string v3, "switch_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 5706
    .local v37, "switch_state":Ljava/lang/String;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_state_boot ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    const-string v3, "1"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5708
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_state_boot1 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5709
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;I)I

    .line 5710
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5711
    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5712
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5713
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5714
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    goto/16 :goto_1

    .line 5715
    :cond_1a
    const-string v3, "2"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 5716
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_state_boot2 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5717
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;I)I

    .line 5718
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5719
    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5720
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5721
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5722
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    goto/16 :goto_1

    .line 5723
    :cond_1b
    const-string v3, "3"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5724
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_state_boot3 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;I)I

    .line 5726
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5727
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5728
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5729
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5730
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    goto/16 :goto_1

    .line 5733
    .end local v37    # "switch_state":Ljava/lang/String;
    :cond_1c
    const-string v3, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 5734
    const-string v3, "switch_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 5735
    .restart local v37    # "switch_state":Ljava/lang/String;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_state ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    const-string v3, "1"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 5737
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_state1 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;I)I

    .line 5739
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5740
    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5741
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5742
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5743
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5745
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v21

    .line 5746
    .local v21, "deviceMusic":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v21

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v4, v5, v0, v6}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;IIIZ)V

    .line 5747
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v22

    .line 5748
    .local v22, "deviceRing":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v22

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v4, v5, v0, v6}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;IIIZ)V

    goto/16 :goto_1

    .line 5749
    .end local v21    # "deviceMusic":I
    .end local v22    # "deviceRing":I
    :cond_1d
    const-string v3, "2"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 5750
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_state2 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;I)I

    .line 5752
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5753
    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5754
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5755
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5756
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5757
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v29

    .line 5758
    .local v29, "mnew_Music_volume":I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnew_Music_volume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mold_Music_volume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v3}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)I

    move-result v3

    move/from16 v0, v29

    if-eq v3, v0, :cond_1e

    .line 5760
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v20

    .line 5761
    .local v20, "device1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, v20

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v4, v5, v0, v6}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;IIIZ)V

    .line 5763
    .end local v20    # "device1":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v30

    .line 5764
    .local v30, "mnew_Ring_volume":I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnew_Ring_volume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mold_Ring_volume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Ring_volume:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5765
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Ring_volume:I
    invoke-static {v3}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v3

    move/from16 v0, v30

    if-eq v3, v0, :cond_2

    .line 5766
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v20

    .line 5767
    .restart local v20    # "device1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Ring_volume:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, v20

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v4, v5, v0, v6}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;IIIZ)V

    goto/16 :goto_1

    .line 5770
    .end local v20    # "device1":I
    .end local v29    # "mnew_Music_volume":I
    .end local v30    # "mnew_Ring_volume":I
    :cond_1f
    const-string v3, "3"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5771
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch_state3 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5772
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    # setter for: Landroid/media/AudioService;->mThree_Key_Mode:I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;I)I

    .line 5773
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5774
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5775
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5776
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5777
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 5780
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIsVirtual3SKeySupport:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$10000(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5781
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v29

    .line 5782
    .restart local v29    # "mnew_Music_volume":I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnew_Music_volume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mold_Music_volume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5783
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v3}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)I

    move-result v3

    move/from16 v0, v29

    if-eq v3, v0, :cond_20

    .line 5784
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v20

    .line 5785
    .restart local v20    # "device1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Music_volume:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, v20

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v4, v5, v0, v6}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;IIIZ)V

    .line 5787
    .end local v20    # "device1":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v30

    .line 5788
    .restart local v30    # "mnew_Ring_volume":I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnew_Ring_volume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mold_Ring_volume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Ring_volume:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5789
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Ring_volume:I
    invoke-static {v3}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v3

    move/from16 v0, v30

    if-eq v3, v0, :cond_2

    .line 5790
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v20

    .line 5791
    .restart local v20    # "device1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mold_Ring_volume:I
    invoke-static {v5}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, v20

    # invokes: Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V
    invoke-static {v3, v4, v5, v0, v6}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;IIIZ)V

    goto/16 :goto_1

    .line 5802
    .end local v20    # "device1":I
    .end local v29    # "mnew_Music_volume":I
    .end local v30    # "mnew_Ring_volume":I
    .end local v37    # "switch_state":Ljava/lang/String;
    :cond_21
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5803
    const-string v3, "AudioService"

    const-string v4, "ACTION_SHUTDOWN Intent received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5804
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5811
    const-string v3, "AudioService"

    const-string v4, "ACTION_SHUTDOWN  Intent received returned"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5506
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 5546
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 5632
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
