.class Lcom/android/internal/policy/impl/UcGlobalActions$14;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->onShowPowerLogo(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    iput-object p2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x1

    .line 1593
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1595
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2802(Lcom/android/internal/policy/impl/UcGlobalActions;I)I

    .line 1598
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I
    invoke-static {}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3100()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x44f78000    # 1980.0f

    div-float/2addr v1, v2

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3002(Lcom/android/internal/policy/impl/UcGlobalActions;F)F

    .line 1599
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation2:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2602(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1600
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation1:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2500(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAniation2:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2600(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2702(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1604
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1589
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1585
    return-void
.end method
