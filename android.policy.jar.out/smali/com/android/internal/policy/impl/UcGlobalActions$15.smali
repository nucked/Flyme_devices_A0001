.class Lcom/android/internal/policy/impl/UcGlobalActions$15;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->initView(Landroid/view/View;)V
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
    .line 1634
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollCallBack(II)V
    .locals 6
    .param p1, "xoffset"    # I
    .param p2, "yoffset"    # I

    .prologue
    .line 1637
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->down:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3200(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1638
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3000(Lcom/android/internal/policy/impl/UcGlobalActions;)F

    move-result v3

    rsub-int v4, p2, 0xa78

    add-int/lit16 v4, v4, -0x2bc

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 1639
    .local v0, "dy":F
    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I
    invoke-static {}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3100()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v2, v0, v3

    .line 1640
    .local v2, "tmp":F
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3300(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/UcPowerAnimation;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/UcPowerAnimation;->setProgress(F)V

    .line 1642
    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I
    invoke-static {}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3100()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 1700
    .end local v2    # "tmp":F
    :goto_0
    return-void

    .line 1646
    .restart local v2    # "tmp":F
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    .line 1647
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 1649
    .end local v0    # "dy":F
    .end local v2    # "tmp":F
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isupScroll:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3400(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1650
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3000(Lcom/android/internal/policy/impl/UcGlobalActions;)F

    move-result v3

    rsub-int v4, p2, 0xa78

    add-int/lit16 v4, v4, -0x2bc

    add-int/lit8 v4, v4, 0x50

    int-to-float v4, v4

    mul-float v0, v3, v4

    .line 1652
    .restart local v0    # "dy":F
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffyHight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3500(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    .line 1653
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->initAllView()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3600(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    goto :goto_0

    .line 1657
    :cond_2
    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I
    invoke-static {}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3100()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v2, v0, v3

    .line 1658
    .restart local v2    # "tmp":F
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3300(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/UcPowerAnimation;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/UcPowerAnimation;->setProgress(F)V

    .line 1660
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    .line 1661
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 1665
    .end local v0    # "dy":F
    .end local v2    # "tmp":F
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->handup:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3700(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1666
    const v3, 0x45278000    # 2680.0f

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F
    invoke-static {v5}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3000(Lcom/android/internal/policy/impl/UcGlobalActions;)F

    move-result v5

    div-float/2addr v4, v5

    sub-float v0, v3, v4

    .line 1668
    .restart local v0    # "dy":F
    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I
    invoke-static {}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3100()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v0, v3

    .line 1669
    .restart local v2    # "tmp":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    .line 1670
    const/4 v2, 0x0

    .line 1672
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3300(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/UcPowerAnimation;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/UcPowerAnimation;->setProgress(F)V

    .line 1674
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mCirleLastY:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3000(Lcom/android/internal/policy/impl/UcGlobalActions;)F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mBgLastY:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3900(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v5

    sub-int v5, p2, v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 1675
    .local v1, "pdy":F
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mCirleLastY:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v3

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I
    invoke-static {}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3100()I

    move-result v4

    if-le v3, v4, :cond_6

    .line 1676
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v3

    int-to-float v1, v3

    .line 1678
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->resetAllView()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4000(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    goto/16 :goto_0

    .line 1682
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setY(F)V

    .line 1683
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    .line 1687
    .end local v0    # "dy":F
    .end local v1    # "pdy":F
    .end local v2    # "tmp":F
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mBitrateTop:F
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3000(Lcom/android/internal/policy/impl/UcGlobalActions;)F

    move-result v3

    rsub-int v4, p2, 0xa78

    add-int/lit16 v4, v4, -0x2bc

    add-int/lit8 v4, v4, 0x50

    int-to-float v4, v4

    mul-float v0, v3, v4

    .line 1688
    .restart local v0    # "dy":F
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffyHight:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3500(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 1689
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->initAllView()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3600(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    goto/16 :goto_0

    .line 1693
    :cond_8
    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mOffsetMid:I
    invoke-static {}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3100()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mImgTop:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2800(Lcom/android/internal/policy/impl/UcGlobalActions;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v2, v0, v3

    .line 1694
    .restart local v2    # "tmp":F
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mLogo:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$3300(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/UcPowerAnimation;

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/UcPowerAnimation;->setProgress(F)V

    .line 1696
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    .line 1697
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$15;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mPowerImg:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0
.end method
