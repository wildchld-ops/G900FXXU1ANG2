.class public Lcom/google/android/finsky/activities/CategoryTab;
.super Ljava/lang/Object;
.source "CategoryTab.java"

# interfaces
.implements Lcom/google/android/finsky/activities/ViewPagerTab;


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCategoryAdapter:Lcom/google/android/finsky/adapters/CategoryAdapter;

.field private mCategoryView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mData:Lcom/google/android/finsky/api/model/DfeBrowse;

.field private mIsCurrentlySelected:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

.field private final mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

.field private final mTabTitle:Ljava/lang/String;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/LayoutInflater;Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to create category tab with invalid data!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/android/finsky/activities/CategoryTab;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/activities/CategoryTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/activities/CategoryTab;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p4, p0, Lcom/google/android/finsky/activities/CategoryTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p6, p0, Lcom/google/android/finsky/activities/CategoryTab;->mData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iput-object p7, p0, Lcom/google/android/finsky/activities/CategoryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iput-object p8, p0, Lcom/google/android/finsky/activities/CategoryTab;->mTabTitle:Ljava/lang/String;

    iget-object v0, p5, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget-object v0, p5, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->mElementNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance v0, Lcom/google/android/finsky/adapters/CategoryAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/CategoryTab;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/CategoryTab;->mData:Lcom/google/android/finsky/api/model/DfeBrowse;

    iget-object v3, p0, Lcom/google/android/finsky/activities/CategoryTab;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/CategoryTab;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v6, p0, Lcom/google/android/finsky/activities/CategoryTab;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v7, p0, Lcom/google/android/finsky/activities/CategoryTab;->mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

    iget-object v8, p0, Lcom/google/android/finsky/activities/CategoryTab;->mTabTitle:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/finsky/activities/CategoryTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    move v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/CategoryAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/DfeBrowse;Lcom/google/android/finsky/navigationmanager/NavigationManager;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/BitmapLoader;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryAdapter:Lcom/google/android/finsky/adapters/CategoryAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryAdapter:Lcom/google/android/finsky/adapters/CategoryAdapter;

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryAdapter:Lcom/google/android/finsky/adapters/CategoryAdapter;

    iput-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setTabSelected(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mIsCurrentlySelected:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->startNewImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->setNodeSelected(Z)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mCategoryView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->requestImpressions(Landroid/view/ViewGroup;)V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/CategoryTab;->mIsCurrentlySelected:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/CategoryTab;->mParentNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->setNodeSelected(Z)V

    goto :goto_0
.end method
