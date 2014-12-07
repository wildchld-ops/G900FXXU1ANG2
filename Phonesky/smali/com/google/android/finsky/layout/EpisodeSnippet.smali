.class public Lcom/google/android/finsky/layout/EpisodeSnippet;
.super Lcom/google/android/finsky/layout/SeparatorRelativeLayout;
.source "EpisodeSnippet.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;
    }
.end annotation


# instance fields
.field private mAddedDrawable:Landroid/view/View;

.field private mAddedState:Landroid/widget/TextView;

.field private final mBaseRowHeight:I

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mCollapsedContent:Landroid/view/View;

.field private mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

.field private mEpisode:Lcom/google/android/finsky/api/model/Document;

.field private mEpisodeNumber:Landroid/widget/TextView;

.field private mEpisodeTitle:Landroid/widget/TextView;

.field private mExpandedContent:Landroid/view/View;

.field private mExpandedDescription:Landroid/widget/TextView;

.field private mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

.field private mExpandedViewStub:Landroid/view/ViewStub;

.field private final mHandler:Landroid/os/Handler;

.field private mIsNewPurchase:Z

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mScrollerRunnable:Ljava/lang/Runnable;

.field private mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1f7

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBaseRowHeight:I

    new-instance v0, Lcom/google/android/finsky/layout/EpisodeSnippet$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$1;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/EpisodeSnippet;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBaseRowHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/EpisodeSnippet;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->toggleExpandedVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/EpisodeSnippet;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->logCurrentState()V

    return-void
.end method

.method private static clearBuyButtonStyle(Lcom/google/android/play/layout/PlayActionButton;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayActionButton;->setDrawAsLabel(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayActionButton;->setIgnoreCorpusColor(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayActionButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private inflateViewStubIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedDescription:Landroid/widget/TextView;

    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HeroGraphicView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

    :cond_0
    return-void
.end method

.method private logCurrentState()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10f

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void

    :cond_0
    const/16 v0, 0x110

    goto :goto_0
.end method

.method private static setBuyButtonStyle(Lcom/google/android/play/layout/PlayActionButton;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayActionButton;->setDrawAsLabel(Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayActionButton;->setIgnoreCorpusColor(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    return-void
.end method

.method private setExpandedContentVisibility(I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->inflateViewStubIfNecessary()V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedEpisodeScreencap:Lcom/google/android/finsky/layout/HeroGraphicView;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    new-array v6, v1, [I

    const/16 v7, 0xd

    aput v7, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;[I)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09015e

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;->releaseDate:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    new-instance v4, Lcom/google/android/finsky/layout/EpisodeSnippet$3;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$3;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    const/16 v4, 0x8

    if-ne p1, v4, :cond_4

    :goto_0
    invoke-interface {v3, p0, v1}, Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;->onCollapsedStateChanged(Lcom/google/android/finsky/layout/EpisodeSnippet;Z)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private toggleExpandedVisibility()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setExpandedContentVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateBuyButtonState(Landroid/content/res/Resources;Lcom/google/android/play/layout/PlayActionButton;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 23

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v15

    move-object/from16 v0, p5

    invoke-static {v0, v15, v7}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v20

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/utils/DocUtils;->getNumberOfValidOffers(Ljava/util/List;)I

    move-result v17

    if-eqz v20, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setBuyButtonStyle(Lcom/google/android/play/layout/PlayActionButton;)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_1

    const v11, 0x7f090133

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    :goto_0
    const/4 v4, 0x4

    new-instance v5, Lcom/google/android/finsky/layout/EpisodeSnippet$4;

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    move-object/from16 v2, v20

    move-object/from16 v3, p5

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/finsky/layout/EpisodeSnippet$4;-><init>(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11, v5}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :goto_1
    if-eqz p2, :cond_0

    if-eqz p6, :cond_e

    const/16 v21, 0x0

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const v11, 0x7f09014d

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-lez v17, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setBuyButtonStyle(Lcom/google/android/play/layout/PlayActionButton;)V

    const/4 v10, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x13

    if-ne v4, v5, :cond_6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_5

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/protos/Common$Offer;

    move-object/from16 v0, v18

    iget v9, v0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    sget-object v4, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->RENTAL:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    invoke-virtual {v4, v9}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->matches(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v13, 0x1

    :cond_3
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->PURCHASE:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    invoke-virtual {v4, v9}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->matches(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    const v4, 0x7f090170

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_6
    :goto_5
    if-nez v10, :cond_7

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    :cond_7
    :goto_6
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_b

    move-object/from16 v0, v16

    iget v9, v0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    :goto_7
    const/16 v22, 0x4

    new-instance v4, Lcom/google/android/finsky/layout/EpisodeSnippet$5;

    move-object/from16 v5, p8

    move-object/from16 v6, p7

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/android/finsky/layout/EpisodeSnippet$5;-><init>(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;I)V

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10, v4}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v12, :cond_9

    const v4, 0x7f0902ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_9
    if-eqz v13, :cond_6

    const v4, 0x7f0902cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    if-eqz p4, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/utils/DocUtils;->getNumberOfValidOffers(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/EpisodeSnippet;->clearBuyButtonStyle(Lcom/google/android/play/layout/PlayActionButton;)V

    const/4 v4, 0x4

    const v5, 0x7f0902c9

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_d
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_e
    const/16 v21, 0x8

    goto/16 :goto_2
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unwanted children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collapseWithoutNotifyingListeners()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public expand()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setExpandedContentVisibility(I)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 10

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;

    move-result-object v9

    if-nez v9, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    iget v1, v9, Lcom/google/android/finsky/protos/DocDetails$TvEpisodeDetails;->episodeIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedState:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedDrawable:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    iget-boolean v6, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mIsNewPurchase:Z

    iget-object v7, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/layout/EpisodeSnippet;->updateBuyButtonState(Landroid/content/res/Resources;Lcom/google/android/play/layout/PlayActionButton;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedContent:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/EpisodeSnippet$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/EpisodeSnippet$2;-><init>(Lcom/google/android/finsky/layout/EpisodeSnippet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->onFinishInflate()V

    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedContent:Landroid/view/View;

    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mExpandedViewStub:Landroid/view/ViewStub;

    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeNumber:Landroid/widget/TextView;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisodeTitle:Landroid/widget/TextView;

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedState:Landroid/widget/TextView;

    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EpisodeSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mAddedDrawable:Landroid/view/View;

    return-void
.end method

.method public setEpisodeDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mSeasonDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mEpisode:Lcom/google/android/finsky/api/model/Document;

    iput-object p4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-boolean p5, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mIsNewPurchase:Z

    iput-object p6, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mCollapsedStateChangedListener:Lcom/google/android/finsky/layout/EpisodeSnippet$OnCollapsedStateChanged;

    iput-object p7, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method
