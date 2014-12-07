.class public Lcom/google/android/finsky/layout/play/PlayListView;
.super Landroid/widget/ListView;
.source "PlayListView.java"


# static fields
.field public static final ENABLE_ANIMATION:Z

.field private static final ENABLE_LAYER_CALLS:Z


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mAnimateChanges:Z

.field private mAnimateObserver:Landroid/database/DataSetObserver;

.field private mCapturedPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mTempLocation:[I

.field private mTempRect:Landroid/graphics/RectF;

.field private mTranslationInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_LAYER_CALLS:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateChanges:Z

    sget-boolean v0, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/finsky/layout/play/PlayListView$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/play/PlayListView$1;-><init>(Lcom/google/android/finsky/layout/play/PlayListView;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateObserver:Landroid/database/DataSetObserver;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mTranslationInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mCapturedPositions:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempRect:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PlayListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayListView;->captureCardPositions()V

    return-void
.end method

.method private animateIfNeeded()V
    .locals 1

    sget-boolean v0, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateChanges:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mCapturedPositions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Lcom/google/android/finsky/layout/play/PlayListView;->traverse(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mCapturedPositions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method private capture(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayListView;->traverse(Landroid/view/View;Z)V

    return-void
.end method

.method private captureCardPositions()V
    .locals 1

    sget-boolean v0, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mCapturedPositions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {p0}, Lcom/google/android/finsky/utils/PlayUtils;->isVisibleOnScreen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0}, Lcom/google/android/finsky/layout/play/PlayListView;->capture(Landroid/view/View;)V

    goto :goto_0
.end method

.method private disableClipChildren(Landroid/view/View;)V
    .locals 3

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    if-eq p1, p0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/play/PlayListView;->disableClipChildren(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private traverse(Landroid/view/View;Z)V
    .locals 18

    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/google/android/finsky/layout/play/Identifiable;

    if-eqz v11, :cond_5

    move-object/from16 v6, p1

    check-cast v6, Lcom/google/android/finsky/layout/play/Identifiable;

    invoke-interface {v6}, Lcom/google/android/finsky/layout/play/Identifiable;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mCapturedPositions:Ljava/util/Map;

    new-instance v12, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v11, 0x3f800000

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationX(F)V

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mCapturedPositions:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float v8, v11, v12

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    sub-float v9, v11, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x40a00000

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x40a00000

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x96

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mTranslationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-boolean v11, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_LAYER_CALLS:Z

    if-eqz v11, :cond_3

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/layout/play/PlayListView;->disableClipChildren(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/high16 v12, 0x3f800000

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x96

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/play/PlayListView;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x96

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    sget-boolean v11, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_LAYER_CALLS:Z

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    instance-of v11, v0, Landroid/view/ViewGroup;

    if-eqz v11, :cond_0

    move-object/from16 v10, p1

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v4, v11, :cond_0

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/google/android/finsky/layout/play/PlayListView;->traverse(Landroid/view/View;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/play/PlayListView;->animateIfNeeded()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/play/PlayListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateChanges:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-boolean v1, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateChanges:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method

.method public setAnimateChanges(Z)V
    .locals 2

    sget-boolean v1, Lcom/google/android/finsky/layout/play/PlayListView;->ENABLE_ANIMATION:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateChanges:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateChanges:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayListView;->mAnimateObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method
