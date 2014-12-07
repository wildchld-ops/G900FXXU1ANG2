.class Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->addSelectAllHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isMultiSelectEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2300(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$3000(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$900(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->selectAll()V

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->deselectAll(Z)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    move-result-object v4

    # invokes: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->updateSelectionMenu()V
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->access$700(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;)V

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$900(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mTotalCount:I
    invoke-static {v5}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2300(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->selectAll()V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$4;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionModeCallback:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;
    invoke-static {v4}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$2100(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$ActionModeCallback;->deselectAll(Z)V

    goto :goto_1
.end method
