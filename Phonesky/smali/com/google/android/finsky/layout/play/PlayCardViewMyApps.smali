.class public Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;
.super Lcom/google/android/play/layout/PlayCardViewBase;
.source "PlayCardViewMyApps.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private final mArchiveArea:Landroid/graphics/Rect;

.field private mArchiveView:Landroid/view/View;

.field private mBadgeView:Landroid/widget/TextView;

.field private mChecked:Z

.field private final mOldArchiveArea:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mChecked:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mThumbnailAspectRatio:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mOldArchiveArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBadge()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mBadgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCardType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Lcom/google/android/play/layout/PlayCardViewBase;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mChecked:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->onFinishInflate()V

    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mBadgeView:Landroid/widget/TextView;

    const v0, 0x7f0801cb

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Lcom/google/android/play/layout/PlayCardViewBase;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mOldArchiveArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/TouchDelegate;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mOldArchiveArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->measureThumbnailSpanningHeight(I)V

    invoke-super {p0, p1, p2}, Lcom/google/android/play/layout/PlayCardViewBase;->onMeasure(II)V

    return-void
.end method

.method public setArchivable(ZLcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mArchiveView:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$1;-><init>(Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mChecked:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mChecked:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->refreshDrawableState()V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
