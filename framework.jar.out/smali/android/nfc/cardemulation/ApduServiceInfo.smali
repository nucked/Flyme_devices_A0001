.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;,
        Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final NXP_NFC_EXT_META_DATA:Ljava/lang/String; = "com.nxp.nfc.extensions"

.field static final POWER_STATE_BATTERY_OFF:I = 0x4

.field static final POWER_STATE_SWITCH_OFF:I = 0x2

.field static final POWER_STATE_SWITCH_ON:I = 0x1

.field static final SECURE_ELEMENT_ESE:Ljava/lang/String; = "eSE"

.field public static final SECURE_ELEMENT_ROUTE_ESE:I = 0x1

.field public static final SECURE_ELEMENT_ROUTE_UICC:I = 0x2

.field static final SECURE_ELEMENT_UICC:Ljava/lang/String; = "UICC"

.field static final TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field final mBannerResourceId:I

.field final mDescription:Ljava/lang/String;

.field final mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

.field final mNfcid2CategoryToGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field

.field final mNfcid2Groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation
.end field

.field final mNfcid2s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mOnHost:Z

.field final mRequiresDeviceUnlock:Z

.field final mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 660
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 32
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v26, v0

    .line 184
    .local v26, "si":Landroid/content/pm/ServiceInfo;
    const/16 v19, 0x0

    .line 185
    .local v19, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x0

    .line 187
    .local v11, "extParser":Landroid/content/res/XmlResourceParser;
    if-eqz p3, :cond_1

    .line 188
    :try_start_0
    const-string v29, "android.nfc.cardemulation.host_apdu_service"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 189
    if-nez v19, :cond_3

    .line 190
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v30, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :catch_0
    move-exception v9

    .line 373
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unable to create context for: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v29

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v29

    .line 194
    :cond_1
    :try_start_2
    const-string v29, "android.nfc.cardemulation.off_host_apdu_service"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 195
    if-nez v19, :cond_2

    .line 196
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v30, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 201
    :cond_2
    const-string v29, "com.nxp.nfc.extensions"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 202
    if-nez v11, :cond_3

    .line 203
    const-string v29, "ApduServiceInfo"

    const-string v30, "No com.nxp.nfc.extensions meta-data"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    .line 209
    .local v10, "eventType":I
    :goto_0
    const/16 v29, 0x2

    move/from16 v0, v29

    if-eq v10, v0, :cond_4

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_4

    .line 210
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    goto :goto_0

    .line 213
    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 214
    .local v28, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_5

    const-string v29, "host-apdu-service"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 215
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v30, "Meta-data does not start with <host-apdu-service> tag"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 217
    :cond_5
    if-nez p3, :cond_6

    const-string/jumbo v29, "offhost-apdu-service"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 218
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v30, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 222
    :cond_6
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v23

    .line 223
    .local v23, "res":Landroid/content/res/Resources;
    invoke-static/range {v19 .. v19}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 224
    .local v5, "attrs":Landroid/util/AttributeSet;
    if-eqz p3, :cond_b

    .line 225
    sget-object v29, Lcom/android/internal/R$styleable;->HostApduService:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 227
    .local v24, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 228
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 230
    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 233
    const/16 v29, 0x2

    const/16 v30, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 235
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    :goto_1
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 249
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 250
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 251
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 252
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 253
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 255
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 256
    .local v8, "depth":I
    const/4 v6, 0x0

    .line 257
    .local v6, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    const/4 v7, 0x0

    .line 261
    .local v7, "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_7
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v8, :cond_1d

    :cond_8
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_1d

    .line 262
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 263
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_d

    const-string v29, "aid-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    if-nez v6, :cond_d

    .line 265
    sget-object v29, Lcom/android/internal/R$styleable;->AidGroup:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 268
    .local v13, "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 270
    .local v14, "groupCategory":Ljava/lang/String;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 272
    .local v15, "groupDescription":Ljava/lang/String;
    const-string/jumbo v29, "payment"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_9

    .line 273
    const-string/jumbo v14, "other"

    .line 275
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    check-cast v6, Landroid/nfc/cardemulation/AidGroup;

    .line 276
    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v6, :cond_c

    .line 277
    const-string/jumbo v29, "other"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 278
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Not allowing multiple aid-groups in the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " category"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v6, 0x0

    .line 285
    :cond_a
    :goto_3
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 237
    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .end local v8    # "depth":I
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    sget-object v29, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 239
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 240
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 242
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 243
    const/16 v29, 0x1

    const/16 v30, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 245
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 283
    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    .restart local v8    # "depth":I
    .restart local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .restart local v14    # "groupCategory":Ljava/lang/String;
    .restart local v15    # "groupDescription":Ljava/lang/String;
    :cond_c
    new-instance v6, Landroid/nfc/cardemulation/AidGroup;

    .end local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {v6, v14, v15}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v6    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_3

    .line 286
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    :cond_d
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_10

    const-string v29, "aid-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    if-eqz v6, :cond_10

    .line 288
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_f

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_e
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 293
    :cond_f
    const-string v29, "ApduServiceInfo"

    const-string v30, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 296
    :cond_10
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_12

    const-string v29, "aid-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    if-eqz v6, :cond_12

    .line 298
    sget-object v29, Lcom/android/internal/R$styleable;->AidFilter:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 300
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "aid":Ljava/lang/String;
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_11

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_11

    .line 303
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :goto_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 305
    :cond_11
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 308
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_12
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_14

    const-string v29, "aid-prefix-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    if-eqz v6, :cond_14

    .line 310
    sget-object v29, Lcom/android/internal/R$styleable;->AidFilter:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 312
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 315
    .restart local v4    # "aid":Ljava/lang/String;
    const-string v29, "*"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_13

    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    .line 317
    iget-object v0, v6, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 319
    :cond_13
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 322
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_14
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_18

    const-string/jumbo v29, "nfcid2-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    if-nez v7, :cond_18

    .line 324
    sget-object v29, Lcom/android/internal/R$styleable;->AidGroup:[I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 327
    .restart local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 329
    .restart local v15    # "groupDescription":Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 331
    .restart local v14    # "groupCategory":Ljava/lang/String;
    const-string/jumbo v29, "payment"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_15

    .line 332
    const-string/jumbo v14, "other"

    .line 334
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .line 335
    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    if-eqz v7, :cond_17

    .line 336
    const-string/jumbo v29, "other"

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_16

    .line 337
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Not allowing multiple nfcid2-groups in the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " category"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v7, 0x0

    .line 344
    :cond_16
    :goto_7
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_2

    .line 342
    :cond_17
    new-instance v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .end local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    invoke-direct {v7, v14, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7    # "currentNfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    goto :goto_7

    .line 345
    .end local v13    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v14    # "groupCategory":Ljava/lang/String;
    .end local v15    # "groupDescription":Ljava/lang/String;
    :cond_18
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_1b

    const-string/jumbo v29, "nfcid2-group"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    if-eqz v7, :cond_1b

    .line 347
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_1a

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_19

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    move-object/from16 v29, v0

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_19
    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 353
    :cond_1a
    const-string v29, "ApduServiceInfo"

    const-string v30, "Not adding <nfcid2-group> with empty or invalid NFCID2s"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 356
    :cond_1b
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_7

    const-string/jumbo v29, "nfcid2-filter"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    if-eqz v7, :cond_7

    .line 358
    const/16 v29, 0x0

    const-string/jumbo v30, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, "nfcid2":Ljava/lang/String;
    const/16 v29, 0x0

    const-string/jumbo v30, "syscode"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 360
    .local v27, "syscode":Ljava/lang/String;
    const/16 v29, 0x0

    const-string/jumbo v30, "optparam"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    .line 362
    .local v18, "optparam":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfo;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1c

    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_1c

    .line 363
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->syscode:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, v7, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->optparam:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 368
    :cond_1c
    const-string v29, "ApduServiceInfo"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 375
    .end local v16    # "nfcid2":Ljava/lang/String;
    .end local v18    # "optparam":Ljava/lang/String;
    .end local v27    # "syscode":Ljava/lang/String;
    :cond_1d
    if-eqz v19, :cond_1e

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 378
    :cond_1e
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 380
    if-eqz v11, :cond_2e

    .line 383
    :try_start_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10

    .line 384
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 385
    const/16 v25, 0x0

    .line 386
    .local v25, "seName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 387
    .local v21, "powerState":I
    const/4 v12, 0x0

    .line 388
    .local v12, "felicaId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 390
    .local v17, "optParam":Ljava/lang/String;
    :goto_9
    const/16 v29, 0x2

    move/from16 v0, v29

    if-eq v10, v0, :cond_1f

    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_1f

    .line 391
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    goto :goto_9

    .line 393
    :cond_1f
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 394
    const-string v29, "extensions"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_21

    .line 395
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Meta-data does not start with <extensions> tag "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 446
    .end local v12    # "felicaId":Ljava/lang/String;
    .end local v17    # "optParam":Ljava/lang/String;
    .end local v21    # "powerState":I
    .end local v25    # "seName":Ljava/lang/String;
    :catchall_1
    move-exception v29

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    throw v29

    .line 408
    .restart local v12    # "felicaId":Ljava/lang/String;
    .restart local v17    # "optParam":Ljava/lang/String;
    .restart local v21    # "powerState":I
    .restart local v25    # "seName":Ljava/lang/String;
    :cond_20
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_27

    :try_start_4
    const-string/jumbo v29, "se-power-state"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_27

    .line 410
    const/16 v29, 0x0

    const-string/jumbo v30, "name"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 411
    .local v20, "powerName":Ljava/lang/String;
    const/16 v29, 0x0

    const-string/jumbo v30, "value"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "true"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_24

    const/16 v22, 0x1

    .line 412
    .local v22, "powerValue":Z
    :goto_a
    const-string v29, "SwitchOn"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_25

    if-eqz v22, :cond_25

    .line 413
    or-int/lit8 v21, v21, 0x1

    .line 399
    .end local v20    # "powerName":Ljava/lang/String;
    .end local v22    # "powerValue":Z
    :cond_21
    :goto_b
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v10, v0, :cond_22

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v8, :cond_2a

    :cond_22
    const/16 v29, 0x1

    move/from16 v0, v29

    if-eq v10, v0, :cond_2a

    .line 400
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 402
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_20

    const-string/jumbo v29, "se-id"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 404
    const/16 v29, 0x0

    const-string/jumbo v30, "name"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 405
    if-eqz v25, :cond_23

    const-string v29, "eSE"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_21

    const-string v29, "UICC"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_21

    .line 406
    :cond_23
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unsupported se name: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 411
    .restart local v20    # "powerName":Ljava/lang/String;
    :cond_24
    const/16 v22, 0x0

    goto/16 :goto_a

    .line 414
    .restart local v22    # "powerValue":Z
    :cond_25
    const-string v29, "SwitchOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_26

    if-eqz v22, :cond_26

    .line 415
    or-int/lit8 v21, v21, 0x2

    goto/16 :goto_b

    .line 416
    :cond_26
    const-string v29, "BatteryOff"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_21

    if-eqz v22, :cond_21

    .line 417
    or-int/lit8 v21, v21, 0x4

    goto/16 :goto_b

    .line 419
    .end local v20    # "powerName":Ljava/lang/String;
    .end local v22    # "powerValue":Z
    :cond_27
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v10, v0, :cond_21

    const-string v29, "felica-id"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    .line 421
    const/16 v29, 0x0

    const-string/jumbo v30, "name"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 422
    if-eqz v12, :cond_28

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_29

    .line 423
    :cond_28
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unsupported felicaId: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 426
    :cond_29
    const/16 v29, 0x0

    const-string/jumbo v30, "opt-params"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v11, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 427
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_21

    .line 428
    new-instance v29, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unsupported opt-params: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 432
    :cond_2a
    if-eqz v25, :cond_2c

    .line 433
    new-instance v30, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const-string v29, "eSE"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2b

    const/16 v29, 0x1

    :goto_c
    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 434
    const-string v29, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_d
    if-eqz v12, :cond_2d

    .line 440
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 441
    const-string v29, "ApduServiceInfo"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 446
    :goto_e
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 452
    .end local v12    # "felicaId":Ljava/lang/String;
    .end local v17    # "optParam":Ljava/lang/String;
    .end local v21    # "powerState":I
    .end local v25    # "seName":Ljava/lang/String;
    :goto_f
    return-void

    .line 433
    .restart local v12    # "felicaId":Ljava/lang/String;
    .restart local v17    # "optParam":Ljava/lang/String;
    .restart local v21    # "powerState":I
    .restart local v25    # "seName":Ljava/lang/String;
    :cond_2b
    const/16 v29, 0x2

    goto :goto_c

    .line 436
    :cond_2c
    :try_start_5
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v30, -0x1

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    goto :goto_d

    .line 443
    :cond_2d
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_e

    .line 449
    .end local v12    # "felicaId":Ljava/lang/String;
    .end local v17    # "optParam":Ljava/lang/String;
    .end local v21    # "powerState":I
    .end local v25    # "seName":Ljava/lang/String;
    :cond_2e
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    const/16 v30, -0x1

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 450
    new-instance v29, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v29 .. v31}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    goto :goto_f
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILandroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "seExtension"    # Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p10, "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 155
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 156
    iput-object p10, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    .line 158
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 159
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 160
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    .line 161
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 162
    iput-boolean p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 163
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 164
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 167
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 170
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;

    .line 171
    .local v2, "nfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2CategoryToGroup:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->category:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->nfcid2s:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 175
    .end local v2    # "nfcid2Group":Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;
    :cond_2
    iput p7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 176
    iput p8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 177
    iput-object p9, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 178
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mFelicaExtension:Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    .line 179
    return-void
.end method

.method static isValidNfcid2(Ljava/lang/String;)Z
    .locals 5
    .param p0, "nfcid2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 583
    if-nez p0, :cond_0

    .line 596
    :goto_0
    return v1

    .line 586
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 587
    .local v0, "nfcid2Length":I
    if-eqz v0, :cond_1

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 588
    :cond_1
    const-string v2, "ApduServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not correctly formatted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :cond_2
    const/16 v2, 0x10

    if-eq v0, v2, :cond_3

    .line 593
    const-string v2, "ApduServiceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFCID2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not 8 bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Description: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    const-string v4, "    Static AID groups:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 702
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    iget-object v4, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v4, "    Dynamic AID groups:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 709
    .restart local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    iget-object v4, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 711
    .restart local v0    # "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "            AID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 714
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 617
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 621
    :goto_0
    return v1

    .line 618
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 619
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 621
    .local v0, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAidGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 501
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 504
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 507
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_2
    return-object v1
.end method

.method public getAids()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 470
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 472
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    return-object v0
.end method

.method public getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    .line 519
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 520
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 521
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    .line 524
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 455
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method public getNfcid2Groups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNfcid2s()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOnHost()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v0, 0x0

    .line 570
    :try_start_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 571
    .local v2, "res":Landroid/content/res/Resources;
    iget v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 578
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ApduServiceInfo"

    const-string v4, "Could not load banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 577
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ApduServiceInfo"

    const-string v4, "Could not load banner."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 564
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 560
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresUnlock()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .locals 2
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .prologue
    .line 556
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ApduService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v3, ", Static AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 606
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 608
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    const-string v3, ", Dynamic AID Groups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 610
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 612
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 637
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 638
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 644
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 648
    :cond_1
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSeExtension:Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 653
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 655
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mNfcid2Groups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 658
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 639
    goto :goto_0

    :cond_4
    move v1, v2

    .line 648
    goto :goto_1
.end method
