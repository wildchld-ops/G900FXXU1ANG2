.class Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/speeddial/SpeedDialActivity;->doShowSpdlInfo()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mChecked:Z
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$000(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    # invokes: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->setDoNotShowAgainDialog(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z
    invoke-static {v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    const v2, 0x7f0e03d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    # setter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDisplaySpdInfo:Z
    invoke-static {v0, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$302(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Z)Z

    return-void
.end method
