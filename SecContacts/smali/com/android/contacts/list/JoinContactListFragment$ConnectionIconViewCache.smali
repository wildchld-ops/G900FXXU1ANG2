.class Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;
.super Ljava/lang/Object;
.source "JoinContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionIconViewCache"
.end annotation


# instance fields
.field public final iconImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0800f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;->iconImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;->iconImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$ConnectionIconViewCache;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
