.class public Lcom/google/android/finsky/adapters/CategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBackendId:I

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mCategories:[Lcom/google/android/finsky/protos/Browse$BrowseLink;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mNumQuickLinksPerRow:I

.field private final mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mQuickLinkRowCount:I

.field private final mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

.field private final mSubheaderTitle:Ljava/lang/String;

.field private final mTextColor:Landroid/content/res/ColorStateList;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/navigationmanager/NavigationManager;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/DfeBrowse;->getCategoryList()[Lcom/google/android/finsky/protos/Browse$BrowseLink;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mCategories:[Lcom/google/android/finsky/protos/Browse$BrowseLink;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput p4, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mBackendId:I

    invoke-static {p1, p4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getSecondaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    iput-object p5, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p6, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p8, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mSubheaderTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000

    div-float v0, v2, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    float-to-double v3, v0

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/PlayUtils;->getFeaturedGridColumnCount(Landroid/content/res/Resources;D)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mNumQuickLinksPerRow:I

    iput-object p7, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    array-length v1, v2

    :goto_0
    iget v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mNumQuickLinksPerRow:I

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/IntMath;->ceil(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    iput-object p9, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/CategoryAdapter;)I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mBackendId:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/CategoryAdapter;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/CategoryAdapter;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private getCategoryRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Browse$BrowseLink;

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04002d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;-><init>()V

    const v3, 0x7f08008f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v2, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, v2, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/finsky/protos/Browse$BrowseLink;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x64

    iget-object v4, v0, Lcom/google/android/finsky/protos/Browse$BrowseLink;->serverLogsCookie:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->reset(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->reportImpression()V

    move-object v1, v2

    new-instance v3, Lcom/google/android/finsky/adapters/CategoryAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/finsky/adapters/CategoryAdapter$1;-><init>(Lcom/google/android/finsky/adapters/CategoryAdapter;Lcom/google/android/finsky/protos/Browse$BrowseLink;Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v2, Lcom/google/android/finsky/adapters/CategoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/finsky/protos/Browse$BrowseLink;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private getSubheaderRowView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mSubheaderTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private isQuickLinkRow(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubheaderRow(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mCategories:[Lcom/google/android/finsky/protos/Browse$BrowseLink;

    array-length v0, v0

    iget v1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mCategories:[Lcom/google/android/finsky/protos/Browse$BrowseLink;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/CategoryAdapter;->isQuickLinkRow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/CategoryAdapter;->isSubheaderRow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CategoryAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget v8, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mNumQuickLinksPerRow:I

    iget-object v9, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mParent:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v5, p3

    move v7, p1

    invoke-static/range {v0 .. v9}, Lcom/google/android/finsky/adapters/QuickLinkHelper;->getQuickLinksRow(Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/view/LayoutInflater;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/ViewGroup;Landroid/view/ViewGroup;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;IILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/CategoryAdapter;->getSubheaderRowView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    iget v0, p0, Lcom/google/android/finsky/adapters/CategoryAdapter;->mQuickLinkRowCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/CategoryAdapter;->getCategoryRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/CategoryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
