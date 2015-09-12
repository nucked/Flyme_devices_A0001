.class final Lcom/android/internal/os/ZygoteInit$3;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 273
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$200()V

    .line 274
    # invokes: Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$300()V

    .line 275
    return-void
.end method
