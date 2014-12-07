.class final Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;
.super Ljava/lang/Object;
.source "DetailsPlusOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CircleRowHolder"
.end annotation


# instance fields
.field public final avatarView:Lcom/google/android/finsky/layout/FifeImageView;

.field public final nameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0801cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;->avatarView:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f0801e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog$CircleRowHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
