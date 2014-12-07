.class public Lcom/google/android/finsky/layout/BadgeSection;
.super Lcom/google/android/finsky/layout/SeparatorLinearLayout;
.source "BadgeSection.java"


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mExpansionState:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/BadgeSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/SeparatorLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/BadgeSection;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->expand()V

    return-void
.end method

.method private createOverviewRow()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->removeAllViews()V

    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->createPrimaryBadgeRow()Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    return-void
.end method

.method private createPrimaryBadgeRow()Lcom/google/android/finsky/layout/BadgeRow;
    .locals 12

    const/4 v11, 0x6

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BadgeRow;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    move-result-object v5

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v6, p0, Lcom/google/android/finsky/layout/BadgeSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/BadgeRow;->setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/DocAnnotations$Badge;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreatorBadges()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eq v7, v5, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, v11}, Lcom/google/android/finsky/utils/BadgeUtils;->getImage(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/BadgeRow;->addExtraBadge(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/Doc$Image;)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFirstCreatorBadge()Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getItemBadges()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    if-eq v10, v5, :cond_3

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10, v11}, Lcom/google/android/finsky/utils/BadgeUtils;->getImage(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/BadgeRow;->addExtraBadge(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/Doc$Image;)V

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    new-instance v1, Lcom/google/android/finsky/layout/BadgeSection$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/BadgeSection$1;-><init>(Lcom/google/android/finsky/layout/BadgeSection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/BadgeRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object v0
.end method

.method private createSecondaryBadgeRow(Lcom/google/android/finsky/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;
    .locals 7

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/BadgeRow;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v6, p0, Lcom/google/android/finsky/layout/BadgeSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/layout/BadgeRow;->setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/DocAnnotations$Badge;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-object v0
.end method

.method private expand()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->removeAllViews()V

    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getCreatorBadges()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->createSecondaryBadgeRow(Lcom/google/android/finsky/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getItemBadges()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/BadgeSection;->createSecondaryBadgeRow(Lcom/google/android/finsky/protos/DocAnnotations$Badge;)Lcom/google/android/finsky/layout/BadgeRow;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/BadgeSection;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    iput v5, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    iput-object p3, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iput-object p4, p0, Lcom/google/android/finsky/layout/BadgeSection;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p6, p0, Lcom/google/android/finsky/layout/BadgeSection;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasCreatorBadges()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BadgeSection;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BadgeSection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {p5, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    iget v0, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->expand()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BadgeSection;->createOverviewRow()V

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, ""

    iget v1, p0, Lcom/google/android/finsky/layout/BadgeSection;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method
