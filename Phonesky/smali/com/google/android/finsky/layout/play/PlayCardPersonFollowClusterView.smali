.class public Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterView;
.source "PlayCardPersonFollowClusterView.java"


# instance fields
.field private final mContentVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;->mContentVerticalMargin:I

    return-void
.end method


# virtual methods
.method public configurePersonProfile(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    check-cast v1, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;->mContentVerticalMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterView;->mContentVerticalMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/finsky/layout/play/PlayCardPersonFollowClusterViewContent;->configurePersonProfile(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x19b

    return v0
.end method
