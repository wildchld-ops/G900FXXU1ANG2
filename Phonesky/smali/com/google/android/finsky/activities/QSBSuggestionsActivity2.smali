.class public Lcom/google/android/finsky/activities/QSBSuggestionsActivity2;
.super Landroid/app/Activity;
.source "QSBSuggestionsActivity2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/QSBSuggestionsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/QSBSuggestionsActivity2;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/QSBSuggestionsActivity2;->finish()V

    return-void
.end method
