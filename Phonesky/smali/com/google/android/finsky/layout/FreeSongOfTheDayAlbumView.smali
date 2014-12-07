.class public Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;
.super Landroid/widget/LinearLayout;
.source "FreeSongOfTheDayAlbumView.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAlbumCard:Lcom/google/android/play/layout/PlayCardViewBase;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field public mHeader:Landroid/widget/TextView;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private attachToInternalRequest()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->prepareAndPopulateContent()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mAlbumCard:Lcom/google/android/play/layout/PlayCardViewBase;

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->bindLoading()V

    goto :goto_0
.end method

.method private detachListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    :cond_0
    return-void
.end method

.method private prepareAndPopulateContent()V
    .locals 5

    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mAlbumCard:Lcom/google/android/play/layout/PlayCardViewBase;

    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mHeader:Landroid/widget/TextView;

    const v1, 0x7f0902dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iput-object p2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->setupView()V

    return-void
.end method

.method public init(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/DfeApi;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->prepareAndPopulateContent()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->detachListeners()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayCardViewBase;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mAlbumCard:Lcom/google/android/play/layout/PlayCardViewBase;

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mHeader:Landroid/widget/TextView;

    return-void
.end method

.method public setupView()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->detachListeners()V

    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->attachToInternalRequest()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDayAlbumView;->setVisibility(I)V

    goto :goto_0
.end method
