.class public Lcom/google/android/vending/verifier/PackageVerificationActivity;
.super Landroid/app/Activity;
.source "PackageVerificationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkBackportPrerequisites()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_0

    const-string v1, "Skipping verification. Unexpected SDK=%d"

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageVerificationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "package_verifier_enable"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    const-string v1, "Skipping verification. Disabled by user setting"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/config/G;->antiMalwareActivityEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Skipping verification. Disabled by Gservices"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/installer/InstallPolicies;->hasNetwork()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Skipping verification. Network inactive"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/google/android/vending/verifier/PackageVerificationActivity;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/vending/verifier/PackageVerificationActivity;->checkBackportPrerequisites()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Verification requested through action=%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "com.google.android.vending.verifier.extra.FROM_VERIFICATION_ACTIVITY"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/PackageVerificationActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/PackageVerificationActivity;->sendToPackageInstaller(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "Unexpected action %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method sendToPackageInstaller(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;

    const-string v0, "com.android.packageinstaller"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.packageinstaller"

    const-string v2, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
