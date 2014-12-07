.class public Lcom/google/android/finsky/layout/EditorialHeaderTitle;
.super Landroid/widget/LinearLayout;
.source "EditorialHeaderTitle.java"


# instance fields
.field private mHeader:Landroid/widget/TextView;

.field private mSubheader:Landroid/widget/TextView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    :goto_0
    iget-object v8, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    move v6, v5

    :goto_1
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v4

    :goto_2
    iget-object v8, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mSubtitle:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    move v6, v5

    :goto_3
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    move v0, v4

    :goto_4
    iget-object v8, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mHeader:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    move v6, v5

    :goto_5
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mHeader:Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    move v1, v4

    :goto_6
    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mSubheader:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mSubheader:Landroid/widget/TextView;

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_3

    :cond_8
    move v0, v5

    goto :goto_4

    :cond_9
    move v6, v7

    goto :goto_5

    :cond_a
    move v1, v5

    goto :goto_6

    :cond_b
    move v5, v7

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mSubtitle:Landroid/widget/TextView;

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mHeader:Landroid/widget/TextView;

    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialHeaderTitle;->mSubheader:Landroid/widget/TextView;

    return-void
.end method
