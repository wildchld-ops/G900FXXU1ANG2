.class public Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryMusicViewBinder.java"


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->goToArtistPage()V

    return-void
.end method

.method private goToArtistPage()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->displayArtist:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    iget-object v0, v1, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;->detailsUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hasArtistLink()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->displayArtist:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->displayArtist:Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocDetails$ArtistDetails;->detailsUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected setupItemDetails()V
    .locals 7

    const v6, 0x7f0800f2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupItemDetails()V

    const v3, 0x7f0800f0

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->hasArtistLink()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    const v3, 0x7f020075

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v3, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    const v3, 0x7f0800f4

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v3, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayTextView;)V

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f08006c

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iput-boolean v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mHasExtraInfo:Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
