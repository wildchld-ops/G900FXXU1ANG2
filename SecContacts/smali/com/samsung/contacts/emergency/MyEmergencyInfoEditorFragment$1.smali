.class Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$1;
.super Ljava/lang/Object;
.source "MyEmergencyInfoEditorFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->setupEditorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mListener:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->access$000(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mListener:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->access$000(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$1;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->access$100(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;->onUpdateSaveButton(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
