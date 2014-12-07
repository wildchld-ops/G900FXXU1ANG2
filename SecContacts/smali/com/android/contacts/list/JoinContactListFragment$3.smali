.class Lcom/android/contacts/list/JoinContactListFragment$3;
.super Landroid/os/Handler;
.source "JoinContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/JoinContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/JoinContactListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$3;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$3;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$3;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v2}, Lcom/android/contacts/list/JoinContactListFragment;->access$800(Lcom/android/contacts/list/JoinContactListFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method
