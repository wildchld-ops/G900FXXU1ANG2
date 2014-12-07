.class Lcom/android/phone/EmergencyDialer$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$000(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    const-string v0, "missing_phone_lock"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.android.phone.Emergencydialer.MISSING_PHONE_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EmergencyDialer"

    const-string v1, "COMMAND_MISSINGPHONE_UNLOCK - StatusBarManager.DISABLE _NONE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    # setter for: Lcom/android/phone/EmergencyDialer;->mMissingPhoneLock:Z
    invoke-static {v0, v2}, Lcom/android/phone/EmergencyDialer;->access$002(Lcom/android/phone/EmergencyDialer;Z)Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$100(Lcom/android/phone/EmergencyDialer;)Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$1;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
