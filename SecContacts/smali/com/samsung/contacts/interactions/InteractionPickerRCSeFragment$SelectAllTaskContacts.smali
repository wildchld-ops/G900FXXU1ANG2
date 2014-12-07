.class Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;
.super Landroid/os/AsyncTask;
.source "InteractionPickerRCSeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskContacts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;-><init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->mIsSelectAllTaskRunning:Z
    invoke-static {v2, v3}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->access$902(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Z)Z

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    # invokes: Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->doSelectAllAction(Z)Z
    invoke-static {v2, v1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->access$1000(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "InteractionPickerContactsFragment"

    const-string v1, "SelectAll Task onPostExecute"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    invoke-virtual {v0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    # setter for: Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->mIsSelectAllTaskRunning:Z
    invoke-static {v0, v2}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->access$902(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Z)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskContacts;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
