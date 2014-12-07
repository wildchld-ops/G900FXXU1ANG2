.class public Lcom/google/android/finsky/activities/AppCrashProxy;
.super Landroid/app/Activity;
.source "AppCrashProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppCrashProxy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.feedback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AppCrashProxy;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AppCrashProxy;->finish()V

    return-void
.end method
