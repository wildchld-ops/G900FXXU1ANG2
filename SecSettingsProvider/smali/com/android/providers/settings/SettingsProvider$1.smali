.class Lcom/android/providers/settings/SettingsProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/settings/SettingsProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-virtual {v1, v0}, Lcom/android/providers/settings/SettingsProvider;->onUserRemoved(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    # invokes: Lcom/android/providers/settings/SettingsProvider;->deleteDatabasetoReset(I)V
    invoke-static {v1, v3}, Lcom/android/providers/settings/SettingsProvider;->access$200(Lcom/android/providers/settings/SettingsProvider;I)V

    :cond_1
    return-void
.end method
