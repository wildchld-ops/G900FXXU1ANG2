.class public Lcom/google/android/finsky/layout/SubscriptionsSection;
.super Landroid/widget/LinearLayout;
.source "SubscriptionsSection.java"


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SubscriptionsSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addSubscription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;ILcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 6
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;
    .param p5    # Landroid/os/Bundle;
    .param p6    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SubscriptionsSection;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SubscriptionView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/SubscriptionView;->configure(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/layout/SubscriptionView$CancelListener;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clearSubscriptions()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->removeAllViews()V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SubscriptionsSection;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SubscriptionsSection;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/finsky/layout/SubscriptionView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/finsky/layout/SubscriptionView;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SubscriptionView;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
