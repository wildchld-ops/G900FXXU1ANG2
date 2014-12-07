.class Lcom/android/contacts/common/list/ContactEntryListFragment$1;
.super Landroid/os/Handler;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v2, v3, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "directoryId"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method
