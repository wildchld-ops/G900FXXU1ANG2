.class public Lcom/google/android/finsky/utils/LibraryUtils;
.super Ljava/lang/Object;
.source "LibraryUtils.java"


# static fields
.field private static sLibraryEntryForOwnership:Lcom/google/android/finsky/library/LibraryEntry;


# direct methods
.method public static areRequiredSubsOwnedForAllDocs(Lcom/google/android/finsky/library/Library;Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/library/Library;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v13, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v6, v13

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v12

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v1, v9, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    if-nez v1, :cond_3

    :cond_2
    move v6, v13

    goto :goto_0

    :cond_3
    iget-object v1, v9, Lcom/google/android/finsky/protos/Common$Offer;->subscriptionContentTerms:Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;

    iget-object v10, v1, Lcom/google/android/finsky/protos/Common$SubscriptionContentTerms;->requiredSubscription:Lcom/google/android/finsky/protos/Common$Docid;

    iget v3, v10, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    invoke-static {v3}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v10, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/library/LibraryEntry;

    sget-object v1, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    iget v5, v10, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/library/LibraryEntry;

    invoke-interface {p0, v11}, Lcom/google/android/finsky/library/Library;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v1

    if-nez v1, :cond_5

    move v6, v13

    goto :goto_0
.end method

.method public static getFirstOwner(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/AccountLibrary;

    invoke-static {p0, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4

    invoke-virtual {p1, p2}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/LibraryUtils;->getFirstOwner(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;)Landroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Lcom/google/android/finsky/library/Libraries;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/accounts/Account;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v5, "Corpus for %s is not available."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v2

    if-ne v2, v4, :cond_4

    move v1, v4

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->isAvailableIfOwned()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "%s available because owned, overriding [restriction=%d]."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_0

    const-string v5, "%s not available [restriction=%d]."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public static declared-synchronized isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z
    .locals 2

    const-class v1, Lcom/google/android/finsky/utils/LibraryUtils;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getFullDocid()Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/protos/Common$Docid;Lcom/google/android/finsky/library/Library;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isOfferOwned(Lcom/google/android/finsky/protos/Common$Docid;Lcom/google/android/finsky/library/Library;I)Z
    .locals 5

    const/4 v2, 0x0

    const-class v3, Lcom/google/android/finsky/utils/LibraryUtils;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    invoke-static {v4}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/android/finsky/utils/LibraryUtils;->sLibraryEntryForOwnership:Lcom/google/android/finsky/library/LibraryEntry;

    if-nez v4, :cond_1

    sget-object v4, Lcom/google/android/finsky/library/LibraryEntry;->UNKNOWN_ACCOUNT:Ljava/lang/String;

    invoke-static {v4, v1, p0, p2}, Lcom/google/android/finsky/library/LibraryEntry;->fromDocId(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Docid;I)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v4

    sput-object v4, Lcom/google/android/finsky/utils/LibraryUtils;->sLibraryEntryForOwnership:Lcom/google/android/finsky/library/LibraryEntry;

    :goto_0
    sget-object v4, Lcom/google/android/finsky/utils/LibraryUtils;->sLibraryEntryForOwnership:Lcom/google/android/finsky/library/LibraryEntry;

    invoke-interface {p1, v4}, Lcom/google/android/finsky/library/Library;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit v3

    return v2

    :cond_1
    :try_start_1
    sget-object v4, Lcom/google/android/finsky/utils/LibraryUtils;->sLibraryEntryForOwnership:Lcom/google/android/finsky/library/LibraryEntry;

    invoke-virtual {v4, v1, p0, p2}, Lcom/google/android/finsky/library/LibraryEntry;->updateInPlace(Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Docid;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/finsky/library/LibraryEntry;->isExpired()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    if-ne v3, v1, :cond_5

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    const/4 v3, 0x3

    invoke-static {p0, p1, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v3, 0x7

    invoke-static {p0, p1, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, p1, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method
