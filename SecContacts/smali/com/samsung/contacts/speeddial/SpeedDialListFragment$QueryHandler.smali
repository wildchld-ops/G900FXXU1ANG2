.class Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpeedDialListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/contacts/speeddial/SpeedDialActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListState:Landroid/os/Parcelable;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$300(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mSpeedDialList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListState:Landroid/os/Parcelable;
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$300(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->mListState:Landroid/os/Parcelable;
    invoke-static {v1, v2}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$302(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # invokes: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->makedefaultList()V
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$500(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListFragment$QueryHandler;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    # invokes: Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->makeSpdlList(Landroid/database/Cursor;)V
    invoke-static {v1, p3}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->access$600(Lcom/samsung/contacts/speeddial/SpeedDialListFragment;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method
