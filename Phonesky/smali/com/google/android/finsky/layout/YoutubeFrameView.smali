.class public abstract Lcom/google/android/finsky/layout/YoutubeFrameView;
.super Landroid/view/ViewGroup;
.source "YoutubeFrameView.java"


# instance fields
.field protected mAccessibilityOverlay:Landroid/view/View;

.field protected mPlayImageView:Landroid/widget/ImageView;

.field protected mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/YoutubeFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getClickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mThumbnailImageView:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mPlayImageView:Landroid/widget/ImageView;

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mAccessibilityOverlay:Landroid/view/View;

    return-void
.end method

.method public setContentDescription(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/YoutubeFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPlayIcon(Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mAccessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/YoutubeFrameView;->mAccessibilityOverlay:Landroid/view/View;

    new-instance v1, Lcom/google/android/finsky/layout/YoutubeFrameView$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/finsky/layout/YoutubeFrameView$1;-><init>(Lcom/google/android/finsky/layout/YoutubeFrameView;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
