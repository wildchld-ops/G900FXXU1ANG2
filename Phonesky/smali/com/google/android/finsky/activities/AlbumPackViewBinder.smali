.class public Lcom/google/android/finsky/activities/AlbumPackViewBinder;
.super Lcom/google/android/finsky/activities/DetailsPackViewBinder;
.source "AlbumPackViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsPackViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleEmptyData()V
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;

    iget-object v1, p0, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->mHeader:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0902e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/play/PlayCardClusterViewHeader;->setContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/AlbumPackViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
