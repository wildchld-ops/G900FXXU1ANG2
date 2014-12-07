.class Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;
.super Ljava/lang/Object;
.source "BusinesscardListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->addSelectAllHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    # getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1700(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    # getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$2500(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    # getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1700(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->deselectAll()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    # getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$2600(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    # getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$2500(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    # getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1700(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    move-result-object v0

    # invokes: Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->updateSelectionMenu()V
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->access$000(Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$3;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListFragment;

    # getter for: Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->mActionModeCallback:Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment;->access$1700(Lcom/samsung/contacts/businesscard/BusinesscardListFragment;)Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/businesscard/BusinesscardListFragment$ActionModeCallback;->selectAll()V

    goto :goto_0
.end method
