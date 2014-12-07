.class Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$4;
.super Ljava/lang/Object;
.source "ContactTipsDialogFragment.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$4;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$4;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$4;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    # getter for: Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->mCreateText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->access$000(Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$4;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    # getter for: Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->mCreateText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->access$000(Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment$4;->this$0:Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;

    # getter for: Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->mCreateText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;->access$000(Lcom/samsung/contacts/interactions/ContactTipsDialogFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method
