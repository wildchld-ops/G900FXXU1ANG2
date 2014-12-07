.class Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;
.super Ljava/lang/Object;
.source "GroupMultipleDeletionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mGroupsToDelete:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$000(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->mAdapter:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->access$100(Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;)Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->addAllGroup()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment$1;->this$0:Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/group/GroupMultipleDeletionFragment;->removeAllGroup()V

    goto :goto_0
.end method
