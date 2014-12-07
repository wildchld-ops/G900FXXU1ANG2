.class public Lcom/google/android/finsky/layout/ListingSection;
.super Landroid/widget/RelativeLayout;
.source "ListingSection.java"


# instance fields
.field private mDescriptionContainer:Landroid/widget/LinearLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitle:Landroid/widget/TextView;

.field private mTopSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ListingSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private hideIcon()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingSection;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method private makeDescriptionRow()Lcom/google/android/finsky/layout/ListingDescriptionRow;
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040097

    iget-object v2, p0, Lcom/google/android/finsky/layout/ListingSection;->mDescriptionContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ListingDescriptionRow;

    return-object v0
.end method


# virtual methods
.method public addDescriptionRow(Ljava/lang/String;Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/protos/Doc$Image;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ListingSection;->makeDescriptionRow()Lcom/google/android/finsky/layout/ListingDescriptionRow;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/layout/ListingDescriptionRow;->populateAsHtml(Ljava/lang/String;Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingSection;->mDescriptionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/ListingDescriptionRow;->populateAsHtml(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideSeparator()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mTopSeparator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mDescriptionContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingSection;->mTopSeparator:Landroid/view/View;

    return-void
.end method

.method public populate(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Z

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingSection;->mDescriptionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingSection;->mTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingSection;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/ListingSection;->makeDescriptionRow()Lcom/google/android/finsky/layout/ListingDescriptionRow;

    move-result-object v0

    if-eqz p4, :cond_3

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/ListingDescriptionRow;->populateAsHtml(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingSection;->mDescriptionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    if-ltz p3, :cond_4

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingSection;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingSection;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/ListingDescriptionRow;->populate(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ListingSection;->hideIcon()V

    goto :goto_2
.end method
