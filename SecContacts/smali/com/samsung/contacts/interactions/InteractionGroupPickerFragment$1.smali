.class Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$1;
.super Ljava/lang/Object;
.source "InteractionGroupPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    # getter for: Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->access$000(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    # getter for: Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;
    invoke-static {v1}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->access$100(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->addAllGroup()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$1;->this$0:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->removeAllGroup()V

    goto :goto_0
.end method
