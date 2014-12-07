.class public Lcom/google/android/play/layout/PlayTabContainer;
.super Landroid/widget/HorizontalScrollView;
.source "PlayTabContainer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;
    }
.end annotation


# instance fields
.field private mLastScrollTo:I

.field private mPagePreSelectionListener:Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;

.field private mScrollState:I

.field private mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

.field private final mTitleOffset:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayTabContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/google/android/play/layout/PlayTabContainer;->setupBackground()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayTabContainer;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/play/R$dimen;->play_tab_strip_title_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTitleOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/play/layout/PlayTabContainer;)Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;
    .locals 1
    .param p0    # Lcom/google/android/play/layout/PlayTabContainer;

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer;->mPagePreSelectionListener:Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/play/layout/PlayTabContainer;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0    # Lcom/google/android/play/layout/PlayTabContainer;

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/play/layout/PlayTabContainer;II)V
    .locals 0
    .param p0    # Lcom/google/android/play/layout/PlayTabContainer;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/layout/PlayTabContainer;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/play/layout/PlayTabContainer;)Lcom/google/android/play/layout/PlayTabStrip;
    .locals 1
    .param p0    # Lcom/google/android/play/layout/PlayTabContainer;

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    return-object v0
.end method

.method private scrollToChild(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    iget-object v4, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v4}, Lcom/google/android/play/layout/PlayTabStrip;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v4, p1}, Lcom/google/android/play/layout/PlayTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v3, v1, p2

    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    :cond_2
    iget v4, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTitleOffset:I

    sub-int/2addr v3, v4

    :cond_3
    iget v4, p0, Lcom/google/android/play/layout/PlayTabContainer;->mLastScrollTo:I

    if-eq v3, v4, :cond_0

    iput v3, p0, Lcom/google/android/play/layout/PlayTabContainer;->mLastScrollTo:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/play/layout/PlayTabContainer;->scrollTo(II)V

    goto :goto_0
.end method

.method private setupBackground()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/play/R$drawable;->play_checker_tile:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayTabContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    sget v0, Lcom/google/android/play/R$id;->pager_tab_strip:I

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayTabContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayTabStrip;

    iput-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/google/android/play/layout/PlayTabContainer;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1    # I
    .param p2    # F
    .param p3    # I

    iget-object v3, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v3}, Lcom/google/android/play/layout/PlayTabStrip;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/play/layout/PlayTabStrip;->onPageScrolled(IFI)V

    iget-object v3, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v3, p1}, Lcom/google/android/play/layout/PlayTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayTabContainer;->scrollToChild(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v0, v3

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/google/android/play/layout/PlayTabContainer;->mScrollState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v0, p1}, Lcom/google/android/play/layout/PlayTabStrip;->onPageSelected(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/layout/PlayTabContainer;->scrollToChild(II)V

    :cond_0
    return-void
.end method

.method public setPagePreSelectionListener(Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;)V
    .locals 0
    .param p1    # Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;

    iput-object p1, p0, Lcom/google/android/play/layout/PlayTabContainer;->mPagePreSelectionListener:Lcom/google/android/play/layout/PlayTabContainer$PagePreSelectionListener;

    return-void
.end method

.method public setSelectedIndicatorColor(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v0, p1}, Lcom/google/android/play/layout/PlayTabStrip;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 8
    .param p1    # Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/google/android/play/layout/PlayTabContainer;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/google/android/play/layout/PlayTabContainer;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayTabContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    sget v5, Lcom/google/android/play/R$layout;->play_tab_strip_text:I

    iget-object v6, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    new-instance v5, Lcom/google/android/play/layout/PlayTabContainer$1;

    invoke-direct {v5, p0, v2}, Lcom/google/android/play/layout/PlayTabContainer$1;-><init>(Lcom/google/android/play/layout/PlayTabContainer;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v5, v4}, Lcom/google/android/play/layout/PlayTabStrip;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/google/android/play/layout/PlayTabContainer;->mTabStrip:Lcom/google/android/play/layout/PlayTabStrip;

    invoke-virtual {v5}, Lcom/google/android/play/layout/PlayTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/google/android/play/layout/PlayTabContainer$2;

    invoke-direct {v6, p0}, Lcom/google/android/play/layout/PlayTabContainer$2;-><init>(Lcom/google/android/play/layout/PlayTabContainer;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
