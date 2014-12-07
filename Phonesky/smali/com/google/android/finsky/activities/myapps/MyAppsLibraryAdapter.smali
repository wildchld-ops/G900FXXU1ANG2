.class public Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "MyAppsLibraryAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter$1;
    }
.end annotation


# static fields
.field private static sEnableRemoveAppsFromLibrary:Z


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCanClickOnInstalledApps:Z

.field private mHasAccountSwitcher:Z

.field private mList:Lcom/google/android/finsky/api/model/DfeList;

.field private final mOnArchiveActionListener:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/config/G;->enableRemoveAppsFromLibrary:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->sEnableRemoveAppsFromLibrary:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;Landroid/view/View$OnLongClickListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/activities/AuthenticatedActivity;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Landroid/view/View$OnClickListener;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;
    .param p6    # Landroid/view/View$OnLongClickListener;
    .param p7    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnArchiveActionListener:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;

    iput-object p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object p7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mCanClickOnInstalledApps:Z

    return-void
.end method

.method private getAccountSwitcherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const v1, 0x7f0400a2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    const v1, 0x7f080112

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AccountSelectorView;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/AccountSelectorView;->configure()V

    return-object p1
.end method

.method private getDocView(ILcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Landroid/view/View;
    .param p4    # Landroid/view/ViewGroup;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400e0

    invoke-virtual {v1, v2, p4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :goto_0
    move-object v0, p3

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->bindLoading()V

    :cond_0
    :goto_1
    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setTag(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    move-object v1, p3

    check-cast v1, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    invoke-static {v1}, Lcom/google/android/finsky/utils/PlayCardUtils;->resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    move v4, v8

    :goto_2
    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v9, -0x1

    move-object v1, p2

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v9}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;ZI)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->sEnableRemoveAppsFromLibrary:Z

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->canRemoveFromLibrary(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnArchiveActionListener:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;

    invoke-virtual {v0, v8, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setArchivable(ZLcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_3
    move v4, v10

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v10, v3}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setArchivable(ZLcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;)V

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1
.end method

.method public static getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p0    # Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mCanClickOnInstalledApps:Z

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->isMoreDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-lez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter$1;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No footer or item at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getAccountSwitcherView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getDocView(ILcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1    # I

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mCanClickOnInstalledApps:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v0}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->canRemoveFromLibrary(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v1

    goto :goto_0
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->isMoreAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected retryLoadingItems()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->retryLoadItems()V

    :cond_0
    return-void
.end method

.method public setCanClickOnInstalledApps(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mCanClickOnInstalledApps:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDfeList(Lcom/google/android/finsky/api/model/DfeList;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/api/model/DfeList;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showAccountSwitcher()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->mHasAccountSwitcher:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->notifyDataSetChanged()V

    return-void
.end method
