.class public abstract Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "UrlBasedPageFragment.java"


# instance fields
.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.UrlBasedPageFragment.url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->mUrl:Ljava/lang/String;

    return-void
.end method

.method protected setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    const-string v0, "finsky.UrlBasedPageFragment.url"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
