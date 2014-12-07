.class Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsBadgeContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BadgeContainerAdapter"
.end annotation


# instance fields
.field private final mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p3, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->badge:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->badge:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerRowHolder;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerRowHolder;

    invoke-direct {v1, p2}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerRowHolder;-><init>(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mBadgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;->badge:[Lcom/google/android/finsky/protos/DocAnnotations$Badge;

    aget-object v0, v2, p1

    iget-object v2, v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerRowHolder;->badgeTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerRowHolder;->badgeDescription:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/finsky/protos/DocAnnotations$Badge;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerRowHolder;->badgeThumbnail:Lcom/google/android/finsky/layout/FifeImageView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    invoke-static {v3, v0, v4}, Lcom/google/android/finsky/utils/BadgeUtils;->getImage(Landroid/content/Context;Lcom/google/android/finsky/protos/DocAnnotations$Badge;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog$BadgeContainerAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    return-object p2
.end method
