.class Lcom/samsung/contacts/group/GroupAccountSelectionFragment$1;
.super Ljava/lang/Object;
.source "GroupAccountSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    # getter for: Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mSelectedAccounts:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->access$000(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    # getter for: Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->access$100(Lcom/samsung/contacts/group/GroupAccountSelectionFragment;)Lcom/samsung/contacts/group/GroupAccountSelectionFragment$AccountListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->addAllAccounts()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupAccountSelectionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupAccountSelectionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupAccountSelectionFragment;->removeAllAccounts()V

    goto :goto_0
.end method
