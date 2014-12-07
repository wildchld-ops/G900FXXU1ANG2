.class public Lcom/google/android/finsky/activities/DetailsFragment;
.super Lcom/google/android/finsky/activities/DetailsDataBasedFragment;
.source "DetailsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/installer/InstallerListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;
    }
.end annotation


# instance fields
.field private final mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private mAcquisitionOverride:Z

.field private final mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

.field private mContinueUrl:Ljava/lang/String;

.field private final mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mDefaultAlbumDescriptionLines:I

.field private final mDefaultDescriptionLines:I

.field private final mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

.field private mDetailsPanel:Landroid/view/ViewGroup;

.field private mExternalReferrer:Ljava/lang/String;

.field private mFetchSocialDetailsDocument:Z

.field private mHideSocialDetails:Z

.field private mLastUsedSectionOrderId:I

.field private final mMaxCreatorMoreByItemsPerRow:I

.field private final mMaxCreatorMoreByRows:I

.field private final mMaxRelatedItemRows:I

.field private final mMaxRelatedItemsPerRow:I

.field private final mMaxRelatedMusicItemRows:I

.field private final mMaxRelatedMusicItemsPerRow:I

.field private final mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private final mPostPurchaseViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

.field private final mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

.field private mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

.field private mSocialDetailsErrorListener:Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

.field private mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private final mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

.field private final mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

.field private mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

.field private mUseDynamicButtonsContainer:Z

.field private mUseTwoColumnLayout:Z

.field private mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

.field private final mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;-><init>()V

    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SongListViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPostPurchaseViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    new-instance v1, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItemsPerRow:I

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByRows:I

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemRows:I

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMusicItemsPerRow:I

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMusicItemRows:I

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseTwoColumnLayout:Z

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultAlbumDescriptionLines:I

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/finsky/activities/DetailsFragment;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/DetailsFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mHideSocialDetails:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/finsky/activities/DetailsFragment;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/DetailsFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mFetchSocialDetailsDocument:Z

    return p1
.end method

.method private getRepresentativeBackendId()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    return v0
.end method

.method public static newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/DetailsFragment;
    .locals 2
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Z

    new-instance v0, Lcom/google/android/finsky/activities/DetailsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/DetailsFragment;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/finsky/activities/DetailsFragment;->setDfeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/DetailsFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/activities/DetailsFragment;->setInitialDocument(Lcom/google/android/finsky/api/model/Document;)V

    const-string v1, "finsky.DetailsFragment.externalReferrerUrl"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "finsky.DetailsFragment.acquisitionOverride"

    invoke-virtual {v0, v1, p5}, Lcom/google/android/finsky/activities/DetailsFragment;->setArgument(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private requestSocialDetailsDocument(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDetailsErrorListener:Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    new-instance v0, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/activities/DetailsFragment$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDetailsErrorListener:Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDetailsErrorListener:Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const v3, 0x7f0800c9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ObservableScrollView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x7f0800ca

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/finsky/layout/DetailsContentLayout;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/android/finsky/layout/DetailsContentLayout;

    new-instance v3, Lcom/google/android/finsky/activities/DetailsFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/activities/DetailsFragment$1;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/layout/DetailsContentLayout;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->setOnScrollListener(Lcom/google/android/finsky/layout/ObservableScrollView$ScrollListener;)V

    goto :goto_0
.end method

.method private updateDetailsSections(Landroid/os/Bundle;)V
    .locals 92
    .param p1    # Landroid/os/Bundle;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    if-eqz p1, :cond_1f

    const-string v3, "finsky.DetailsFragment.wasDocOwnedWhenPageWasLoaded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "finsky.DetailsFragment.wasDocOwnedWhenPageWasLoaded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDetailsData()Lcom/google/android/finsky/api/model/DfeDetails;

    move-result-object v65

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800ca

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v64

    check-cast v64, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v7, v1}, Lcom/google/android/finsky/activities/DetailsFragment;->inflateSectionsIfNecessary(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v73

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->hasDetailsDataLoaded()Z

    move-result v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v87, v0

    move-object/from16 v27, v65

    move-object/from16 v26, v7

    move/from16 v15, v51

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mFetchSocialDetailsDocument:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v15

    :cond_3
    const v3, 0x7f0800c3

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/SubscriptionsSection;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    const v8, 0x7f040131

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/SubscriptionsSection;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;ILandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_4
    const v3, 0x7f0800c1

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v89

    check-cast v89, Lcom/google/android/finsky/layout/DetailsSummaryByline;

    if-eqz v89, :cond_5

    move-object/from16 v0, v89

    invoke-virtual {v0, v7}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setDocument(Lcom/google/android/finsky/api/model/Document;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseTwoColumnLayout:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v89

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setBackgroundColor(I)V

    :cond_5
    const v3, 0x7f0800b8

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/BadgeSection;

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v11, v7

    move-object/from16 v13, p1

    move-object/from16 v14, p0

    invoke-virtual/range {v8 .. v14}, Lcom/google/android/finsky/layout/BadgeSection;->configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_6
    const v3, 0x7f0800b6

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Lcom/google/android/finsky/layout/DetailsBadgeContainer;

    if-eqz v60, :cond_7

    if-eqz v51, :cond_7

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->hasBadgeContainer()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBadgeContainer()Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    move-result-object v6

    move-object/from16 v0, v60

    invoke-virtual {v0, v3, v4, v7, v6}, Lcom/google/android/finsky/layout/DetailsBadgeContainer;->configure(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V

    :cond_7
    const v3, 0x7f0800d5

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/layout/DetailsPlusOne;

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mHideSocialDetails:Z

    move/from16 v16, v0

    move-object/from16 v10, v87

    move-object/from16 v14, v26

    move-object/from16 v17, p1

    move-object/from16 v18, p0

    invoke-virtual/range {v9 .. v18}, Lcom/google/android/finsky/layout/DetailsPlusOne;->bind(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/api/model/Document;ZZLandroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_8
    const v3, 0x7f0801ef

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/layout/RateReviewSection;->initialize(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v11

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mHideSocialDetails:Z

    move/from16 v16, v0

    if-eqz v15, :cond_20

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/finsky/api/model/DfeDetails;->getUserReview()Lcom/google/android/finsky/protos/DocumentV2$Review;

    move-result-object v17

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v18, v0

    move-object/from16 v13, p0

    move-object/from16 v14, v26

    move-object/from16 v19, p0

    invoke-virtual/range {v10 .. v19}, Lcom/google/android/finsky/layout/RateReviewSection;->configure(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/library/Libraries;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;ZZLcom/google/android/finsky/protos/DocumentV2$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_9
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v68

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_21

    const/16 v74, 0x1

    :goto_3
    const v3, 0x7f0800c4

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_a

    if-eqz v51, :cond_22

    if-nez v74, :cond_22

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getMoreByHeader()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByItemsPerRow:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxCreatorMoreByRows:I

    move/from16 v24, v0

    move-object/from16 v18, v7

    move-object/from16 v25, p0

    invoke-virtual/range {v16 .. v25}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_a
    :goto_4
    const v3, 0x7f08009c

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v63

    if-eqz v63, :cond_b

    if-eqz v51, :cond_23

    const/4 v3, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v3, v0, v7, v1, v2}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultAlbumDescriptionLines:I

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->setDefaultMaxLines(I)V

    :cond_b
    :goto_5
    const v3, 0x7f0800c5

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v61

    if-eqz v61, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    move-object/from16 v0, v61

    move/from16 v1, v51

    invoke-virtual {v3, v0, v7, v1}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V

    :cond_c
    const v3, 0x7f0800c6

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v82

    check-cast v82, Lcom/google/android/finsky/layout/ListingView;

    if-eqz v82, :cond_d

    const/16 v3, 0x8

    move-object/from16 v0, v82

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    if-eqz v51, :cond_d

    const/4 v3, 0x6

    move/from16 v0, v68

    if-ne v0, v3, :cond_d

    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v3

    if-eqz v3, :cond_24

    const/4 v3, 0x3

    move-object/from16 v0, v82

    invoke-virtual {v0, v7, v3}, Lcom/google/android/finsky/layout/ListingView;->bindRentalTerms(Lcom/google/android/finsky/api/model/Document;I)V

    :cond_d
    :goto_6
    const v3, 0x7f0800a2

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v81

    check-cast v81, Lcom/google/android/finsky/layout/ListingView;

    if-eqz v81, :cond_e

    const/16 v3, 0x8

    move-object/from16 v0, v81

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    if-eqz v51, :cond_e

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->hasProductDetails()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    move-object/from16 v0, v81

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, v81

    invoke-virtual {v0, v7, v3}, Lcom/google/android/finsky/layout/ListingView;->bindProductDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    :cond_e
    const v3, 0x7f0800e9

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_f

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getWhatsNew()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    move-object/from16 v18, v0

    const v21, 0x7f090186

    const/16 v23, 0x0

    move-object/from16 v20, v7

    move-object/from16 v24, p1

    move-object/from16 v25, p0

    invoke-virtual/range {v18 .. v25}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_f
    const v3, 0x7f0800a1

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_10

    new-instance v23, Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    move-object/from16 v29, v0

    move-object/from16 v25, p0

    invoke-direct/range {v23 .. v29}, Lcom/google/android/finsky/activities/ReviewDialogListener;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/RateReviewSection;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    move-object/from16 v13, v87

    move-object/from16 v14, v26

    move-object/from16 v16, p0

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    if-eqz v15, :cond_25

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    const v3, 0x7f080097

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v78

    check-cast v78, Lcom/google/android/finsky/layout/ListingView;

    if-eqz v78, :cond_11

    move-object/from16 v0, v78

    move-object/from16 v1, p0

    invoke-virtual {v0, v7, v1}, Lcom/google/android/finsky/layout/ListingView;->bindLinks(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_11
    const v3, 0x7f080098

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    if-eqz v29, :cond_13

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->hasCreatorRelatedContent()Z

    move-result v3

    if-nez v3, :cond_12

    if-nez v17, :cond_26

    :cond_12
    const/16 v67, 0x1

    :goto_8
    if-eqz v51, :cond_2a

    if-eqz v67, :cond_2a

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    const/16 v76, 0x1

    :goto_9
    if-eqz v76, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMusicItemsPerRow:I

    move/from16 v35, v0

    :goto_a
    if-eqz v76, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedMusicItemRows:I

    move/from16 v36, v0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    move-object/from16 v28, v0

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v30, v7

    move-object/from16 v37, p0

    invoke-virtual/range {v28 .. v37}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_13
    :goto_c
    const v3, 0x7f0800ea

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    if-eqz v38, :cond_14

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getCrossSellSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-result-object v62

    if-eqz v62, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    move-object/from16 v37, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->browseUrl:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemRows:I

    move/from16 v45, v0

    move-object/from16 v39, v7

    move-object/from16 v46, p0

    invoke-virtual/range {v37 .. v46}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_14
    :goto_d
    const v3, 0x7f0800e5

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    if-eqz v40, :cond_16

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v69

    sget-object v3, Lcom/google/android/finsky/config/G;->forcePostPurchaseCrossSell:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual/range {v69 .. v69}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isPostPurchaseXsellEnabledForAllCorpora()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2c

    invoke-virtual/range {v69 .. v69}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isPostPurchaseXsellAppsEnabled()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_15
    const/16 v77, 0x1

    :goto_e
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getPostPurchaseCrossSellSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getPostPurchaseCrossSellSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-result-object v62

    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2e

    const/16 v90, 0x1

    :goto_10
    if-eqz v90, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/16 v91, 0x1

    :goto_11
    if-eqz v77, :cond_30

    if-eqz v62, :cond_30

    if-eqz v91, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mPostPurchaseViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    move-object/from16 v39, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->header:Ljava/lang/String;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;->listUrl:Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemRows:I

    move/from16 v47, v0

    const/16 v49, 0x0

    move-object/from16 v41, v7

    move-object/from16 v48, p0

    invoke-virtual/range {v39 .. v49}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Z)V

    :cond_16
    :goto_12
    const v3, 0x7f0800eb

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    if-eqz v42, :cond_17

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->hasMoreBy()Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz v74, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    move-object/from16 v41, v0

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getMoreByHeader()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x0

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v46

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemRows:I

    move/from16 v49, v0

    move-object/from16 v43, v7

    move-object/from16 v50, p0

    invoke-virtual/range {v41 .. v50}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_17
    :goto_13
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_32

    const/16 v75, 0x1

    :goto_14
    const v3, 0x7f0800e6

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v83

    check-cast v83, Lcom/google/android/finsky/layout/ScreenshotGallery;

    if-eqz v83, :cond_18

    if-nez v75, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, v83

    move/from16 v1, v51

    invoke-virtual {v0, v7, v3, v4, v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    :cond_18
    :goto_15
    const v3, 0x7f0800e7

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v80

    check-cast v80, Lcom/google/android/finsky/layout/MovieTrailerView;

    if-eqz v80, :cond_19

    if-eqz v75, :cond_19

    if-eqz v51, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    invoke-virtual {v0, v7, v3, v1}, Lcom/google/android/finsky/layout/MovieTrailerView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_19
    const v3, 0x7f0800a3

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v70

    check-cast v70, Lcom/google/android/finsky/layout/ListingView;

    if-eqz v70, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, v70

    move/from16 v1, v51

    move-object/from16 v2, p0

    invoke-virtual {v0, v7, v3, v1, v2}, Lcom/google/android/finsky/layout/ListingView;->bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1a
    const v3, 0x7f08009e

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Lcom/google/android/finsky/layout/SongList;

    if-eqz v44, :cond_1b

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->restoreInstanceState(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    move-object/from16 v43, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v45

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getCoreContentListUrl()Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x1

    const v50, 0x7fffffff

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v53, v0

    move-object/from16 v54, p0

    invoke-virtual/range {v43 .. v54}, Lcom/google/android/finsky/activities/SongListViewBinder;->bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v66

    const-string v3, "tid"

    move-object/from16 v0, v66

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    if-eqz v88, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0800c9

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v85

    check-cast v85, Landroid/widget/ScrollView;

    move-object/from16 v0, v44

    move-object/from16 v1, v88

    move-object/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/SongList;->setHighlightedSong(Ljava/lang/String;Landroid/widget/ScrollView;)V

    :cond_1b
    :goto_16
    const v3, 0x7f08009d

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v86

    check-cast v86, Lcom/google/android/finsky/layout/GooglePlusShareSection;

    if-eqz v86, :cond_1c

    if-eqz v51, :cond_35

    move-object/from16 v0, v86

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1c
    :goto_17
    const v3, 0x7f0800ec

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v53

    if-eqz v53, :cond_1d

    if-eqz v51, :cond_36

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_36

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->hasAboutTheAuthor:Z

    if-eqz v3, :cond_36

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->aboutTheAuthor:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    move-object/from16 v52, v0

    const v55, 0x7f0902f8

    const/16 v57, 0x0

    move-object/from16 v54, v7

    move-object/from16 v58, p1

    move-object/from16 v59, p0

    invoke-virtual/range {v52 .. v59}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1d
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Lcom/google/android/finsky/layout/WarningMessageSection;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mUseDynamicButtonsContainer:Z

    if-eqz v3, :cond_37

    const/16 v47, 0x0

    :goto_19
    check-cast v47, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v48

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v3}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v50

    move-object/from16 v46, v7

    invoke-virtual/range {v45 .. v50}, Lcom/google/android/finsky/layout/WarningMessageSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/widget/ImageView;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v72

    check-cast v72, Landroid/widget/TextView;

    invoke-virtual/range {v65 .. v65}, Lcom/google/android/finsky/api/model/DfeDetails;->getFooterHtml()Ljava/lang/String;

    move-result-object v71

    invoke-static/range {v71 .. v71}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    const/4 v3, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static/range {v71 .. v71}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v72

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1a
    const v3, 0x7f0800d3

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v79

    if-eqz v83, :cond_39

    invoke-virtual/range {v83 .. v83}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getVisibility()I

    move-result v3

    if-nez v3, :cond_39

    const/16 v84, 0x1

    :goto_1b
    if-nez v51, :cond_1e

    if-eqz v84, :cond_0

    :cond_1e
    if-eqz v79, :cond_0

    const/16 v3, 0x8

    move-object/from16 v0, v79

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_20
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_21
    const/16 v74, 0x0

    goto/16 :goto_3

    :cond_22
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_23
    const/16 v3, 0x8

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_24
    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v3

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    move-object/from16 v0, v82

    invoke-virtual {v0, v7, v3}, Lcom/google/android/finsky/layout/ListingView;->bindRentalTerms(Lcom/google/android/finsky/api/model/Document;I)V

    goto/16 :goto_6

    :cond_25
    const/16 v3, 0x8

    goto/16 :goto_7

    :cond_26
    const/16 v67, 0x0

    goto/16 :goto_8

    :cond_27
    const/16 v76, 0x0

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemsPerRow:I

    move/from16 v35, v0

    goto/16 :goto_a

    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mMaxRelatedItemRows:I

    move/from16 v36, v0

    goto/16 :goto_b

    :cond_2a
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    :cond_2b
    const/16 v3, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    :cond_2c
    const/16 v77, 0x0

    goto/16 :goto_e

    :cond_2d
    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getCrossSellSection()Lcom/google/android/finsky/protos/DocAnnotations$SectionMetadata;

    move-result-object v62

    goto/16 :goto_f

    :cond_2e
    const/16 v90, 0x0

    goto/16 :goto_10

    :cond_2f
    const/16 v91, 0x0

    goto/16 :goto_11

    :cond_30
    const/16 v3, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    :cond_31
    const/16 v3, 0x8

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_13

    :cond_32
    const/16 v75, 0x0

    goto/16 :goto_14

    :cond_33
    const/16 v3, 0x8

    move-object/from16 v0, v83

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/ScreenshotGallery;->setVisibility(I)V

    goto/16 :goto_15

    :cond_34
    const/16 v3, 0x8

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto/16 :goto_16

    :cond_35
    const/16 v3, 0x8

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/GooglePlusShareSection;->setVisibility(I)V

    goto/16 :goto_17

    :cond_36
    const/16 v3, 0x8

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_18

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    const v4, 0x7f080106

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v47

    goto/16 :goto_19

    :cond_38
    const/16 v3, 0x8

    move-object/from16 v0, v72

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1a

    :cond_39
    const/16 v84, 0x0

    goto/16 :goto_1b
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    const v0, 0x7f040040

    return v0
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected inflateSectionsIfNecessary(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;)V
    .locals 12
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const v9, 0x7f04004c

    invoke-virtual {v6, v9, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v10

    if-ne v10, v8, :cond_7

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v10

    iget-object v0, v10, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v10

    if-eqz v10, :cond_4

    move v4, v8

    :goto_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v10

    sget-object v11, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v10, v11, :cond_5

    move v5, v8

    :goto_2
    if-nez v4, :cond_2

    if-eqz v5, :cond_6

    :cond_2
    move v7, v8

    :goto_3
    if-eqz v7, :cond_8

    const v3, 0x7f04004f

    :goto_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-nez v9, :cond_9

    const v9, 0x7f04004d

    invoke-virtual {v6, v9, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {v6, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_3
    :goto_5
    iput v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    goto :goto_0

    :cond_4
    move v4, v9

    goto :goto_1

    :cond_5
    move v5, v9

    goto :goto_2

    :cond_6
    move v7, v9

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v10}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v7

    goto :goto_3

    :cond_8
    const v3, 0x7f04004e

    goto :goto_4

    :cond_9
    iget v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mLastUsedSectionOrderId:I

    if-eq v3, v9, :cond_3

    const v9, 0x7f0800e8

    invoke-virtual {p2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v10, v1, 0x1

    if-le v9, v10, :cond_a

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p2, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v6, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_5
.end method

.method public isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mFetchSocialDetailsDocument:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->isDataReady()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    new-instance v0, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;-><init>(Lcom/google/android/finsky/activities/DetailsFragment;Lcom/google/android/finsky/activities/DetailsFragment$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDetailsErrorListener:Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDetailsErrorListener:Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAllLibrariesLoaded()V
    .locals 0

    return-void
.end method

.method public onCancelReview()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onCancelReview()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    return-object v0
.end method

.method public onDataChanged()V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getRepresentativeBackendId()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/BinderFactory;->getSummaryViewBinder(Lcom/google/android/finsky/api/model/DfeToc;ILandroid/accounts/Account;)Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContinueUrl:Ljava/lang/String;

    move-object v4, p0

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDataChanged()V

    return-void
.end method

.method public onDeleteReview(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onDeleteReview(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSocialDetailsErrorListener:Lcom/google/android/finsky/activities/DetailsFragment$SocialDetailsErrorListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->recordState()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onDestroyView()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPostPurchaseViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onDestroyView()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->onDestroyView()V

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->canChangeFragmentManagerState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Volley error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onInitViewBinders()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCreatorRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mRelatedViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCrossSellViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPostPurchaseViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mMoreByViewBinder:Lcom/google/android/finsky/activities/DetailsPackViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mCastCreditsViewBinder:Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v2, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/SongListViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/library/Libraries;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v4, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDefaultDescriptionLines:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V

    return-void
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .param p3    # I

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->DOWNLOADING:Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/library/AccountLibrary;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->refresh()V

    :cond_0
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 4
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown request code %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 5
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v1, "Unknown request code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x200a0000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    return-void
.end method

.method public onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mReviewDialogListener:Lcom/google/android/finsky/activities/ReviewDialogListener;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/ReviewDialogListener;->onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    :cond_0
    return-void
.end method

.method protected rebindViews(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v7, 0x7f0800be

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    const v7, 0x7f0800fe

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->rebindActionBar()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v0

    const v7, 0x7f0800ba

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    const v7, 0x7f0800bb

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    const v7, 0x7f08009a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSummaryViewBinder:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/view/View;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDetailsPanel:Landroid/view/ViewGroup;

    aput-object v10, v8, v9

    aput-object v3, v8, v11

    invoke-virtual {v7, v1, v11, v8}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/DetailsFragment;->trackSingleColumnScrollingIfNecessary(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsFragment;->updateDetailsSections(Landroid/os/Bundle;)V

    return-void
.end method

.method protected recordState(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v9, 0x7f0800ca

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    const-string v9, "finsky.DetailsFragment.wasDocOwnedWhenPageWasLoaded"

    iget-object v10, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWasOwnedWhenPageLoaded:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const v9, 0x7f08009c

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDescriptionViewBinder:Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_3
    const v9, 0x7f0800e9

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mWhatsNewViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_4
    const v9, 0x7f0800b8

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/BadgeSection;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/BadgeSection;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_5
    const v9, 0x7f0800d5

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/DetailsPlusOne;

    if-eqz v4, :cond_6

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_6
    const v9, 0x7f0800c3

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/SubscriptionsSection;

    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_7
    const v9, 0x7f08009e

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/SongList;

    if-eqz v5, :cond_8

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mSongListViewBinder:Lcom/google/android/finsky/activities/SongListViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_8
    const v9, 0x7f0800ec

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAboutAuthorBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v9, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->requestData()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "finsky.DetailsFragment.externalReferrerUrl"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mExternalReferrer:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "finsky.DetailsFragment.continueUrl"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mContinueUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "finsky.DetailsFragment.acquisitionOverride"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAcquisitionOverride:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mAcquisitionOverride:Z

    if-eqz v6, :cond_0

    const-string v9, "mAcquisitionOverride true for docId=%s - I hope it came from deep link!"

    new-array v10, v7, [Ljava/lang/Object;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    :goto_0
    aput-object v6, v10, v8

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v9, 0x3

    if-ne v6, v9, :cond_4

    move v5, v7

    :goto_1
    iput-boolean v8, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mFetchSocialDetailsDocument:Z

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mHideSocialDetails:Z

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v6}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/FinskyApp;->getExperiments(Ljava/lang/String;)Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v6

    const-string v9, "cl:details.double_fetch_social_data"

    invoke-virtual {v6, v9}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v6, "Using current account %s to fetch social details for %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v6, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mFetchSocialDetailsDocument:Z

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DetailsFragment;->requestSocialDetailsDocument(Ljava/lang/String;)V

    :cond_1
    :goto_2
    new-instance v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    invoke-direct {v4}, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;-><init>()V

    const/16 v6, 0x1fd

    iput v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->document:Ljava/lang/String;

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasDocument:Z

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mFetchSocialDetailsDocument:Z

    iput-boolean v6, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->operationSuccess:Z

    iput-boolean v7, v4, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasOperationSuccess:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    move v5, v8

    goto :goto_1

    :cond_5
    const-string v6, "Hiding social details for %s"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v6, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/DetailsFragment;->mHideSocialDetails:Z

    goto :goto_2
.end method
