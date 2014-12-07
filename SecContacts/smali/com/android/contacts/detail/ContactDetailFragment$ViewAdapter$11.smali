.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$11;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$11;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$11;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$11;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v1, v1, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/contacts/detail/FaceTaggedPhotoInfo;->intent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0
.end method
