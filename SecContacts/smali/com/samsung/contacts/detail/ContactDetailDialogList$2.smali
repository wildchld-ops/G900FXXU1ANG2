.class Lcom/samsung/contacts/detail/ContactDetailDialogList$2;
.super Ljava/lang/Object;
.source "ContactDetailDialogList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/detail/ContactDetailDialogList;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/ContactDetailDialogList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$2;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$2;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$2;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    const v1, 0x7f0e0309

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$2;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # getter for: Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$000(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$2;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$2;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # getter for: Lcom/samsung/contacts/detail/ContactDetailDialogList;->mAdapter:Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$100(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;

    iget-object v0, v0, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;->data:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/dialer/impl/CallMessageImpl;->launch(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
