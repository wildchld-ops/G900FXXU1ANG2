.class public Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SideDrawerAccountsAdapter.java"


# instance fields
.field private mAccountNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mAccountNames:Ljava/util/List;

    new-instance v0, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/Doc$Image;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/finsky/protos/Doc$Image;->imageType:I

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageType:Z

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

    sget-object v0, Lcom/google/android/finsky/config/G;->defaultProfileAvatarImageUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/finsky/protos/Doc$Image;->imageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasImageUrl:Z

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->supportsFifeUrlOptions:Z

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

    iput-boolean v2, v0, Lcom/google/android/finsky/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->createContent()V

    return-void
.end method

.method private createContent()V
    .locals 8

    iget-object v6, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mAccountNames:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    iget-object v6, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mAccountNames:Ljava/util/List;

    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mAccountNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mAccountNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    check-cast v0, Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mDefaultProfileImage:Lcom/google/android/finsky/protos/Doc$Image;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mAccountNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;->configure(Lcom/google/android/finsky/protos/Doc$Image;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04012e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->createContent()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
