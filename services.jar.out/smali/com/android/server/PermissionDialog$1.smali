.class Lcom/android/server/PermissionDialog$1;
.super Ljava/util/TimerTask;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PermissionDialog;->updateText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    iput-object p2, p0, Lcom/android/server/PermissionDialog$1;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 170
    # getter for: Lcom/android/server/PermissionDialog;->mCountDown:I
    invoke-static {}, Lcom/android/server/PermissionDialog;->access$100()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    # setter for: Lcom/android/server/PermissionDialog;->mCountDown:I
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$102(I)I

    .line 171
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->uiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$200(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/PermissionDialog$UpdateRunnable;

    iget-object v2, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    iget-object v3, p0, Lcom/android/server/PermissionDialog$1;->val$button:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/PermissionDialog;->mCountDown:I
    invoke-static {}, Lcom/android/server/PermissionDialog;->access$100()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/PermissionDialog$UpdateRunnable;-><init>(Lcom/android/server/PermissionDialog;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method
