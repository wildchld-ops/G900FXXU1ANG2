.class public Lcom/android/settings/fingerprint/FingerprintDisclaimer;
.super Landroid/app/Activity;
.source "FingerprintDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field isFidoInstalled:Z

.field isForODE:Z

.field isKioskMode:Z

.field private mCancel:Landroid/widget/Button;

.field private mContinue:Landroid/widget/Button;

.field private mDoNotShow:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field mFingerprintIndex:I

.field private mLeftSideView:Landroid/view/View;

.field private mOwnName:Ljava/lang/String;

.field mPreviousStage:Ljava/lang/String;

.field private mRightSideView:Landroid/view/View;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isKioskMode:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFidoInstalled:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    return-void
.end method

.method private makeFingerPrintDescString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.noknok.android.framework.service"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFidoInstalled:Z

    const-string v0, "&#8226 "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09177b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isKioskMode:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09176b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09179a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFidoInstalled:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0917a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "VZW"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09177a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_disclaimer_noti"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerIndex"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ownName"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "for_ode"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b01fd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-static {p0, v3}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isKioskModeEnabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isKioskMode:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    const-string v3, "previousStage"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    const-string v3, "fingerIndex"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    const-string v3, "ownName"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    const-string v3, "for_ode"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "FingerprintDisclaimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[previousStage] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FingerprintDisclaimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mOwnName] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FingerprintDisclaimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fingerIndex] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_disclaimer_noti"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerIndex"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "ownName"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v1, "for_ode"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f0400b4

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setContentView(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b01fb

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    const v0, 0x7f0b01ff

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    :cond_4
    const v0, 0x7f0b01fc

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->makeFingerPrintDescString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0170

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v0, 0x7f0b01fe

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mContinue:Landroid/widget/Button;

    const v0, 0x7f0b01fd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mContinue:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
