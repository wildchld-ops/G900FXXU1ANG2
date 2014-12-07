.class Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;
.super Ljava/lang/Object;
.source "InteractionPickerRCSeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    iput-boolean p2, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->access$502(Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;Z)Z

    iget-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;->val$flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    iget-object v1, v1, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->mSelectedContactHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->setDoneButton(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment$2;->this$0:Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionPickerRCSeFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    return-void
.end method
