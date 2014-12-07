.class public Lcom/google/android/finsky/library/AppLibrary;
.super Lcom/google/android/finsky/library/HashMapLibrary;
.source "AppLibrary.java"


# instance fields
.field private mInAppDocIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionsDocIdSet:Ljava/util/Set;
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
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryHasher;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;-><init>(ILcom/google/android/finsky/library/LibraryHasher;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getDocType()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getDocId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V

    return-void

    :cond_1
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dumpState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AppLibrary ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  totalCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/library/AppLibrary;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  subscriptionsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryAppEntry;
    .locals 8

    const/4 v5, 0x1

    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v3, 0x3

    move-object v4, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AppLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/library/LibraryAppEntry;

    return-object v7
.end method

.method public getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;
    .locals 8

    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v3, 0x3

    const/16 v5, 0xb

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AppLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/library/LibraryInAppEntry;

    return-object v7
.end method

.method getInAppPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryInAppEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/AppLibrary;->getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;
    .locals 8

    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    const/4 v3, 0x3

    const/16 v5, 0xf

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/library/AppLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    return-object v7
.end method

.method getSubscriptionPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/utils/DocUtils;->getPackageNameForSubscription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method getSubscriptionsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/library/AppLibrary;->getSubscriptionEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getDocType()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getDocId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/library/HashMapLibrary;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    return-void

    :cond_1
    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mSubscriptionsDocIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/library/AppLibrary;->mInAppDocIdSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-super {p0}, Lcom/google/android/finsky/library/HashMapLibrary;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{num apps=%d}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/library/AppLibrary;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
