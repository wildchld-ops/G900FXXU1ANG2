.class public Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;
.super Landroid/widget/RelativeLayout;
.source "SideDrawerAccountRow.java"


# instance fields
.field private mAccountName:Landroid/widget/TextView;

.field private mAvatar:Lcom/google/android/finsky/layout/FifeImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/finsky/protos/Doc$Image;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;->mAvatar:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;->mAvatar:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/SideDrawerAccountRow;->mAccountName:Landroid/widget/TextView;

    return-void
.end method
