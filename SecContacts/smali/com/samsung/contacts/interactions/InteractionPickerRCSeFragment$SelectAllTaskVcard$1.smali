.class Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;
.super Ljava/lang/Object;
.source "InteractionPickerRCSeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;

.field final synthetic val$mSuccess:Z


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iput-boolean p2, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    # setter for: Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->mIsSelectAllRunning:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->access$702(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    # getter for: Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->access$800(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    # setter for: Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->mIsDoneButtonClicked:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->access$802(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Z)Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->val$mSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;->this$1:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;

    iget-object v0, v0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->onPickerResult()V

    :cond_0
    return-void
.end method
