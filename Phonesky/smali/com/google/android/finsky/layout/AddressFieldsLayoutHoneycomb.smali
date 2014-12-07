.class public Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;
.super Lcom/google/android/finsky/layout/AddressFieldsLayout;
.source "AddressFieldsLayoutHoneycomb.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$2;,
        Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;
    }
.end annotation


# static fields
.field private static KEY_PARENT_STATE:Ljava/lang/String;

.field private static KEY_SUPPORT_SHOWING_ONE_FIELD:Ljava/lang/String;


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimator1:Landroid/animation/ValueAnimator;

.field private mAnimator2:Landroid/animation/ValueAnimator;

.field private mExpandCalledWhileContracting:Z

.field private mFirstFieldHint:Ljava/lang/CharSequence;

.field private mNewFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnHeightChangedListener:Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

.field private mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

.field private mSupportShowingOneField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "support_showing_one_field"

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->KEY_SUPPORT_SHOWING_ONE_FIELD:Ljava/lang/String;

    const-string v0, "parent_instance_state"

    sput-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->KEY_PARENT_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/AddressFieldsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    return-void
.end method

.method private addViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getViewHeightAtTransitionStart()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_ONE_FIELD_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private invokeOnHeightChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mOnHeightChangedListener:Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mOnHeightChangedListener:Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;->onHeightOffsetChanged(F)V

    :cond_0
    return-void
.end method

.method private makeOnlyFirstFieldVisible()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->setChildrenViewVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setChildrenViewVisibility(I)V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private switchAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator1:Landroid/animation/ValueAnimator;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator2:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator1:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method


# virtual methods
.method public disableOneFieldMode()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$2;->$SwitchMap$com$google$android$finsky$layout$AddressFieldsLayoutHoneycomb$State:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->setChildrenViewVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->setChildrenViewVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hideUpperRightProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$1;-><init>(Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mNewFields:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mNewFields:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->setFields(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mNewFields:Ljava/util/List;

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mExpandCalledWhileContracting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mExpandCalledWhileContracting:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mExpandCalledWhileContracting:Z

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->switchAnimator()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->showFields()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->setChildrenViewVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_ONE_FIELD_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const/high16 v7, 0x3f800000

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v6, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_ONE_FIELD_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-eq v5, v6, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->setY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v6, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_ONE_FIELD_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setAlpha(F)V

    :goto_1
    sub-float v5, v7, v4

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->getViewHeightAtTransitionStart()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float v2, v5, v6

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->invokeOnHeightChanged(F)V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mProgressBar:Landroid/widget/ProgressBar;

    sub-float v6, v7, v4

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setAlpha(F)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->onFinishInflate()V

    new-array v0, v3, [F

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator1:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v3, [F

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator2:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator1:Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->SHOWING_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput-boolean v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_ONE_FIELD_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->setChildrenViewVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFirstFieldHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->KEY_SUPPORT_SHOWING_ONE_FIELD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->KEY_PARENT_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->KEY_PARENT_STATE:Ljava/lang/String;

    invoke-super {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->KEY_SUPPORT_SHOWING_ONE_FIELD:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/layout/AddressFieldsLayout;->onSizeChanged(IIII)V

    const/high16 v2, 0x3f800000

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->getViewHeightAtTransitionStart()I

    move-result v2

    sub-int/2addr v2, p2

    int-to-float v2, v2

    mul-float v0, v1, v2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->invokeOnHeightChanged(F)V

    return-void
.end method

.method public setFields(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_1

    move v1, v2

    :goto_0
    sget-object v4, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$2;->$SwitchMap$com$google$android$finsky$layout$AddressFieldsLayoutHoneycomb$State:[I

    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v4, "enum %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mFirstFieldHint:Ljava/lang/CharSequence;

    const v2, 0x7f09031c

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->addViews(Ljava/util/List;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->addViews(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->makeOnlyFirstFieldVisible()V

    goto :goto_1

    :pswitch_2
    iput-object p1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mNewFields:Ljava/util/List;

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->addViews(Ljava/util/List;)V

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->setChildrenViewVisibility(I)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setOnHeightOffsetChangedListener(Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mOnHeightChangedListener:Lcom/google/android/finsky/layout/OnHeightOffsetChangedListener;

    return-void
.end method

.method public showFields()V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$2;->$SwitchMap$com$google$android$finsky$layout$AddressFieldsLayoutHoneycomb$State:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mSupportShowingOneField:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->makeOnlyFirstFieldVisible()V

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ONE_FIELD:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->setChildrenViewVisibility(I)V

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_ALL_FIELDS:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mExpandCalledWhileContracting:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public showProgressBar()V
    .locals 3

    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$2;->$SwitchMap$com$google$android$finsky$layout$AddressFieldsLayoutHoneycomb$State:[I

    iget-object v1, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;->TRANSITION_TO_PROGRESS_BAR:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iput-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mState:Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb$State;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method public showUpperRightProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/AddressFieldsLayoutHoneycomb;->mUpperRightProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
