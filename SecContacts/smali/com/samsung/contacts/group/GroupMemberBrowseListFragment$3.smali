.class Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$3;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/samsung/contacts/group/GroupInfo;)V
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

    iput-object p1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$3;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$3;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$400(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$3;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$500(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromEmergencyDialer"

    iget-object v2, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$3;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    # getter for: Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->mFromEmergencyDialer:Z
    invoke-static {v2}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->access$600(Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment$3;->this$0:Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/group/GroupMemberBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
