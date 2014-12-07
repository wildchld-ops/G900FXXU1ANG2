.class public Lcom/android/incallui/CallCardFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "CallCardFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ModifyCallListener;
.implements Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardFragmentManager$1;,
        Lcom/android/incallui/CallCardFragmentManager$CallCardMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/CallCardFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$WindowStatusChangeListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationChangeListener;",
        "Lcom/android/incallui/InCallPresenter$ModifyCallListener;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field currentFragment:Lcom/android/incallui/CallCardFragment;

.field private mIsCoverClosed:Z

.field private mIsMultiWindowMode:Z

.field private mOrientation:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    iput v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    const-string v0, "CallCardFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->INVALID:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

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

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method


# virtual methods
.method public checkAndHideFragment(Ljava/lang/Enum;)V
    .locals 2
    .param p1    # Ljava/lang/Enum;

    sget-object v0, Lcom/android/incallui/CallCardFragmentManager$1;->$SwitchMap$com$android$incallui$CallCardFragmentManager$CallCardMode:[I

    check-cast p1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

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

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->CALLCARD_COVER:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->hideCurrentFragment()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-eq v0, v1, :cond_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v1, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    if-eq v0, v1, :cond_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->hideCurrentFragment()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1
    .param p1    # Z

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/CallCardFragment;
    .locals 17
    .param p1    # Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v15}, Landroid/app/Activity;->isDestroyed()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v8

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v7

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    const-string v15, "feature_chn_duos"

    invoke-static {v15}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v9, 0x1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v15

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v15, v0, :cond_d

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_d

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    const/4 v10, 0x1

    :cond_3
    :goto_1
    if-eqz v10, :cond_12

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QCIF_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    :goto_2
    const-string v15, "automatic_answering_machine"

    invoke-static {v15}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isCoverClosed "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    if-eqz v15, :cond_5

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->CALLCARD_COVER:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    :cond_5
    const-string v15, "feature_skt_tphone"

    invoke-static {v15}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isTPhoneMode()Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v6, :cond_6

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EMPTY:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v15}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v15, v2}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->getProperOrientation(Landroid/content/res/Configuration;)I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "forceUpdate : mOrientation - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", config.orientation - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", getProperOrientation - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;Z)V

    const/16 p1, 0x1

    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mFragmentType : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " requestedMode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", forceUpdate : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/incallui/BaseFragmentManager;->log(Ljava/lang/String;)V

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v15, v14, :cond_9

    :cond_8
    iget v15, v2, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/incallui/CallCardFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/incallui/BaseFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v15

    if-nez v15, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v15

    if-eqz v15, :cond_f

    :cond_e
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    const/4 v10, 0x1

    :cond_f
    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getVideoResolution()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    const/4 v11, 0x1

    goto :goto_3

    :cond_11
    const/4 v12, 0x1

    goto :goto_3

    :cond_12
    if-eqz v11, :cond_13

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->QVGA_VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_13
    if-eqz v12, :cond_14

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VIDEO:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_14
    if-eqz v7, :cond_16

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v15

    if-nez v15, :cond_15

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_15
    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->DRIVE_LINK_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_16
    if-eqz v8, :cond_17

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->EASY_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    if-eqz v15, :cond_18

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON_MULTI:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_18
    if-eqz v9, :cond_19

    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_MULTISIM:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2

    :cond_19
    sget-object v14, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;->VOICE_COMMON:Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    goto/16 :goto_2
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/CallCardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    return-object v0
.end method

.method public hideCurrentFragment()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragmentManager;->getFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsCoverClosed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

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

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

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
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/services/telephony/common/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallCardFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onIncomingModifyCall(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onResultModifyCallRequest(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/CallList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method public onWindowStatusChanged(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragmentManager;->mIsMultiWindowMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallCardFragmentManager;->checkAndSet(Z)Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0
    .param p1    # Lcom/android/incallui/BaseFragment;

    check-cast p1, Lcom/android/incallui/CallCardFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->setCurrentFragment(Lcom/android/incallui/CallCardFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p1    # Lcom/android/incallui/CallCardFragment;

    iput-object p1, p0, Lcom/android/incallui/CallCardFragmentManager;->currentFragment:Lcom/android/incallui/CallCardFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4
    .param p1    # Ljava/lang/Enum;
    .param p2    # Z

    const v0, 0x7f080128

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/CallCardFragmentManager$1;->$SwitchMap$com$android$incallui$CallCardFragmentManager$CallCardMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/CallCardFragmentManager$CallCardMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragmentManager;->checkAndHideFragment(Ljava/lang/Enum;)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/BaseFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/incallui/CallCardVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/incallui/CallCardMwVoiceFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardMwVoiceFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/incallui/CallCardMultiSimFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardMultiSimFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/CallCardDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;

    invoke-direct {v1}, Lcom/android/incallui/drivelink/CallCardMWDriveLinkFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/incallui/CallCardQcifVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardQcifVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/incallui/CallCardQvgaVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardQvgaVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardVideoFragment;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/android/incallui/CallCardCoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardCoverFragment;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/android/incallui/CallCardEasyFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardEasyFragment;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v1, Lcom/android/incallui/CallCardEmptyFragment;

    invoke-direct {v1}, Lcom/android/incallui/CallCardEmptyFragment;-><init>()V

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
    .end packed-switch
.end method
