.class Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;
.super Ljava/lang/Object;
.source "LaunchUrlHandlerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

.field final synthetic val$appStates:Lcom/google/android/finsky/appstate/AppStates;

.field final synthetic val$homeIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;Landroid/content/Intent;Lcom/google/android/finsky/appstate/AppStates;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->val$homeIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->val$homeIntent:Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    iget-object v3, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->val$appStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->handleUrl(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/analytics/FinskyEventLog;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->finish()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Error while processing launch URL"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity$1;->this$0:Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/LaunchUrlHandlerActivity;->finish()V

    throw v2
.end method
