.class Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageSetupDataObj"
.end annotation


# instance fields
.field public apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

.field public msg:Landroid/os/Message;

.field public profileId:I

.field public radioTech:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/os/Message;II)V
    .locals 0
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p3, "msg"    # Landroid/os/Message;
    .param p4, "profileId"    # I
    .param p5, "radioTech"    # I

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1571
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;->apnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1572
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;->msg:Landroid/os/Message;

    .line 1573
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;->profileId:I

    .line 1574
    iput p5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$MessageSetupDataObj;->radioTech:I

    .line 1575
    return-void
.end method
