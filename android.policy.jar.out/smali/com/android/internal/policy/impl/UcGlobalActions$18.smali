.class Lcom/android/internal/policy/impl/UcGlobalActions$18;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UcPowerViewContainer$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->initViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1787
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isShuttingDown:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1600(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    :goto_0
    return-void

    .line 1788
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4500(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4400(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcPowerViewContainer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1789
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isShown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4602(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1790
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerView:Lcom/android/internal/policy/impl/UcPowerViewContainer;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4402(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcPowerViewContainer;)Lcom/android/internal/policy/impl/UcPowerViewContainer;

    .line 1791
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$18;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isInAnimation:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4202(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    goto :goto_0
.end method
