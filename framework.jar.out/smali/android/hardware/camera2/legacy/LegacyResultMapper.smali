.class public Landroid/hardware/camera2/legacy/LegacyResultMapper;
.super Ljava/lang/Object;
.source "LegacyResultMapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyResultMapper"

.field private static final VERBOSE:Z


# instance fields
.field private mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

.field private mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "LegacyResultMapper"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 48
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-void
.end method

.method private static convertLegacyAfMode(Ljava/lang/String;)I
    .locals 7
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 465
    if-nez p0, :cond_0

    .line 466
    const-string v1, "LegacyResultMapper"

    const-string v2, "convertLegacyAfMode - no AF mode, default to OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    :pswitch_0
    return v0

    .line 470
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 486
    const-string v1, "LegacyResultMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertLegacyAfMode - unknown mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :sswitch_0
    const-string v6, "auto"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v0

    goto :goto_1

    :sswitch_1
    const-string v6, "continuous-picture"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    goto :goto_1

    :sswitch_2
    const-string v6, "continuous-video"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_1

    :sswitch_3
    const-string v6, "edof"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "macro"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    goto :goto_1

    :sswitch_5
    const-string v6, "fixed"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_6
    const-string v6, "infinity"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 472
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 474
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 476
    goto :goto_0

    .line 478
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    move v0, v4

    .line 480
    goto :goto_0

    .line 470
    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_2
        0x2dddaf -> :sswitch_0
        0x2f6eb6 -> :sswitch_3
        0x5cee774 -> :sswitch_5
        0x62d9bcc -> :sswitch_4
        0xa526a28 -> :sswitch_6
        0x363d9440 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static convertLegacyAwbMode(Ljava/lang/String;)I
    .locals 7
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 492
    if-nez p0, :cond_0

    .line 516
    :goto_0
    :pswitch_0
    return v0

    .line 497
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 515
    const-string v1, "LegacyResultMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertAwbMode - unrecognized WB mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :sswitch_0
    const-string v6, "auto"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "incandescent"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v0

    goto :goto_1

    :sswitch_2
    const-string v6, "fluorescent"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "warm-fluorescent"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    goto :goto_1

    :sswitch_4
    const-string v6, "daylight"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    goto :goto_1

    :sswitch_5
    const-string v6, "cloudy-daylight"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "twilight"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "shade"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x7

    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 501
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 503
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 505
    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 507
    goto :goto_0

    .line 509
    :pswitch_5
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 511
    :pswitch_6
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 513
    :pswitch_7
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 497
    nop

    :sswitch_data_0
    .sparse-switch
        -0x37fc9231 -> :sswitch_1
        -0x2adfe6e0 -> :sswitch_3
        0x2dddaf -> :sswitch_0
        0x6854e2d -> :sswitch_7
        0x1c4eedc3 -> :sswitch_5
        0x625dee90 -> :sswitch_6
        0x71671468 -> :sswitch_2
        0x73cf92fa -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static convertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 18
    .param p0, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 124
    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 125
    .local v3, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->previewSize:Landroid/util/Size;

    .line 126
    .local v12, "previewSize":Landroid/util/Size;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    .line 128
    .local v6, "params":Landroid/hardware/Camera$Parameters;
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 130
    .local v1, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 132
    .local v4, "activeArraySize":Landroid/graphics/Rect;
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    invoke-static {v4, v15, v12, v6}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertScalerCropRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;Landroid/hardware/Camera$Parameters;)Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;

    move-result-object v5

    .line 141
    .local v5, "zoomData":Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 151
    invoke-static/range {v1 .. v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    .line 156
    invoke-static {v1, v4, v5, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    .line 161
    invoke-static {v1, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V

    .line 167
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 171
    .local v7, "captureIntent":I
    invoke-static {v7}, Landroid/hardware/camera2/legacy/LegacyRequestMapper;->filterSupportedCaptureIntent(I)I

    move-result v7

    .line 173
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 180
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v15, v0}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 182
    .local v8, "controlMode":I
    const/4 v15, 0x2

    if-ne v8, v15, :cond_1

    .line 183
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 193
    :goto_0
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "legacySceneMode":Ljava/lang/String;
    invoke-static {v10}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertSceneModeFromLegacy(Ljava/lang/String;)I

    move-result v11

    .line 195
    .local v11, "mode":I
    const/4 v15, -0x1

    if-eq v11, v15, :cond_2

    .line 196
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 210
    :goto_1
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, "legacyEffectMode":Ljava/lang/String;
    invoke-static {v9}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertEffectModeFromLegacy(Ljava/lang/String;)I

    move-result v11

    .line 212
    const/4 v15, -0x1

    if-eq v11, v15, :cond_3

    .line 213
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 223
    :goto_2
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v14, 0x1

    .line 227
    .local v14, "stabMode":I
    :goto_3
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 242
    const-string v15, "infinity"

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 243
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 248
    :cond_0
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 254
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v16, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PIPELINE_MAX_DEPTH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 260
    invoke-static {v1, v5, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V

    .line 268
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 275
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v16, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 278
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v16, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 281
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v16

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 284
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailQuality()I

    move-result v16

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 288
    .local v13, "s":Landroid/hardware/Camera$Size;
    if-eqz v13, :cond_5

    .line 289
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v13}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertSize(Landroid/hardware/Camera$Size;)Landroid/util/Size;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 298
    :goto_4
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 300
    return-object v1

    .line 185
    .end local v9    # "legacyEffectMode":Ljava/lang/String;
    .end local v10    # "legacySceneMode":Ljava/lang/String;
    .end local v11    # "mode":I
    .end local v13    # "s":Landroid/hardware/Camera$Size;
    .end local v14    # "stabMode":I
    :cond_1
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 200
    .restart local v10    # "legacySceneMode":Ljava/lang/String;
    .restart local v11    # "mode":I
    :cond_2
    const-string v15, "LegacyResultMapper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown scene mode "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " returned by camera HAL, setting to disabled."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 215
    .restart local v9    # "legacyEffectMode":Ljava/lang/String;
    :cond_3
    const-string v15, "LegacyResultMapper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown effect mode "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " returned by camera HAL, setting to off."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v15, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 223
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 291
    .restart local v13    # "s":Landroid/hardware/Camera$Size;
    .restart local v14    # "stabMode":I
    :cond_5
    const-string v15, "LegacyResultMapper"

    const-string v16, "Null thumbnail size received from parameters."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private static getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 7
    .param p0, "activeArray"    # Landroid/graphics/Rect;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p3, "regionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Landroid/hardware/camera2/params/MeteringRectangle;"
        }
    .end annotation

    .prologue
    .line 397
    .local p2, "meteringAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v2, "meteringRectList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    if-eqz p2, :cond_0

    .line 399
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 400
    .local v0, "area":Landroid/hardware/Camera$Area;
    invoke-static {p0, p1, v0}, Landroid/hardware/camera2/legacy/ParameterUtils;->convertCameraAreaToActiveArrayRectangle(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Area;)Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;

    move-result-object v3

    .line 404
    .local v3, "rect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;->toMetering()Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rect":Landroid/hardware/camera2/legacy/ParameterUtils$WeightedRectangle;
    :cond_0
    sget-boolean v4, Landroid/hardware/camera2/legacy/LegacyResultMapper;->VERBOSE:Z

    if-eqz v4, :cond_1

    .line 409
    const-string v4, "LegacyResultMapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Metering rectangles for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/hardware/camera2/utils/ListUtils;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v4
.end method

.method private static mapAe(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "activeArray"    # Landroid/graphics/Rect;
    .param p4, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p5, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 308
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->convertAntiBandingModeOrDefault(Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, "antiBandingMode":I
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 315
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v1

    .line 321
    .local v1, "lock":Z
    :goto_0
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 322
    sget-boolean v5, Landroid/hardware/camera2/legacy/LegacyResultMapper;->VERBOSE:Z

    if-eqz v5, :cond_0

    .line 323
    const-string v5, "LegacyResultMapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mapAe - android.control.aeLock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", supported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 329
    .local v4, "requestLock":Ljava/lang/Boolean;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, v1, :cond_1

    .line 330
    const-string v5, "LegacyResultMapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mapAe - android.control.aeLock was requested to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but resulted in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    invoke-static {p0, p1, p5}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mapAeAndFlashMode(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/Camera$Parameters;)V

    .line 347
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v5

    if-lez v5, :cond_3

    .line 348
    sget-boolean v5, Landroid/hardware/camera2/legacy/LegacyResultMapper;->VERBOSE:Z

    if-eqz v5, :cond_2

    .line 349
    const-string/jumbo v5, "metering-areas"

    invoke-virtual {p5, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "meteringAreas":Ljava/lang/String;
    const-string v5, "LegacyResultMapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mapAe - parameter dump; metering-areas: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v2    # "meteringAreas":Ljava/lang/String;
    :cond_2
    invoke-virtual {p5}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v5

    const-string v6, "AE"

    invoke-static {p3, p4, v5, v6}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 356
    .local v3, "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v5, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 359
    .end local v3    # "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_3
    return-void

    .line 320
    .end local v1    # "lock":Z
    .end local v4    # "requestLock":Ljava/lang/Boolean;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static mapAeAndFlashMode(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 421
    const/4 v1, 0x0

    .line 424
    .local v1, "flashMode":I
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    .line 426
    .local v3, "flashState":Ljava/lang/Integer;
    :goto_0
    const/4 v0, 0x1

    .line 428
    .local v0, "aeMode":I
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "flashModeSetting":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 431
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 451
    const-string v4, "LegacyResultMapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mapAeAndFlashMode - Ignoring unknown flash mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1
    :goto_2
    :pswitch_0
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v4, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 459
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 461
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 462
    return-void

    .line 424
    .end local v0    # "aeMode":I
    .end local v2    # "flashModeSetting":Ljava/lang/String;
    .end local v3    # "flashState":Ljava/lang/Integer;
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 431
    .restart local v0    # "aeMode":I
    .restart local v2    # "flashModeSetting":Ljava/lang/String;
    .restart local v3    # "flashState":Ljava/lang/Integer;
    :sswitch_0
    const-string/jumbo v7, "off"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string v5, "auto"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "on"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "red-eye"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "torch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    .line 435
    :pswitch_1
    const/4 v0, 0x2

    .line 436
    goto :goto_2

    .line 439
    :pswitch_2
    const/4 v1, 0x1

    .line 440
    const/4 v0, 0x3

    .line 441
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 442
    goto :goto_2

    .line 444
    :pswitch_3
    const/4 v0, 0x4

    .line 445
    goto :goto_2

    .line 447
    :pswitch_4
    const/4 v1, 0x2

    .line 448
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 449
    goto :goto_2

    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_0
        0x2dddaf -> :sswitch_1
        0x696d3fc -> :sswitch_4
        0x407706f5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static mapAf(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "activeArray"    # Landroid/graphics/Rect;
    .param p2, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p3, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 364
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertLegacyAfMode(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_1

    .line 368
    sget-boolean v2, Landroid/hardware/camera2/legacy/LegacyResultMapper;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 369
    const-string v2, "focus-areas"

    invoke-virtual {p3, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "focusAreas":Ljava/lang/String;
    const-string v2, "LegacyResultMapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mapAe - parameter dump; focus-areas: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v0    # "focusAreas":Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    const-string v3, "AF"

    invoke-static {p1, p2, v2, v3}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->getMeteringRectangles(Landroid/graphics/Rect;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Ljava/util/List;Ljava/lang/String;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 376
    .local v1, "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 378
    .end local v1    # "meteringRectArray":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_1
    return-void
.end method

.method private static mapAwb(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    move-result v1

    .line 385
    .local v1, "lock":Z
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertLegacyAwbMode(Ljava/lang/String;)I

    move-result v0

    .line 391
    .local v0, "awbMode":I
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 393
    return-void

    .line 383
    .end local v0    # "awbMode":I
    .end local v1    # "lock":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static mapScaler(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "m"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "zoomData"    # Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;
    .param p2, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 528
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v1, p1, Landroid/hardware/camera2/legacy/ParameterUtils$ZoomData;->previewCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 530
    return-void
.end method


# virtual methods
.method public cachedConvertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;JI)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 6
    .param p1, "legacyRequest"    # Landroid/hardware/camera2/legacy/LegacyRequest;
    .param p2, "timestamp"    # J
    .param p4, "ae_state"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 70
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    iget-object v3, v3, Landroid/hardware/camera2/legacy/LegacyRequest;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->same(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 72
    .local v1, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v0, 0x1

    .line 88
    .local v0, "cached":Z
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 95
    if-ne p4, v4, :cond_2

    .line 96
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 104
    :goto_1
    sget-boolean v2, Landroid/hardware/camera2/legacy/LegacyResultMapper;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "LegacyResultMapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cachedConvertResultMetadata - cached? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "LegacyResultMapper"

    const-string v3, "----- beginning of result dump ------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->dumpToLog()V

    .line 110
    const-string v2, "LegacyResultMapper"

    const-string v3, "----- end of result dump ------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    return-object v1

    .line 74
    .end local v0    # "cached":Z
    .end local v1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_1
    invoke-static {p1}, Landroid/hardware/camera2/legacy/LegacyResultMapper;->convertResultMetadata(Landroid/hardware/camera2/legacy/LegacyRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    .line 75
    .restart local v1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v0, 0x0

    .line 79
    .restart local v0    # "cached":Z
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedRequest:Landroid/hardware/camera2/legacy/LegacyRequest;

    .line 80
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iput-object v2, p0, Landroid/hardware/camera2/legacy/LegacyResultMapper;->mCachedResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    goto :goto_0

    .line 97
    :cond_2
    if-ne p4, v5, :cond_3

    .line 98
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 100
    :cond_3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    goto :goto_1
.end method
