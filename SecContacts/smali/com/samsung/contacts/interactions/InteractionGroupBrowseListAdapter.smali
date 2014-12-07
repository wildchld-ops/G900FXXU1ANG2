.class public Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;
.super Lcom/android/contacts/group/GroupBrowseListAdapter;
.source "InteractionGroupBrowseListAdapter.java"


# instance fields
.field private mCallingPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/app/LoaderManager;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListAdapter;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;)V

    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;
    .param p4    # Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/group/GroupBrowseListAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;
    .param p4    # Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/group/GroupBrowseListAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCalllingPackage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupBrowseListAdapter;->mCallingPackage:Ljava/lang/String;

    return-void
.end method
