.class public Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;
.super Lcom/google/android/finsky/layout/play/PlayCardClusterView;
.source "PlayCardMerchClusterView.java"


# instance fields
.field private final mContentVerticalMargin:I

.field private final mContentVerticalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/play/PlayCardClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->mContentVerticalMargin:I

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->mContentVerticalPadding:I

    return-void
.end method


# virtual methods
.method public configureMerch(Lcom/google/android/finsky/utils/BitmapLoader;ILcom/google/android/finsky/protos/Doc$Image;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/protos/Doc$Image;
    .param p4    # Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    check-cast v1, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->mContentVerticalMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->mContentVerticalMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->mContentVerticalPadding:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->setCardContentVerticalPadding(I)V

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->configureMerch(Lcom/google/android/finsky/utils/BitmapLoader;ILcom/google/android/finsky/protos/Doc$Image;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public configureNoMerch()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterView;->mContent:Lcom/google/android/finsky/layout/play/PlayCardClusterViewContent;

    check-cast v1, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardMerchClusterViewContent;->setCardContentVerticalPadding(I)V

    return-void
.end method

.method protected getPlayStoreUiElementType()I
    .locals 1

    const/16 v0, 0x197

    return v0
.end method
