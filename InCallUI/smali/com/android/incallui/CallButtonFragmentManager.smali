.class public Lcom/android/incallui/CallButtonFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "CallButtonFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonFragmentManager$1;,
        Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/CallButtonFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private ONE_HAND_ENABLED:Ljava/lang/String;

.field currentFragment:Lcom/android/incallui/CallButtonFragment;

.field private mIsCoverClosed:Z

.field private mIsMultiWindowMode:Z

.field private mOrientation:I

.field private mShowDialpad:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-string v0, "onehand_dialer_enabled"

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->ONE_HAND_ENABLED:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsCoverClosed:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonFragmentManager;->mShowDialpad:Z

    iput v1, p0, Lcom/android/incallui/CallButtonFragmentManager;->mOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->currentFragment:Lcom/android/incallui/CallButtonFragment;

    const-string v0, "CallButtonFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->INVALID:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    iput-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addWindowStatusListener(Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method public checkAndHideFragment(Ljava/lang/Enum;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/CallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$CallButtonFragmentManager$CallButtonMode:[I

    check-cast p1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const-string v0, "clear_cover_check_fragment"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_COVER:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->hideCurrentFragment()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    if-eq v0, v1, :cond_0

    :pswitch_5
    const-string v0, "clear_cover_check_fragment"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->hideCurrentFragment()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;
    .locals 14

    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Landroid/app/Activity;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Landroid/app/Activity;->isDestroyed()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    :goto_0
    return-object v12

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v9

    iget-boolean v4, p0, Lcom/android/incallui/CallButtonFragmentManager;->mShowDialpad:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v12

    const/16 v13, 0x9

    if-eq v12, v13, :cond_b

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_b

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v6, 0x1

    :cond_2
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCallUiMode: Easy mode is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", OneHand is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", DriveLink mode is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", High quality VT is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", QCIF VT is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", QVGA VT is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Keypad status is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Z)V

    const-string v12, "support_easy_mode"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    if-eqz v3, :cond_16

    if-eqz v8, :cond_10

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    :goto_2
    iget-boolean v12, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsCoverClosed:Z

    if-eqz v12, :cond_3

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_COVER:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    :cond_3
    const-string v12, "feature_skt_tphone"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v2, :cond_4

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_EMPTY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    :cond_4
    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v12, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v10

    iget v12, p0, Lcom/android/incallui/CallButtonFragmentManager;->mOrientation:I

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v12, v13, :cond_5

    iget v12, p0, Lcom/android/incallui/CallButtonFragmentManager;->mOrientation:I

    iget-object v13, p0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v13, v0}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v13

    if-eq v12, v13, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "forceUpdate : mOrientation - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/incallui/CallButtonFragmentManager;->mOrientation:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", config.orientation - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", getProperOrientation - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mFragmentType : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " requestedMode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", forceUpdate : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_6

    iget-object v12, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v12, v11, :cond_7

    :cond_6
    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    iput v12, p0, Lcom/android/incallui/CallButtonFragmentManager;->mOrientation:I

    invoke-virtual {p0, v11, p1}, Lcom/android/incallui/CallButtonFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v11, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_7
    iget-object v12, p0, Lcom/android/incallui/CallButtonFragmentManager;->currentFragment:Lcom/android/incallui/CallButtonFragment;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_d

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_d

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v12

    if-eqz v12, :cond_d

    :cond_c
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v6, 0x1

    :cond_d
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_f

    const/4 v7, 0x1

    goto :goto_3

    :cond_f
    const/4 v8, 0x1

    goto :goto_3

    :cond_10
    if-eqz v6, :cond_11

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_11
    if-eqz v7, :cond_12

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_12
    if-eqz v9, :cond_14

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v12

    if-nez v12, :cond_13

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_13
    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_14
    if-eqz v4, :cond_15

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_EASY_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_15
    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_EASY:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_16
    if-eqz v9, :cond_18

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v12

    if-nez v12, :cond_17

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_17
    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_DRIVE_LINK_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_18
    if-eqz v8, :cond_19

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_19
    if-eqz v6, :cond_1a

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QCIF_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_1a
    if-eqz v7, :cond_1b

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_QVGA_VIDEO:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_1b
    iget-boolean v12, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsMultiWindowMode:Z

    if-nez v12, :cond_1d

    if-eqz v4, :cond_1c

    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON_KEYPAD:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_1c
    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2

    :cond_1d
    sget-object v11, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;->IN_CALL_VOICE_COMMON_MULTI:Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    goto/16 :goto_2
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/CallButtonFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->currentFragment:Lcom/android/incallui/CallButtonFragment;

    return-object v0
.end method

.method public hideCurrentFragment()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/CallButtonFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->mOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsCoverClosed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragmentManager;->mShowDialpad:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeWindowStatusListener(Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationChangeListener(Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallButtonFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method public onWindowStatusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragmentManager;->mIsMultiWindowMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragmentManager;->setCurrentFragment(Lcom/android/incallui/CallButtonFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallButtonFragmentManager;->currentFragment:Lcom/android/incallui/CallButtonFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f08012a

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/CallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$CallButtonFragmentManager$CallButtonMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/CallButtonFragmentManager$CallButtonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragmentManager;->checkAndHideFragment(Ljava/lang/Enum;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/BaseFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/InCallButtonVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/InCallButtonEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/InCallButtonDrivingFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonDrivingFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/InCallButtonDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/InCallButtonMWDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/InCallButtonVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/incallui/InCallButtonVideoEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVideoEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/android/incallui/InCallButtonQcifVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/android/incallui/InCallButtonQcifVideoEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQcifVideoEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v1, Lcom/android/incallui/InCallButtonQvgaVideoEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonQvgaVideoEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v1, Lcom/android/incallui/InCallButtonMwVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonMwVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v1, Lcom/android/incallui/InCallButtonVoiceDialpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonVoiceDialpadFragment;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance v1, Lcom/android/incallui/InCallButtonEasyDialpadFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonEasyDialpadFragment;-><init>()V

    goto :goto_0

    :pswitch_e
    new-instance v1, Lcom/android/incallui/InCallButtonCoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonCoverFragment;-><init>()V

    goto :goto_0

    :pswitch_f
    new-instance v1, Lcom/android/incallui/InCallButtonEmptyFragment;

    invoke-direct {v1}, Lcom/android/incallui/InCallButtonEmptyFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public updateCallButtonFragment(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    const-string v1, "CallButtonFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallButtonFragment showDialpad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
