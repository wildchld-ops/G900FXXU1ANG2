.class Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewCache"
.end annotation


# instance fields
.field public final companyView:Lcom/samsung/contacts/widget/StrokeTextView;

.field public final displayNameContainer:Landroid/widget/LinearLayout;

.field public final displayNameView:Lcom/samsung/contacts/widget/StrokeTextView;

.field public final emptyView:Landroid/view/View;

.field public final layoutResourceId:I

.field public final noSyncView:Landroid/widget/ImageView;

.field public final photoContainer:Landroid/widget/RelativeLayout;

.field public final photoOverlayView:Landroid/view/View;

.field public final photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

.field public final starredView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f080233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f080234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f080052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/widget/StrokeTextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Lcom/samsung/contacts/widget/StrokeTextView;

    const v0, 0x7f080053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/widget/StrokeTextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Lcom/samsung/contacts/widget/StrokeTextView;

    const v0, 0x7f080235

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->emptyView:Landroid/view/View;

    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/widget/ContactPhotoView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    const v0, 0x7f080275

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoOverlayView:Landroid/view/View;

    const v0, 0x7f080191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/ImageView;

    const v0, 0x7f080276

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->noSyncView:Landroid/widget/ImageView;

    iput p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    return-void
.end method
