.class public Lcom/android/incallui/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static ONE_HAND_ENABLED:Ljava/lang/String;


# instance fields
.field private mChatOnID:Ljava/lang/String;

.field private mContactIdForChatOn:I

.field protected mContext:Landroid/content/Context;

.field private mIsMenuOpen:Z

.field private mParticipantUri:Ljava/lang/String;

.field private menu:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/incallui/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mChatOnID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallMenu;->mContactIdForChatOn:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method private IsActiveRcsFT()Z
    .locals 11

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/incallui/rcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/incallui/rcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_0
    if-eqz v7, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v8, :cond_1

    move-object v8, v6

    :cond_1
    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v7}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    const-string v2, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-static {v0, v2}, Lcom/android/incallui/rcs/RcsShareUI;->IsOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private canCallTransfer()Z
    .locals 7

    const/16 v6, 0x1000

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v4, "support_call_transfer"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallMenu;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallMenu;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    goto :goto_0
.end method

.method private canManagerConference()Z
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v5, 0x80

    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private canMerge()Z
    .locals 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v6, 0x80

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    :cond_0
    :goto_0
    const-string v6, "ims_rcs"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v4

    or-int/2addr v5, v4

    :cond_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private checkCurrentSimSlot()I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v2

    :cond_0
    return v2
.end method

.method private getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private handleMenuSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->openTelephonySetting()V

    return-void
.end method

.method private handleOneHandMode()V
    .locals 0

    return-void
.end method

.method private isManageConferencePanelVisible()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isManageConferencePanelVisible()Z

    move-result v0

    return v0
.end method

.method private launchChatON()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mChatOnID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "launchChatON() : mChatOnID is null"

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "launchChatON "

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private launchMemo(Landroid/content/Context;)V
    .locals 3

    const-string v1, "com.samsung.android.app.memo"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->launchDuringCallMemoCliked()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSamsungAppsPackageInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0700fb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/incallui/InCallUtils;->showDownloadAppDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0701e7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private launchRcsFileTransfer()V
    .locals 5

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.rcs"

    const-string v4, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const v3, 0x7f0701a3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FT Failed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeRequestRemoteControl()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "samsung.intent.action.scsservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "master"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private manageHoldMenu(Landroid/view/MenuItem;)V
    .locals 10

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v6, :cond_0

    move-object v0, v6

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    if-eqz v5, :cond_1

    move-object v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v7

    iget-object v8, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    const-string v8, "feature_ctc"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_3
    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_4

    const v8, 0x7f0702d4

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v8, "dcm_disable_call_hold_in_emergency"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    const v8, 0x7f070090

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_9

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_8

    const v8, 0x7f0702d4

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_3
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_8
    const v8, 0x7f070090

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method private openTelephonySetting()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 14

    const v13, 0x7f020465

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :pswitch_0
    const v9, 0x7f0802b9

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0802b8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v9, 0x7f020478

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v9, 0x7f020479

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v9, "mute_menu_in_easy_mode"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_0

    move v9, v10

    :goto_2
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    move v9, v11

    goto :goto_2

    :cond_1
    invoke-interface {v8, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_1
    const v9, 0x7f0802b6

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v9, 0x7f0802b7

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v1, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v9, "bt_menu_in_easy_mode"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v9

    sget v12, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {v9, v12}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v9

    sget v12, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {v9, v12}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v2, :cond_2

    move v9, v10

    :goto_3
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v9, v11

    goto :goto_3

    :cond_3
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_4
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_5
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x7f0802b6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showAddCall()Z
    .locals 9

    const/16 v8, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v3, :cond_3

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->canMerge()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v2, :cond_2

    move v5, v6

    :cond_0
    :goto_0
    const-string v6, "voice_call_recording"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "voice_call_recording_menu"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_1
    const-string v6, "ims_rcs"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v4

    or-int/2addr v5, v4

    :cond_1
    return v5

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->canMerge()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v2, :cond_4

    move v5, v6

    :goto_2
    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private showChatOnMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private showContactMenu()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "in_call_menu_contact_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showMessageMenu()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "menu_message"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "in_call_menu_message_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private showOneHandMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public isCallDead(Lcom/android/services/telephony/common/Call;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMenuOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return v0
.end method

.method public mergeClicked()V
    .locals 2

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->mergeMultiSim(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->merge()V

    goto :goto_0
.end method

.method public muteClicked(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    return-void
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- optionsItemSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  title: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/incallui/rcs/RcsShareUI;->unRegisterRcsObserver(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), but null mContext!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (MenuItem = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->manageConferenceButtonClicked()V

    :goto_1
    move v1, v2

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->launchContactsClicked()V

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->launchMessageClicked()V

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallMenu;->launchMemo(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->toggleRecord()V

    goto :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->toggleHold()V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->swapClicked()V

    goto :goto_1

    :sswitch_8
    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolBtn()V

    goto :goto_1

    :sswitch_9
    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleNoiseReduction()V

    goto :goto_1

    :sswitch_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->goSoundEQDialog()V

    goto :goto_1

    :sswitch_b
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->launchChatON()V

    goto :goto_1

    :sswitch_c
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_1

    :sswitch_d
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->performSimServices()V

    goto :goto_1

    :sswitch_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.bst.uimdual"

    const-string v4, "com.samsung.bst.uimdual.RegisterCardInfo"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_f
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->performCallTransfer()V

    goto :goto_1

    :sswitch_10
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_1

    :sswitch_11
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->mergeClicked()V

    goto :goto_1

    :sswitch_12
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->handleOneHandMode()V

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallMenu;->muteClicked(Z)V

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallMenu;->muteClicked(Z)V

    goto/16 :goto_1

    :sswitch_15
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->makeRequestRemoteControl()V

    goto/16 :goto_1

    :sswitch_16
    const-string v1, " Menu : Select camera on"

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_17
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->showAddUserForConferenceCall()V

    goto/16 :goto_1

    :sswitch_18
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->handleMenuSettings()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080024 -> :sswitch_6
        0x7f080025 -> :sswitch_7
        0x7f08002f -> :sswitch_0
        0x7f08007c -> :sswitch_3
        0x7f080188 -> :sswitch_8
        0x7f08028a -> :sswitch_4
        0x7f080296 -> :sswitch_11
        0x7f080297 -> :sswitch_1
        0x7f0802ae -> :sswitch_f
        0x7f0802af -> :sswitch_2
        0x7f0802b0 -> :sswitch_5
        0x7f0802b1 -> :sswitch_5
        0x7f0802b2 -> :sswitch_a
        0x7f0802b3 -> :sswitch_9
        0x7f0802b4 -> :sswitch_b
        0x7f0802b5 -> :sswitch_c
        0x7f0802b6 -> :sswitch_10
        0x7f0802b7 -> :sswitch_10
        0x7f0802b8 -> :sswitch_13
        0x7f0802b9 -> :sswitch_14
        0x7f0802ba -> :sswitch_12
        0x7f0802bb -> :sswitch_d
        0x7f0802bc -> :sswitch_e
        0x7f0802bd -> :sswitch_16
        0x7f0802be -> :sswitch_17
        0x7f0802bf -> :sswitch_15
        0x7f0802c0 -> :sswitch_18
    .end sparse-switch
.end method

.method public performCallTransfer()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performCallTransfer, callId =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCommandClient;->explicitCallTransfer(I)V

    :cond_0
    return-void
.end method

.method public performSimServices()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.start_main_activity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 48

    const-string v45, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v45, "ims_rcs"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_0

    const/16 v45, 0x2

    invoke-static/range {v45 .. v45}, Lcom/android/incallui/rcs/RcsShareUI;->registerRcsObserver(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v32

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v32, :cond_3

    move-object/from16 v8, v32

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    invoke-static {v9}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v16

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v45

    if-eqz v45, :cond_4

    const/16 v35, 0x0

    const-string v45, "mute_menu_in_easy_mode"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_1

    const-string v45, "bt_menu_in_easy_mode"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/InCallMenu;->prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v35

    :cond_2
    :goto_1
    return v35

    :cond_3
    move-object v8, v3

    goto :goto_0

    :cond_4
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v45

    move/from16 v0, v45

    if-ge v15, v0, :cond_2d

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Landroid/view/MenuItem;->getItemId()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_5
    :goto_3
    :sswitch_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :sswitch_1
    const v45, 0x7f0802b9

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    const v45, 0x7f0802b8

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const/16 v45, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_2
    const v45, 0x7f0802af

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    const v45, 0x7f02047a

    move-object/from16 v0, v21

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showContactMenu()Z

    move-result v45

    if-eqz v45, :cond_6

    const/16 v45, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    const/16 v45, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_3
    const v45, 0x7f080296

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const v45, 0x7f02048c

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_4
    const v45, 0x7f08002f

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    const v45, 0x7f020476

    move-object/from16 v0, v23

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v45, "onscreen_manage_conference"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->canManagerConference()Z

    move-result v45

    if-eqz v45, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->isManageConferencePanelVisible()Z

    move-result v45

    if-nez v45, :cond_7

    const/16 v45, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_7
    const/16 v45, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_5
    const v45, 0x7f080297

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v45, 0x7f02046b

    move/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showAddCall()Z

    move-result v45

    if-eqz v45, :cond_8

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_8
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_6
    const v45, 0x7f0802b0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v39

    const v45, 0x7f0802b1

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v40

    const v45, 0x7f020482

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v45, 0x7f020483

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v45, "voice_call_recording_menu"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v22

    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v45

    if-nez v45, :cond_b

    const/16 v45, 0x1

    :goto_4
    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v45

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    :goto_5
    const-string v45, "automatic_answering_machine"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/incallui/InCallPresenter;->getAnsMemoRecorderMgr()Lcom/android/incallui/AnswerMemoRecorderManager;

    move-result-object v33

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v45

    if-nez v45, :cond_a

    invoke-virtual/range {v33 .. v33}, Lcom/android/incallui/AnswerMemoRecorderManager;->isRecording()Z

    move-result v45

    if-eqz v45, :cond_5

    :cond_a
    const/16 v45, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_b
    const/16 v45, 0x0

    goto :goto_4

    :cond_c
    const/16 v45, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :sswitch_7
    const v45, 0x7f08007c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    const v45, 0x7f02046c

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showMessageMenu()Z

    move-result v45

    if-eqz v45, :cond_d

    const/16 v45, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_d
    const/16 v45, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_8
    const v45, 0x7f08028a

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    const v45, 0x7f020477

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v45, "use_snote_string"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_f

    const v45, 0x7f0700fc

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_e
    :goto_6
    const-string v45, "in_call_menu_memo_enable"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_f
    const-string v45, "use_action_memo_string"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_e

    const v45, 0x7f070100

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_6

    :sswitch_9
    const v45, 0x7f0802b4

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const v45, 0x7f02047f

    move/from16 v0, v45

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showChatOnMenu()Z

    move-result v45

    if-eqz v45, :cond_10

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_10
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_a
    const v45, 0x7f0802b5

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v45, 0x7f020473

    move/from16 v0, v45

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v45, "ims_rcs"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_13

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v45

    if-eqz v45, :cond_12

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->IsActiveRcsFT()Z

    move-result v45

    if-eqz v45, :cond_11

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_11
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_12
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_13
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_b
    const v45, 0x7f0802b2

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v44

    const v45, 0x7f02046e

    invoke-interface/range {v44 .. v45}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isVoiceCallEqInstalled()Z

    move-result v45

    if-eqz v45, :cond_15

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v45

    if-eqz v45, :cond_14

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_14
    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_15
    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_c
    const v45, 0x7f080024

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v45, 0x7f02032e

    move/from16 v0, v45

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/InCallMenu;->manageHoldMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_3

    :sswitch_d
    const v45, 0x7f080025

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v41

    const v45, 0x7f020347

    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_e
    const v45, 0x7f080188

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    const-string v45, "extra_volume"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_18

    const-string v45, "show_extra_volume_in_call_card"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_18

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isExtraVolOn()Z

    move-result v45

    if-eqz v45, :cond_16

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_7
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v45

    if-eqz v45, :cond_17

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_16
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_17
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_18
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_f
    const v45, 0x7f0802b3

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    const/16 v45, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_10
    const v45, 0x7f0802bb

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v38

    const v45, 0x7f020481

    move-object/from16 v0, v38

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v37, 0x0

    const-string v45, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_1a

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_19

    const-string v45, "gsm.STK_SETUP_MENU"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    :cond_19
    :goto_8
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "simService - "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    if-eqz v37, :cond_1c

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v45

    if-lez v45, :cond_1c

    const/16 v45, 0x1

    :goto_9
    move-object/from16 v0, v38

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1a
    const-string v45, "feature_multisim"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_1b

    const-string v45, "gsm.STK_SETUP_MENU"

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->checkCurrentSimSlot()I

    move-result v46

    invoke-static/range {v45 .. v46}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto :goto_8

    :cond_1b
    const-string v45, "gsm.STK_SETUP_MENU"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto :goto_8

    :cond_1c
    const/16 v45, 0x0

    goto :goto_9

    :sswitch_11
    const v45, 0x7f0802bc

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v43

    const v45, 0x7f020481

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v45, "feature_chn_duos_cdma_gsm"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-nez v45, :cond_1d

    const-string v45, "ctc_dual_mode_single_phone_byqc"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_21

    :cond_1d
    const-string v45, "gsm.UTK_SETUP_MENU"

    invoke-static/range {v45 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1e

    const/16 v42, 0x0

    :cond_1e
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "uimService - "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    if-eqz v42, :cond_1f

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v45

    if-lez v45, :cond_1f

    const/16 v45, 0x1

    :goto_a
    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, " UIM - "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    if-eqz v42, :cond_20

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v45

    if-lez v45, :cond_20

    const/16 v45, 0x1

    :goto_b
    move-object/from16 v0, v46

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1f
    const/16 v45, 0x0

    goto :goto_a

    :cond_20
    const/16 v45, 0x0

    goto :goto_b

    :cond_21
    const/16 v45, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_12
    const v45, 0x7f0802ae

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v45, 0x7f02046d

    move/from16 v0, v45

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->canCallTransfer()Z

    move-result v45

    if-eqz v45, :cond_22

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_22
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v45, v0

    if-eqz v45, :cond_5

    const v45, 0x7f0802bf

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    const-string v46, "remote_control_call"

    const/16 v47, 0x0

    invoke-static/range {v45 .. v47}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    const/16 v45, 0x1

    move/from16 v0, v36

    move/from16 v1, v45

    if-lt v0, v1, :cond_23

    const/16 v45, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_23
    const/16 v45, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_14
    const v45, 0x7f0802b6

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v45, 0x7f0802b7

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const-string v45, "ims_rcs"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_27

    const v45, 0x7f020465

    move/from16 v0, v45

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v45, 0x7f020465

    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/rcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v45

    if-eqz v45, :cond_26

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v45

    sget v46, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v45 .. v46}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v45

    if-eqz v45, :cond_25

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v45

    sget v46, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v45 .. v46}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v45

    if-eqz v45, :cond_24

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_24
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_25
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_26
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_27
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_15
    const v45, 0x7f0802ba

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->showOneHandMenu()Z

    move-result v45

    if-eqz v45, :cond_28

    const/16 v45, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_28
    const/16 v45, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_16
    const v45, 0x7f0802bd

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    if-eqz v31, :cond_5

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_17
    const v45, 0x7f0802be

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const-string v45, "ims_voice_conference"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_2c

    const-string v45, "feature_lgt"

    invoke-static/range {v45 .. v45}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v45

    if-eqz v45, :cond_2b

    if-eqz v3, :cond_29

    const/16 v45, 0x200

    move/from16 v0, v45

    invoke-virtual {v3, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v45

    if-eqz v45, :cond_29

    const/16 v17, 0x1

    :goto_c
    if-eqz v17, :cond_2a

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_29
    const/16 v17, 0x0

    goto :goto_c

    :cond_2a
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2b
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2c
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_18
    const v45, 0x7f0802c0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    if-eqz v10, :cond_5

    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2d
    const/16 v35, 0x1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f080024 -> :sswitch_c
        0x7f080025 -> :sswitch_d
        0x7f08002f -> :sswitch_4
        0x7f08007c -> :sswitch_7
        0x7f080188 -> :sswitch_e
        0x7f08028a -> :sswitch_8
        0x7f080296 -> :sswitch_3
        0x7f080297 -> :sswitch_5
        0x7f0802ae -> :sswitch_12
        0x7f0802af -> :sswitch_2
        0x7f0802b0 -> :sswitch_0
        0x7f0802b1 -> :sswitch_6
        0x7f0802b2 -> :sswitch_b
        0x7f0802b3 -> :sswitch_f
        0x7f0802b4 -> :sswitch_9
        0x7f0802b5 -> :sswitch_a
        0x7f0802b6 -> :sswitch_0
        0x7f0802b7 -> :sswitch_14
        0x7f0802b8 -> :sswitch_1
        0x7f0802b9 -> :sswitch_1
        0x7f0802ba -> :sswitch_15
        0x7f0802bb -> :sswitch_10
        0x7f0802bc -> :sswitch_11
        0x7f0802bd -> :sswitch_16
        0x7f0802be -> :sswitch_17
        0x7f0802bf -> :sswitch_13
        0x7f0802c0 -> :sswitch_18
    .end sparse-switch
.end method

.method public setMenuOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return-void
.end method

.method public setTransferFileOption(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    const v2, 0x7f0802b5

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public swapClicked()V
    .locals 2

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->swapMultiSim(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->swap()V

    goto :goto_0
.end method
