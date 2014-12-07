.class public Lcom/google/android/finsky/adapters/MyWishlistAdapter;
.super Lcom/google/android/finsky/adapters/CardListAdapter;
.source "MyWishlistAdapter.java"


# instance fields
.field private mDismissedDocIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/BucketedList;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/utils/ClientMutationCache;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;",
            "Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/google/android/finsky/adapters/CardListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/BucketedList;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;ZZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyWishlistAdapter;->mDismissedDocIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected isDismissed(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyWishlistAdapter;->mDismissedDocIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyWishlistAdapter;->mDismissedDocIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->onDataChanged()V

    return-void
.end method

.method public onWishlistStatusChanged(Ljava/lang/String;ZZ)V
    .locals 1

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyWishlistAdapter;->mDismissedDocIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/MyWishlistAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyWishlistAdapter;->mDismissedDocIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
