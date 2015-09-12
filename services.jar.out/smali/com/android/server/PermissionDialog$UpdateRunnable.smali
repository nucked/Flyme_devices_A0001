.class final Lcom/android/server/PermissionDialog$UpdateRunnable;
.super Ljava/lang/Object;
.source "PermissionDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UpdateRunnable"
.end annotation


# instance fields
.field final button:Landroid/widget/Button;

.field final sum:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/PermissionDialog;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0
    .param p2, "bt"    # Landroid/widget/Button;
    .param p3, "num"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->button:Landroid/widget/Button;

    .line 153
    iput-object p3, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->sum:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->button:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mToastMsg:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$UpdateRunnable;->sum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method
