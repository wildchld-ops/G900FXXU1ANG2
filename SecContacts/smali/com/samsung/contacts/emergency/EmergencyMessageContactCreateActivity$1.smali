.class Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$1;
.super Ljava/lang/Object;
.source "EmergencyMessageContactCreateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity$1;->this$0:Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;

    # invokes: Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->setDoneButtonEnabled()V
    invoke-static {v0}, Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;->access$000(Lcom/samsung/contacts/emergency/EmergencyMessageContactCreateActivity;)V

    return-void
.end method
