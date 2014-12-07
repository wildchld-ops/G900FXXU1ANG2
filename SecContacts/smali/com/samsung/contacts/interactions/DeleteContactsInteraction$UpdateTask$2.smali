.class Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;
.super Ljava/lang/Object;
.source "DeleteContactsInteraction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask;->obtainProgressDialog(Landroid/content/Context;)Ljava/lang/ref/WeakReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;->this$0:Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask;

    iput-object p2, p0, Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x1

    # setter for: Lcom/samsung/contacts/interactions/DeleteContactsInteraction;->mCanceled:Z
    invoke-static {v0}, Lcom/samsung/contacts/interactions/DeleteContactsInteraction;->access$002(Z)Z

    iget-object v0, p0, Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/DeleteContactsInteraction$UpdateTask$2;->val$context:Landroid/content/Context;

    const v3, 0x7f0e0396

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    # setter for: Lcom/samsung/contacts/interactions/DeleteContactsInteraction;->mCanceledDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/contacts/interactions/DeleteContactsInteraction;->access$102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
