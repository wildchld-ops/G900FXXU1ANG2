.class Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

.field final synthetic val$shareIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    iput-object p2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;->val$shareIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;->val$shareIntent:Landroid/content/Intent;

    const v3, 0x7f0e033f

    invoke-static {v1, v2, v3}, Lcom/samsung/contacts/util/ChooserUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback$2;->this$1:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    iget-object v1, v1, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileListFragment;->finishActionMode()V

    return-void
.end method
