.class public Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;
.super Ljava/lang/Object;
.source "ContactDetailButtonLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailViewCache"
.end annotation


# instance fields
.field public final actionsViewContainer:Landroid/view/View;

.field public final blackListIndicator:Landroid/view/View;

.field public final data:Landroid/widget/TextView;

.field public final presenceIcon:Landroid/widget/ImageView;

.field public final primaryActionButton:Landroid/widget/ImageView;

.field public final primaryActionViewContainer:Landroid/view/View;

.field public final primaryIndicator:Landroid/view/View;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View$OnClickListener;
    .param p3    # Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->type:Landroid/widget/TextView;

    const v0, 0x7f080002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->data:Landroid/widget/TextView;

    const v0, 0x7f080101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->primaryIndicator:Landroid/view/View;

    const v0, 0x7f0800ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->primaryActionButton:Landroid/widget/ImageView;

    const v0, 0x7f080100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->blackListIndicator:Landroid/view/View;

    const v0, 0x7f0800b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailButtonLayoutManager$DetailViewCache;->primaryActionViewContainer:Landroid/view/View;

    return-void
.end method
