.class final Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
.super Landroid/app/Dialog;
.source "UcGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialog"
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;

    .prologue
    .line 1295
    invoke-static {p1}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1296
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1297
    new-instance v0, Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 1298
    iget-object v0, p2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    .line 1299
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    .line 1300
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 1301
    return-void
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1304
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1305
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1307
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1394
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 1395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1396
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/UcGlobalActions$Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1398
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1399
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1403
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1343
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_4

    .line 1344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1345
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 1346
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 1347
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 1348
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 1349
    .local v11, "eventY":I
    iget v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    .line 1353
    :cond_0
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1357
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_6

    .line 1358
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1359
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_2

    .line 1360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1361
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1363
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1364
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    .end local v0    # "now":J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 1371
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_3

    .line 1372
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1374
    :cond_3
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1375
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1379
    .end local v8    # "action":I
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_5
    :goto_0
    return v2

    .line 1367
    .restart local v8    # "action":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1370
    if-ne v8, v13, :cond_5

    .line 1371
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_7

    .line 1372
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1374
    :cond_7
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1375
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    goto :goto_0

    .line 1370
    :catchall_0
    move-exception v2

    if-ne v8, v13, :cond_9

    .line 1371
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    .line 1372
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->cancel()V

    .line 1374
    :cond_8
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1375
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mIntercepted:Z

    :cond_9
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1388
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1389
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 1390
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    const/4 v0, 0x1

    .line 1411
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    const/4 v0, 0x1

    .line 1419
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1324
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1330
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1331
    return-void

    .line 1326
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1327
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 1338
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1339
    return-void
.end method
