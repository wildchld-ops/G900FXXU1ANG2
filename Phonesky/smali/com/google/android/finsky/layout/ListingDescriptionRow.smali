.class public Lcom/google/android/finsky/layout/ListingDescriptionRow;
.super Landroid/widget/LinearLayout;
.source "ListingDescriptionRow.java"


# instance fields
.field private mIcon:Lcom/google/android/finsky/layout/FifeImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080170

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingDescriptionRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mText:Landroid/widget/TextView;

    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingDescriptionRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mIcon:Lcom/google/android/finsky/layout/FifeImageView;

    return-void
.end method

.method public populate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mIcon:Lcom/google/android/finsky/layout/FifeImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    return-void
.end method

.method public populateAsHtml(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mText:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mIcon:Lcom/google/android/finsky/layout/FifeImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    return-void
.end method

.method public populateAsHtml(Ljava/lang/String;Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mText:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingDescriptionRow;->mIcon:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    return-void
.end method
