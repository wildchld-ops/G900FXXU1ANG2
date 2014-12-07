.class public abstract Lcom/google/android/finsky/library/HashingLibrary;
.super Ljava/lang/Object;
.source "HashingLibrary.java"

# interfaces
.implements Lcom/google/android/finsky/library/Library;


# instance fields
.field final mHasher:Lcom/google/android/finsky/library/LibraryHasher;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryHasher;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/library/LibraryHasher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/library/LibraryEntry;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/HashingLibrary;->contains(Lcom/google/android/finsky/library/LibraryEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    invoke-virtual {p1}, Lcom/google/android/finsky/library/LibraryEntry;->getDocumentHash()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/library/LibraryHasher;->add(J)V

    :cond_0
    return-void
.end method

.method public abstract dumpState(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public getHash()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    invoke-interface {v0}, Lcom/google/android/finsky/library/LibraryHasher;->compute()J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Lcom/google/android/finsky/library/LibraryEntry;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/library/LibraryEntry;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/HashingLibrary;->get(Lcom/google/android/finsky/library/LibraryEntry;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/LibraryEntry;->getDocumentHash()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/library/LibraryHasher;->remove(J)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/library/HashingLibrary;->mHasher:Lcom/google/android/finsky/library/LibraryHasher;

    invoke-interface {v0}, Lcom/google/android/finsky/library/LibraryHasher;->reset()V

    return-void
.end method
