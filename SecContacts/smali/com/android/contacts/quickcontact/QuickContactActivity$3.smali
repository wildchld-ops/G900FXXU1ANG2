.class Lcom/android/contacts/quickcontact/QuickContactActivity$3;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/ContactLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/ContactLoader;->cacheResult()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->getClassNameOfBaseActivity()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
