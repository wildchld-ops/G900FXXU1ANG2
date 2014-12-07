.class public Lcom/google/android/finsky/utils/WishlistHelper;
.super Ljava/lang/Object;
.source "WishlistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;
    }
.end annotation


# direct methods
.method public static isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z
    .locals 5

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v3, "u-wl"

    const/4 v4, 0x1

    invoke-static {v2, v3, p0, v4}, Lcom/google/android/finsky/library/LibraryEntry;->fromDocument(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;I)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/AccountLibrary;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v2

    return v2
.end method

.method public static processWishlistClick(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_1

    const-string v4, "Tried to wishlist an item but there is no document active"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v6, Lcom/google/android/finsky/utils/WishlistHelper$1;

    invoke-direct {v6, p1}, Lcom/google/android/finsky/utils/WishlistHelper$1;-><init>(Lcom/google/android/finsky/api/DfeApi;)V

    new-instance v0, Lcom/google/android/finsky/utils/WishlistHelper$2;

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/WishlistHelper$2;-><init>(ZLandroid/content/res/Resources;Ljava/lang/String;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    new-array v4, v7, [Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v9, "u-wl"

    invoke-interface {p1, v4, v9, v6, v0}, Lcom/google/android/finsky/api/DfeApi;->removeFromLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    :goto_1
    if-eqz p2, :cond_0

    if-nez v1, :cond_3

    move v4, v7

    :goto_2
    invoke-interface {p2, v5, v4, v8}, Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;->onWishlistStatusChanged(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    const v9, 0x7f0902e8

    invoke-static {v4, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    new-array v4, v7, [Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v9, "u-wl"

    invoke-interface {p1, v4, v9, v6, v0}, Lcom/google/android/finsky/api/DfeApi;->addToLibrary(Ljava/util/Collection;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_1

    :cond_3
    move v4, v8

    goto :goto_2
.end method

.method public static shouldHideWishlistAction(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDealOfTheDayInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v7, 0x6

    if-ne v4, v7, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-static {v4, v2, v7}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v4

    if-eqz v4, :cond_4

    move v1, v5

    :cond_3
    :goto_1
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    sget-object v4, Lcom/google/android/finsky/config/G;->wishlistEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v6

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_1
.end method
