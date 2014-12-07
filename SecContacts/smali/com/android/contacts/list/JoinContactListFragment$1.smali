.class Lcom/android/contacts/list/JoinContactListFragment$1;
.super Ljava/lang/Object;
.source "JoinContactListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/samsung/contacts/detail/TargetContactData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/JoinContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/JoinContactListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/detail/TargetContactData;",
            ">;"
        }
    .end annotation

    const-string v1, "JoinContactListFragment"

    const-string v2, "TargetLoader create loader"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # getter for: Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J
    invoke-static {v2}, Lcom/android/contacts/list/JoinContactListFragment;->access$000(Lcom/android/contacts/list/JoinContactListFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "entities"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/detail/TargetContactLoader;

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/contacts/detail/TargetContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/samsung/contacts/detail/TargetContactData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/detail/TargetContactData;",
            ">;",
            "Lcom/samsung/contacts/detail/TargetContactData;",
            ")V"
        }
    .end annotation

    const-string v0, "JoinContactListFragment"

    const-string v1, "TargetLoader load finished"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # setter for: Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactData:Lcom/samsung/contacts/detail/TargetContactData;
    invoke-static {v0, p2}, Lcom/android/contacts/list/JoinContactListFragment;->access$102(Lcom/android/contacts/list/JoinContactListFragment;Lcom/samsung/contacts/detail/TargetContactData;)Lcom/samsung/contacts/detail/TargetContactData;

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    # invokes: Lcom/android/contacts/list/JoinContactListFragment;->setTargetContactData()V
    invoke-static {v0}, Lcom/android/contacts/list/JoinContactListFragment;->access$200(Lcom/android/contacts/list/JoinContactListFragment;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/contacts/detail/TargetContactData;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/samsung/contacts/detail/TargetContactData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/samsung/contacts/detail/TargetContactData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
