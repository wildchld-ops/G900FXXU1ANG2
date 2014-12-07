.class Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BusinesscardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/businesscard/BusinesscardListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/businesscard/BusinesscardListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/businesscard/BusinesscardListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reason"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/businesscard/BusinesscardListActivity$1;->this$0:Lcom/samsung/contacts/businesscard/BusinesscardListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
