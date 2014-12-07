.class public abstract Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PaginatedListAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mRetryClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$1;-><init>(Lcom/google/android/finsky/adapters/PaginatedListAdapter;)V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mRetryClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/PaginatedListAdapter;)Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/PaginatedListAdapter;Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V

    return-void
.end method

.method private setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/google/android/finsky/layout/ErrorFooter;

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->getLastRequestError()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mRetryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/ErrorFooter;->configure(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_0
    const v1, 0x7f04006c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mFooterMode:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected abstract getLastRequestError()Ljava/lang/String;
.end method

.method protected getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const v0, 0x7f040099

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

.method protected inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isMoreDataAvailable()Z
.end method

.method public onDataChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->isMoreDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V

    goto :goto_0
.end method

.method protected abstract retryLoadingItems()V
.end method

.method public triggerFooterErrorMode()V
    .locals 1

    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;->setFooterMode(Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;)V

    return-void
.end method
