.class Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$3;
.super Ljava/lang/Object;
.source "MyEmergencyInfoEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$3;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$3;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mMyEmergencyInfoEditorFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->access$100(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$3;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    # getter for: Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->mMyEmergencyInfoEditorFragment:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;
    invoke-static {v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;->access$100(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;)Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->onSaveAction()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity$3;->this$0:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
