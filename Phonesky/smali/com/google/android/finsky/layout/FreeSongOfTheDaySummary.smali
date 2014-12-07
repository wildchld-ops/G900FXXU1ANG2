.class public Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;
.super Landroid/widget/RelativeLayout;
.source "FreeSongOfTheDaySummary.java"


# instance fields
.field private mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mCreator:Landroid/widget/TextView;

.field private mPlaybackLegend:Landroid/widget/TextView;

.field private mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/previews/PreviewController;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/layout/SongIndex;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Z)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setHighlighted(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mPlaybackLegend:Landroid/widget/TextView;

    return-object v0
.end method

.method private setHighlighted(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingLeft()I

    move-result v2

    aput v2, v0, v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingTop()I

    move-result v2

    aput v2, v0, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingRight()I

    move-result v2

    aput v2, v0, v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingBottom()I

    move-result v2

    aput v2, v0, v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f07003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setBackgroundColor(I)V

    :goto_0
    aget v2, v0, v3

    aget v3, v0, v4

    aget v4, v0, v5

    aget v5, v0, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setPadding(IIII)V

    return-void

    :cond_0
    const v2, 0x7f020075

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0800f1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SongIndex;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mPlaybackLegend:Landroid/widget/TextView;

    return-void
.end method

.method public showSummary(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 16
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mTitle:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v7}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v9

    const v10, 0x7f09017e

    new-instance v1, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v8, v9, v10, v1}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mPlaybackLegend:Landroid/widget/TextView;

    const v2, 0x7f090340

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v15

    new-instance v1, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v15}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Lcom/google/android/finsky/protos/DocDetails$SongDetails;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static/range {p2 .. p2}, Lcom/google/android/finsky/previews/PreviewController;->setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/4 v13, 0x0

    move-object/from16 v6, p2

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v6 .. v13}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
