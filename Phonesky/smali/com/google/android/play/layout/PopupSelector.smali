.class public Lcom/google/android/play/layout/PopupSelector;
.super Landroid/app/Dialog;
.source "PopupSelector.java"


# instance fields
.field private final mAnchorX:I

.field private final mAnchorY:I

.field private final mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

.field private mMeasureParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;
    .param p3    # Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    sget v1, Lcom/google/android/play/R$style;->PlayPopupSelector:I

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/android/play/layout/PopupSelector;->mAnchorX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/play/layout/PopupSelector;->mAnchorY:I

    iput-object p3, p0, Lcom/google/android/play/layout/PopupSelector;->mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/play/layout/PopupSelector;)Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;
    .locals 1
    .param p0    # Lcom/google/android/play/layout/PopupSelector;

    iget-object v0, p0, Lcom/google/android/play/layout/PopupSelector;->mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v8, p0, Lcom/google/android/play/layout/PopupSelector;->mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    invoke-virtual {v8}, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v8, p0, Lcom/google/android/play/layout/PopupSelector;->mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    invoke-virtual {v8, v2}, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->getItemViewType(I)I

    move-result v5

    if-eq v5, v3, :cond_0

    move v3, v5

    const/4 v4, 0x0

    :cond_0
    iget-object v8, p0, Lcom/google/android/play/layout/PopupSelector;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PopupSelector;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/google/android/play/layout/PopupSelector;->mMeasureParent:Landroid/view/ViewGroup;

    :cond_1
    iget-object v8, p0, Lcom/google/android/play/layout/PopupSelector;->mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    iget-object v9, p0, Lcom/google/android/play/layout/PopupSelector;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x0

    sget v7, Lcom/google/android/play/R$layout;->popup_selector:I

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PopupSelector;->setContentView(I)V

    sget v7, Lcom/google/android/play/R$id;->popup_list:I

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PopupSelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v7, Lcom/google/android/play/layout/PopupSelector$1;

    invoke-direct {v7, p0}, Lcom/google/android/play/layout/PopupSelector$1;-><init>(Lcom/google/android/play/layout/PopupSelector;)V

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v7, p0, Lcom/google/android/play/layout/PopupSelector;->mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/play/layout/PopupSelector;->mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/play/layout/PopupSelector;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v7, Lcom/google/android/play/R$id;->popup_selector:I

    invoke-virtual {p0, v7}, Lcom/google/android/play/layout/PopupSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/play/layout/PopupSelector;->measureContentWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    mul-int/lit8 v8, v5, 0x4

    div-int/lit8 v8, v8, 0x5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v7, 0x40000000

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v8, -0x2

    invoke-virtual {v3, v7, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v3, v9, v9, v7, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v7, p0, Lcom/google/android/play/layout/PopupSelector;->mAnchorX:I

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, p0, Lcom/google/android/play/layout/PopupSelector;->mAnchorY:I

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v7, 0x33

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v8, 0x20100

    or-int/2addr v7, v8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x13

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/play/layout/PopupSelector;->cancel()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PopupSelector;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
