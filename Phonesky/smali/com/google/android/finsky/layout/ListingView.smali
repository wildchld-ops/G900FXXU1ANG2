.class public Lcom/google/android/finsky/layout/ListingView;
.super Lcom/google/android/finsky/layout/SeparatorLinearLayout;
.source "ListingView.java"


# instance fields
.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mHeaderView:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListingLayout:Landroid/widget/LinearLayout;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mSectionCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ListingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/ListingView;)Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/ListingView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/ListingView;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/ListingView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private addEmailLinkSection(ILjava/lang/String;I)V
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v6, 0x0

    const-string v3, "mailto"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils;->createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.extra.SUBJECT"

    iget-object v4, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040098

    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ListingSection;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3, v6}, Lcom/google/android/finsky/layout/ListingSection;->populate(Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v3, Lcom/google/android/finsky/layout/ListingView$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/finsky/layout/ListingView$2;-><init>(Lcom/google/android/finsky/layout/ListingView;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ListingSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v3, p0, Lcom/google/android/finsky/layout/ListingView;->mSectionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/finsky/layout/ListingView;->mSectionCount:I

    return-void
.end method

.method private addFlagContentSection(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040098

    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ListingSection;

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const v1, 0x7f09027b

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f09027a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/finsky/layout/ListingSection;->populate(Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v3, Lcom/google/android/finsky/layout/ListingView$3;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/layout/ListingView$3;-><init>(Lcom/google/android/finsky/layout/ListingView;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ListingSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    const v1, 0x7f09027d

    goto :goto_0
.end method

.method private addWebLinkSection(ILjava/lang/String;II)V
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040098

    iget-object v4, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ListingSection;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, v5}, Lcom/google/android/finsky/layout/ListingSection;->populate(Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v2, Lcom/google/android/finsky/layout/ListingView$1;

    invoke-direct {v2, p0, v0, p4}, Lcom/google/android/finsky/layout/ListingView$1;-><init>(Lcom/google/android/finsky/layout/ListingView;Landroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ListingSection;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v2, p0, Lcom/google/android/finsky/layout/ListingView;->mSectionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/finsky/layout/ListingView;->mSectionCount:I

    return-void
.end method

.method private setupHeader(Ljava/lang/String;I)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mHeaderView:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    move v1, p2

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Z
    .param p4    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p4, p0, Lcom/google/android/finsky/layout/ListingView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09028c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/ListingView;->addFlagContentSection(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindLinks(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 22
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/layout/ListingView;->mSectionCount:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/ListingView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/ListingView;->mSectionCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_1
    const v19, 0x7f090182

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v5

    iget-object v0, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerWebsite:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    iget-object v11, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerWebsite:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    const v19, 0x7f0901a5

    const v20, 0x7f020087

    const/16 v21, 0x72

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkSection(ILjava/lang/String;II)V

    :cond_1
    iget-object v0, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerEmail:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    iget-object v10, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->developerEmail:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    const v19, 0x7f0901a6

    const v20, 0x7f020085

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/google/android/finsky/layout/ListingView;->addEmailLinkSection(ILjava/lang/String;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    const v19, 0x7f0901a7

    const v20, 0x7f020087

    const/16 v21, 0x74

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkSection(ILjava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_2
    const v19, 0x7f090189

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;->externalLinks:Lcom/google/android/finsky/protos/DocDetails$ArtistExternalLinks;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    iget-object v8, v7, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;->externalLinks:Lcom/google/android/finsky/protos/DocDetails$ArtistExternalLinks;

    iget-object v0, v8, Lcom/google/android/finsky/protos/DocDetails$ArtistExternalLinks;->websiteUrl:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_4

    iget-object v6, v8, Lcom/google/android/finsky/protos/DocDetails$ArtistExternalLinks;->websiteUrl:[Ljava/lang/String;

    array-length v15, v6

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_4

    aget-object v17, v6, v14

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const v19, 0x7f0901a5

    const v20, 0x7f020087

    const/16 v21, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkSection(ILjava/lang/String;II)V

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, v8, Lcom/google/android/finsky/protos/DocDetails$ArtistExternalLinks;->youtubeChannelUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    iget-object v0, v8, Lcom/google/android/finsky/protos/DocDetails$ArtistExternalLinks;->youtubeChannelUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    const v19, 0x7f0901a8

    const v20, 0x7f020088

    const/16 v21, 0x76

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkSection(ILjava/lang/String;II)V

    :cond_5
    iget-object v0, v8, Lcom/google/android/finsky/protos/DocDetails$ArtistExternalLinks;->googlePlusProfileUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    iget-object v13, v8, Lcom/google/android/finsky/protos/DocDetails$ArtistExternalLinks;->googlePlusProfileUrl:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    const v19, 0x7f0901a9

    const v20, 0x7f020086

    const/16 v21, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkSection(ILjava/lang/String;II)V

    goto/16 :goto_0

    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bindProductDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 12
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getProductDetails()Lcom/google/android/finsky/protos/DocDetails$ProductDetails;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v8, v4, Lcom/google/android/finsky/protos/DocDetails$ProductDetails;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    iget-object v8, v4, Lcom/google/android/finsky/protos/DocDetails$ProductDetails;->section:[Lcom/google/android/finsky/protos/DocDetails$ProductDetailsSection;

    array-length v6, v8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_1

    iget-object v8, v4, Lcom/google/android/finsky/protos/DocDetails$ProductDetails;->section:[Lcom/google/android/finsky/protos/DocDetails$ProductDetailsSection;

    aget-object v5, v8, v2

    iget-object v8, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040098

    iget-object v10, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/layout/ListingSection;

    iget-object v8, v5, Lcom/google/android/finsky/protos/DocDetails$ProductDetailsSection;->title:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/ListingSection;->populate(Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v8, v5, Lcom/google/android/finsky/protos/DocDetails$ProductDetailsSection;->description:[Lcom/google/android/finsky/protos/DocDetails$ProductDetailsDescription;

    array-length v1, v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v8, v5, Lcom/google/android/finsky/protos/DocDetails$ProductDetailsSection;->description:[Lcom/google/android/finsky/protos/DocDetails$ProductDetailsDescription;

    aget-object v0, v8, v3

    iget-object v8, v0, Lcom/google/android/finsky/protos/DocDetails$ProductDetailsDescription;->description:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/finsky/protos/DocDetails$ProductDetailsDescription;->image:Lcom/google/android/finsky/protos/Doc$Image;

    invoke-virtual {v7, v8, v9, p2}, Lcom/google/android/finsky/layout/ListingSection;->addDescriptionRow(Ljava/lang/String;Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lcom/google/android/finsky/layout/ListingSection;->hideSeparator()V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bindRentalTerms(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 13
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getMovieRentalTerms()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;

    iget v9, v7, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->offerType:I

    if-ne v9, p2, :cond_0

    iget-object v9, v7, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->rentalHeader:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    iget-object v0, v7, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm;->term:[Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    iget-object v9, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040098

    iget-object v11, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, v11, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/ListingSection;

    iget-object v9, v6, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;->header:Ljava/lang/String;

    iget-object v10, v6, Lcom/google/android/finsky/protos/DocDetails$VideoRentalTerm$Term;->body:Ljava/lang/String;

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-virtual {v4, v9, v10, v11, v12}, Lcom/google/android/finsky/layout/ListingSection;->populate(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/ListingSection;->hideSeparator()V

    iget-object v9, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    return-void

    :cond_3
    const/16 v8, 0x8

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;->onFinishInflate()V

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mHeaderView:Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    return-void
.end method
