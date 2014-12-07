.class public Lcom/google/android/finsky/layout/BadgeRow;
.super Landroid/widget/LinearLayout;
.source "BadgeRow.java"


# instance fields
.field private mExtraBadgeContainer:Landroid/widget/LinearLayout;

.field private mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/BadgeRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addExtraBadge(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/Doc$Image;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p2    # Lcom/google/android/finsky/protos/Doc$Image;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000f

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getBadgeSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getCompoundPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getCompoundPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeRow;->getPaddingTop()I

    move-result v2

    add-int v0, v2, v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeRow;->mExtraBadgeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0
.end method

.method public setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/DocAnnotations$Badge;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 11
    .param p1    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p2    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p5    # Lcom/google/android/finsky/protos/DocAnnotations$Badge;
    .param p6    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeRow;->getBadgeSize()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeRow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    move-object/from16 v0, p5

    invoke-static {v1, v0, v2, v9}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, p4, v10, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    :cond_0
    move-object/from16 v0, p5

    iget-object v5, v0, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeRow;->mPrimaryBadge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->browseUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v8, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v1, 0x71

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-direct {v8, v1, v2, v3, v0}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    new-instance v1, Lcom/google/android/finsky/layout/BadgeRow$1;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p5

    move v6, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/finsky/layout/BadgeRow$1;-><init>(Lcom/google/android/finsky/layout/BadgeRow;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/DocAnnotations$Badge;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/BadgeRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
