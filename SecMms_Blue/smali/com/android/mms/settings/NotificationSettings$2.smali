.class Lcom/android/mms/settings/NotificationSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/NotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/NotificationSettings$2;->this$0:Lcom/android/mms/settings/NotificationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings$2;->this$0:Lcom/android/mms/settings/NotificationSettings;

    # invokes: Lcom/android/mms/settings/NotificationSettings;->setVibrateMenu()V
    invoke-static {v0}, Lcom/android/mms/settings/NotificationSettings;->access$200(Lcom/android/mms/settings/NotificationSettings;)V

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings$2;->this$0:Lcom/android/mms/settings/NotificationSettings;

    # invokes: Lcom/android/mms/settings/NotificationSettings;->setPreferenceSummary()V
    invoke-static {v0}, Lcom/android/mms/settings/NotificationSettings;->access$300(Lcom/android/mms/settings/NotificationSettings;)V

    :cond_0
    return-void
.end method
