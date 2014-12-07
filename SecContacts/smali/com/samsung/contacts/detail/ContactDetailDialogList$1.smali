.class Lcom/samsung/contacts/detail/ContactDetailDialogList$1;
.super Ljava/lang/Object;
.source "ContactDetailDialogList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    const v4, 0x7f0e0309

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # getter for: Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$000(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # getter for: Lcom/samsung/contacts/detail/ContactDetailDialogList;->mAdapter:Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$100(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;

    iget-object v3, v3, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;->data:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # invokes: Lcom/samsung/contacts/detail/ContactDetailDialogList;->safeStartActivity(Landroid/content/Intent;)V
    invoke-static {v3, v2}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$200(Lcom/samsung/contacts/detail/ContactDetailDialogList;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    const v4, 0x7f0e0280

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # getter for: Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$000(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # getter for: Lcom/samsung/contacts/detail/ContactDetailDialogList;->mAdapter:Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$100(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;

    iget-object v3, v3, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;->data:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.android.mms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # invokes: Lcom/samsung/contacts/detail/ContactDetailDialogList;->safeStartActivity(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$200(Lcom/samsung/contacts/detail/ContactDetailDialogList;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    const v4, 0x7f0e030a

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # getter for: Lcom/samsung/contacts/detail/ContactDetailDialogList;->mTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$000(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # getter for: Lcom/samsung/contacts/detail/ContactDetailDialogList;->mAdapter:Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;
    invoke-static {v3}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$100(Lcom/samsung/contacts/detail/ContactDetailDialogList;)Lcom/samsung/contacts/detail/ContactDetailDialogListAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;

    iget-object v3, v3, Lcom/samsung/contacts/detail/ContactDetailDialogList$DialogData;->data:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getIpCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/contacts/detail/ContactDetailDialogList$1;->this$0:Lcom/samsung/contacts/detail/ContactDetailDialogList;

    # invokes: Lcom/samsung/contacts/detail/ContactDetailDialogList;->safeStartActivity(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->access$200(Lcom/samsung/contacts/detail/ContactDetailDialogList;Landroid/content/Intent;)V

    goto :goto_0
.end method
