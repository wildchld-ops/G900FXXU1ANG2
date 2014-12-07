.class public Lcom/google/android/finsky/layout/SongSnippet;
.super Lcom/google/android/finsky/layout/SeparatorRelativeLayout;
.source "SongSnippet.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field private mAddedDrawable:Landroid/widget/ImageView;

.field private mAddedState:Landroid/widget/TextView;

.field private mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mInitialized:Z

.field private mIsNewPurchase:Z

.field private mIsPlayable:Z

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mShouldShowArtistName:Z

.field private mSongBadge:Landroid/widget/ImageView;

.field private mSongDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

.field private mSongDocument:Lcom/google/android/finsky/api/model/Document;

.field private mSongDuration:Landroid/widget/TextView;

.field private mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

.field private mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mSongTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private mTrackNumber:I

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1f6

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    new-instance v0, Lcom/google/android/finsky/layout/SongSnippet$6;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/SongSnippet$6;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SongSnippet;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/protos/DocDetails$SongDetails;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/previews/PreviewController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/finsky/layout/SongSnippet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/SongSnippet;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->resetUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/layout/SongIndex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/layout/SongSnippet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    return-void
.end method

.method private clearBuyButtonStyle(I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setDrawAsLabel(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setIgnoreCorpusColor(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private resetUI()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    return-void
.end method

.method private setBuyButtonStyle()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setDrawAsLabel(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setIgnoreCorpusColor(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    return-void
.end method

.method private setHighlighted(Z)V
    .locals 9

    const v8, 0x7f07006b

    const v7, 0x106000b

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_0

    const v5, 0x7f07003b

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/SongSnippet;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    const v6, 0x7f07000a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet;->setSelected(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getPaddingBottom()I

    move-result v0

    const v5, 0x7f020075

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/SongSnippet;->setBackgroundResource(I)V

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/google/android/finsky/layout/SongSnippet;->setPadding(IIII)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    const v6, 0x7f070017

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateAddedState()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsNewPurchase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBuyButtonState()V
    .locals 10

    const v9, 0x7f0902c8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v4, v1, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->setBuyButtonStyle()V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    const v5, 0x7f09017e

    new-instance v6, Lcom/google/android/finsky/layout/SongSnippet$4;

    invoke-direct {v6, p0, v3}, Lcom/google/android/finsky/layout/SongSnippet$4;-><init>(Lcom/google/android/finsky/layout/SongSnippet;Landroid/accounts/Account;)V

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->updateAddedState()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, v6}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->setBuyButtonStyle()V

    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/finsky/layout/SongSnippet$5;

    invoke-direct {v6, p0, v0}, Lcom/google/android/finsky/layout/SongSnippet$5;-><init>(Lcom/google/android/finsky/layout/SongSnippet;Landroid/accounts/Account;)V

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v4, v8}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v9}, Lcom/google/android/finsky/layout/SongSnippet;->clearBuyButtonStyle(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, v6}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v9}, Lcom/google/android/finsky/layout/SongSnippet;->clearBuyButtonStyle(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v4, v8}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unwanted children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public isPlayable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsPlayable:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 10

    const/16 v9, 0x8

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->onAttachedToWindow()V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iget-object v3, v5, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    if-nez v3, :cond_0

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/layout/SongSnippet;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget v5, v3, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    if-lez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsPlayable:Z

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    iget v7, p0, Lcom/google/android/finsky/layout/SongSnippet;->mTrackNumber:I

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/layout/SongIndex;->setTrackNumber(I)V

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsPlayable:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    iget v7, v3, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->durationSec:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v7, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iget-object v5, v5, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->badge:Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongBadge:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/protos/DocDetails$SongDetails;

    iget-object v4, v5, Lcom/google/android/finsky/protos/DocDetails$SongDetails;->badge:Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongBadge:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x6

    invoke-static {v5, v4, v7, v0}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v7, Lcom/google/android/finsky/layout/SongSnippet$1;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/layout/SongSnippet$1;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {v5, v1, v7, v6, v0}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongBadge:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_3
    iget-boolean v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mShouldShowArtistName:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v7, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v7, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v8, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {v5, v7, v8}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    :goto_4
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->updateBuyButtonState()V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/SongIndex;->setClickable(Z)V

    iget-boolean v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsPlayable:Z

    if-eqz v5, :cond_7

    new-instance v5, Lcom/google/android/finsky/layout/SongSnippet$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/SongSnippet$2;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/SongSnippet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    sget-object v5, Lcom/google/android/finsky/config/G;->prePurchaseSharingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/google/android/finsky/layout/SongSnippet$3;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/layout/SongSnippet$3;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/SongSnippet;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/SongSnippet;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    iget-object v6, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/previews/PreviewController;->getStatusUpdate(Lcom/google/android/finsky/previews/StatusListener;)V

    goto/16 :goto_0

    :cond_3
    move v5, v6

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongBadge:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v5, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/SongSnippet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/layout/SeparatorRelativeLayout;->onFinishInflate()V

    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SongIndex;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f080184

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongBadge:Landroid/widget/ImageView;

    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    const v0, 0x7f080187

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    return-void
.end method

.method public setSongDetails(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZLcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-boolean p5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mShouldShowArtistName:Z

    iput-object p2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p6, p0, Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput p4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mTrackNumber:I

    iput-boolean p7, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsNewPurchase:Z

    iput-object p8, p0, Lcom/google/android/finsky/layout/SongSnippet;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public setState(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
