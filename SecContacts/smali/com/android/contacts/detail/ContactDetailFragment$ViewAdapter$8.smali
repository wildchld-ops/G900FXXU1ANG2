.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;
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

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0800ee

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumberCount:I
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mDefalutPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v4, v4, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mTypeList:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2600(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v5, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumberList:[Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2700(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v6, v6, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e0309

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->show(Landroid/app/FragmentManager;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0800f0

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumberCount:I
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mDefalutPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getIpCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v4, v4, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mTypeList:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2600(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v5, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumberList:[Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2700(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v6, v6, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e030a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->show(Landroid/app/FragmentManager;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0800f2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumberCount:I
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)I

    move-result v3

    if-ne v3, v5, :cond_6

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v4, v4, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mDefalutPhoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->getSmsIntent(Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v4, v4, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mTypeList:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2600(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v5, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneNumberList:[Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2700(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$8;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v6, v6, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0e0280

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/contacts/detail/ContactDetailDialogList;->show(Landroid/app/FragmentManager;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
