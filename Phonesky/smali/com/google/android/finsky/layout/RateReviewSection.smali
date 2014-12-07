.class public Lcom/google/android/finsky/layout/RateReviewSection;
.super Lcom/google/android/finsky/layout/SeparatorRelativeLayout;
.source "RateReviewSection.java"


# instance fields
.field private mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mMyRatingBar:Landroid/widget/RatingBar;

.field private mMyRatingBarStub:Landroid/view/ViewStub;

.field private mMyRatingText:Landroid/widget/TextView;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mRatingLayout:Landroid/widget/LinearLayout;

.field private mReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

.field private mReviewFromServer:Lcom/google/android/finsky/protos/DocumentV2$Review;

.field private mReviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/RateReviewSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/RateReviewSection;

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/protos/DocumentV2$Review;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/RateReviewSection;

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/protos/DocumentV2$Review;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/RateReviewSection;
    .param p1    # Landroid/support/v4/app/Fragment;
    .param p2    # Lcom/google/android/finsky/protos/DocumentV2$Review;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/RateReviewSection;->launchReviewsDialog(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/protos/DocumentV2$Review;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/RateReviewSection;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/RateReviewSection;

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private launchReviewsDialog(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/protos/DocumentV2$Review;I)V
    .locals 2
    .param p1    # Landroid/support/v4/app/Fragment;
    .param p2    # Lcom/google/android/finsky/protos/DocumentV2$Review;
    .param p3    # I

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/RateReviewSection$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/layout/RateReviewSection$3;-><init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/protos/DocumentV2$Review;I)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/RateReviewHelper;->checkAndConfirmGPlus(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V

    return-void
.end method

.method private updateVisibility(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;ZZ)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/library/Libraries;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Z
    .param p4    # Z

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/finsky/utils/DocUtils;->canRate(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/library/Libraries;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;ZZLcom/google/android/finsky/protos/DocumentV2$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/utils/ClientMutationCache;
    .param p2    # Lcom/google/android/finsky/library/Libraries;
    .param p3    # Landroid/support/v4/app/Fragment;
    .param p4    # Lcom/google/android/finsky/api/model/Document;
    .param p5    # Z
    .param p6    # Z
    .param p7    # Lcom/google/android/finsky/protos/DocumentV2$Review;
    .param p8    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p9    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v5, 0x0

    invoke-direct {p0, p2, p4, p5, p6}, Lcom/google/android/finsky/layout/RateReviewSection;->updateVisibility(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iput-object p4, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p7, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReviewFromServer:Lcom/google/android/finsky/protos/DocumentV2$Review;

    iput-object p8, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p9, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBarStub:Landroid/view/ViewStub;

    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRatingBarWideLayoutId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBarStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f0801f3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0b008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v3, v5, v1, v5, v0}, Landroid/widget/RatingBar;->setPadding(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->refresh()V

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    new-instance v4, Lcom/google/android/finsky/layout/RateReviewSection$1;

    invoke-direct {v4, p0, p3}, Lcom/google/android/finsky/layout/RateReviewSection$1;-><init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    new-instance v4, Lcom/google/android/finsky/layout/RateReviewSection$2;

    invoke-direct {v4, p0, p3}, Lcom/google/android/finsky/layout/RateReviewSection$2;-><init>(Lcom/google/android/finsky/layout/RateReviewSection;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public initialize(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->onFinishInflate()V

    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBarStub:Landroid/view/ViewStub;

    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ReviewItemLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    const v0, 0x7f0801f0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mRatingLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public refresh()V
    .locals 11

    const/16 v10, 0x8

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/RateReviewSection;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mClientMutationCache:Lcom/google/android/finsky/utils/ClientMutationCache;

    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReviewFromServer:Lcom/google/android/finsky/protos/DocumentV2$Review;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/utils/ClientMutationCache;->getCachedReview(Ljava/lang/String;Lcom/google/android/finsky/protos/DocumentV2$Review;)Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    iget v7, v0, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    iget-object v1, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReview:Lcom/google/android/finsky/protos/DocumentV2$Review;

    iget-object v3, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    invoke-virtual {v0, v9}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mRatingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    if-lez v7, :cond_1

    const v0, 0x7f090252

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f0e0005

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v8, v0, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingBar:Landroid/widget/RatingBar;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mMyRatingText:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/google/android/finsky/utils/PlayUtils;->getItalicSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mReviewItemLayout:Lcom/google/android/finsky/layout/ReviewItemLayout;

    invoke-virtual {v0, v10}, Lcom/google/android/finsky/layout/ReviewItemLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mRatingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/RateReviewSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    invoke-static {v8, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRateString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f09025e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
