.class public Lcom/android/incallui/cover/CoverCall;
.super Landroid/widget/RelativeLayout;
.source "CoverCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;
.implements Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/cover/CoverCall$2;
    }
.end annotation


# instance fields
.field private final SIM1:I

.field private final SIM2:I

.field private mBackgroundScreen:Landroid/widget/FrameLayout;

.field protected mCallEndTimeBlinkCount:I

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCoverMuteToggleButton:Landroid/widget/ToggleButton;

.field private mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

.field private mCoverToast:Landroid/widget/LinearLayout;

.field private mCoverToastText:Landroid/widget/TextView;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field protected mEndCallString:Ljava/lang/String;

.field protected mEndCallTime:Ljava/lang/String;

.field private mGuideText:Landroid/widget/TextView;

.field protected final mHandler:Landroid/os/Handler;

.field private mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mIndicatorArea:Landroid/view/ViewGroup;

.field private mInset:Landroid/widget/ImageView;

.field private mInsetCover:Landroid/widget/ImageView;

.field private mModifyCallText:Landroid/widget/TextView;

.field protected mMultiTouchDummyStub:Landroid/view/ViewStub;

.field private mNumberIconLabel:Landroid/widget/ImageView;

.field private mPeriodMark:Landroid/widget/ImageView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field protected mPhoto:Landroid/widget/ImageView;

.field protected mPhotoOverlay:Landroid/widget/ImageView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallStateContainer:Landroid/view/ViewGroup;

.field private mPrimaryCdnipNumber:Landroid/widget/TextView;

.field private mPrimaryCnapName:Landroid/widget/TextView;

.field private mPrimaryCnapNameContainer:Landroid/view/View;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

.field private mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mVideoGuideText:Landroid/widget/TextView;

.field private mVideoInCallGuideText:Landroid/widget/TextView;

.field private textAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/incallui/cover/CoverCall;->SIM1:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/cover/CoverCall;->SIM2:I

    iput v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallEndTimeBlinkCount:I

    new-instance v0, Lcom/android/incallui/cover/CoverCall$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/cover/CoverCall$1;-><init>(Lcom/android/incallui/cover/CoverCall;)V

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/cover/CoverCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->dismissPopupWindow()V

    return-void
.end method

.method private checkEasyModeFirstCallEnd()Z
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, v7, :cond_2

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFirstCallPhoneType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWaitingCallPhoneType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v2, v6, :cond_1

    if-ne v3, v6, :cond_1

    move v1, v0

    :cond_0
    :goto_1
    if-nez v2, :cond_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEasyModeFirstCallEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    if-eq v3, v1, :cond_0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    if-eq v3, v7, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    if-eq v2, v1, :cond_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method private checkOtherNetworkIncomingCall()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v0, "Other network incoming call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private dismissPopupWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverToast:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverToast:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private getAssistedDialing(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getAssisted()I

    move-result v6

    if-ne v6, v4, :cond_3

    move v0, v4

    :goto_1
    const/4 v3, 0x0

    const-string v6, "global_network_cdma_gsm_enable"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "assisted_dialing"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v1, v4

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "assisted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " assistedDialing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    :goto_3
    move v5, v4

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3
.end method

.method private getCallStateLabelFromState(ILcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;
    .locals 8

    const v7, 0x7f070200

    const v6, 0x7f07007b

    const/16 v5, 0x14

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    :cond_0
    const/4 v3, 0x1

    if-ne v3, p1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v3, 0x2

    if-eq v3, p1, :cond_1

    const/4 v3, 0x7

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f070081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    if-eq v3, p1, :cond_4

    if-ne v5, p1, :cond_a

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "ims_ui_for_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/incallui/cover/CoverCall;->getAssistedDialing(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0701e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, "display_alerting_title"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v5, p1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f07007c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f070084

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    const/4 v3, 0x6

    if-ne v3, p1, :cond_b

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f07007d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x3

    if-eq v3, p1, :cond_c

    const/4 v3, 0x4

    if-ne v3, p1, :cond_10

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0702b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "ims_ui_for_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f0701ff

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f070201

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v4, 0x7f07007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x8

    if-eq v3, p1, :cond_1

    const/16 v3, 0x9

    if-ne v3, p1, :cond_11

    invoke-virtual {p0, p2}, Lcom/android/incallui/cover/CoverCall;->getCallFailedString(Lcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallString:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getConferenceGroupString()Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    :cond_0
    if-eqz v1, :cond_1

    array-length v2, v1

    iget-object v6, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0702b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGenericString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const v0, 0x7f070083

    :goto_0
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "usa_cdma_concept"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v0, 0x7f07007e

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const v0, 0x7f07007e

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CoverCall"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CoverCall"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private manageAnswer()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->checkOtherNetworkIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallDUOSUIControl;->getInstance()Lcom/android/incallui/InCallDUOSUIControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallDUOSUIControl;->hangUpOtherThenAnswer()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->checkEasyModeFirstCallEnd()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck()V

    goto :goto_0
.end method

.method private managePhotoWidget(ZZZ)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "managePhotoWidget : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhotoOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    const v1, 0x7f020214

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "managePhotoWidget isPersonalPhotoAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhotoOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhotoOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private manageReject()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    return-void
.end method

.method private onFinishInflateAnswerUI()V
    .locals 5

    const v3, 0x7f080014

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_0
    const v3, 0x7f08021a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/RejectCallWithMessageContent;

    iput-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v3, p0}, Lcom/android/incallui/RejectCallWithMessageContent;->setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;)V

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v3, p0}, Lcom/android/incallui/RejectCallWithMessageContent;->setOnAnswerMemoClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;)V

    :cond_1
    const v3, 0x7f080215

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SlidingDrawer;

    iput-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "onFinishInflateAnswerUI : configureRejectCallWithMessageSlidingDrawer"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/cover/CoverCall;->configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/cover/CoverCall;->showRejectCallWithMessage(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onFinishInflateEndUI()V
    .locals 3

    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_0
    return-void
.end method

.method private onFinishInflateInCallUI()V
    .locals 3

    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_0
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mVideoInCallGuideText:Landroid/widget/TextView;

    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private showEndCallView(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    goto :goto_0
.end method

.method private showInCallView(Z)V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showIncomingCallView(Z)V
    .locals 2

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mVideoInCallGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showInternetCallLabel(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallTypeLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallTypeLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPopupWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverToast:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startTextAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPeriodMark:Landroid/widget/ImageView;

    const v1, 0x7f02038c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPeriodMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPeriodMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "cannot startTextAnimation"

    invoke-direct {p0, v0}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopCallEndTimeBlink()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "stopCallEndTimeBlink"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallEndTimeBlinkCount:I

    iput-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallString:Ljava/lang/String;

    return-void
.end method

.method private stopTextAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->textAnimation:Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPeriodMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPeriodMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateEndCallView()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/incallui/cover/CoverCall;->showEndCallView(Z)V

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/incallui/cover/CoverCall;->showIncomingCallView(Z)V

    invoke-direct {p0, v3}, Lcom/android/incallui/cover/CoverCall;->showInCallView(Z)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/cover/CoverCall;->needShowRedial(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v3}, Lcom/android/incallui/cover/CoverCall;->showEndCallView(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/cover/CoverCall;->showEndCallView(Z)V

    goto :goto_0
.end method

.method private updateInCallView()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mVideoInCallGuideText:Landroid/widget/TextView;

    const v1, 0x7f07029f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mVideoInCallGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/incallui/cover/CoverCall;->showInCallView(Z)V

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/incallui/cover/CoverCall;->showIncomingCallView(Z)V

    invoke-direct {p0, v2}, Lcom/android/incallui/cover/CoverCall;->showEndCallView(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mVideoInCallGuideText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/incallui/cover/CoverCall;->showInCallView(Z)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private updateIncomingCallView()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mVideoInCallGuideText:Landroid/widget/TextView;

    const v1, 0x7f0702a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mVideoInCallGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/incallui/cover/CoverCall;->showIncomingCallView(Z)V

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/incallui/cover/CoverCall;->showInCallView(Z)V

    invoke-direct {p0, v2}, Lcom/android/incallui/cover/CoverCall;->showEndCallView(Z)V

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/incallui/cover/CoverCall;->showIncomingCallView(Z)V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private updateScreen(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/incallui/cover/CoverCall;->managePeriodAnimation(I)V

    invoke-virtual {p0}, Lcom/android/incallui/cover/CoverCall;->updateHelpText()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/cover/CoverCall;->updateBgColorForCallState(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/cover/CoverCall;->updateCallButton(I)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/cover/CoverCall;->manageCallEndTimeBlink(I)V

    return-void
.end method


# virtual methods
.method public closeRejectCallWithMsgDrawer()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "closeRejectCallWithMsgDrawer"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    :cond_0
    return-void
.end method

.method public configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v0, p1}, Lcom/android/incallui/RejectCallWithMessageContent;->configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected getCallFailedString(Lcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;
    .locals 6

    const v0, 0x7f070080

    const/4 v5, 0x3

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallFailedString : DisconnectCause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/cover/CoverCall$2;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ko"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f0700c6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallFailedString : card_title_call_ended, curLanguage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const v0, 0x7f070014

    goto :goto_0

    :pswitch_1
    const v0, 0x7f070015

    goto :goto_0

    :pswitch_2
    const v0, 0x7f070016

    goto :goto_0

    :pswitch_3
    const v0, 0x7f070017

    goto :goto_0

    :pswitch_4
    const v0, 0x7f070018

    goto :goto_0

    :pswitch_5
    const v0, 0x7f070019

    goto :goto_0

    :pswitch_6
    const v0, 0x7f07001b

    goto :goto_0

    :pswitch_7
    const v0, 0x7f07001a

    goto :goto_0

    :pswitch_8
    const v0, 0x7f07001c

    goto :goto_0

    :pswitch_9
    const v0, 0x7f07001d

    goto :goto_0

    :pswitch_a
    const v0, 0x7f07001e

    goto :goto_0

    :pswitch_b
    const v0, 0x7f07001f

    goto :goto_0

    :pswitch_c
    const v0, 0x7f070020

    goto :goto_0

    :pswitch_d
    const v0, 0x7f070156

    goto :goto_0

    :pswitch_e
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v1

    if-eq v1, v4, :cond_1

    :cond_2
    const v0, 0x7f070027

    goto :goto_0

    :pswitch_f
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v1

    if-ne v1, v4, :cond_0

    const v0, 0x7f070154

    goto :goto_0

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getIconForLabel(I)I
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIconForLabel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f020114

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f020111

    goto :goto_0

    :sswitch_1
    const v0, 0x7f020112

    goto :goto_0

    :sswitch_2
    const v0, 0x7f020113

    goto :goto_0

    :sswitch_3
    const v0, 0x7f02010e

    goto :goto_0

    :sswitch_4
    const v0, 0x7f02011d

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method manageCallEndTimeBlink(I)V
    .locals 4

    const/16 v3, 0x64

    const/16 v0, 0x9

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallStateLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->stopCallEndTimeBlink()V

    goto :goto_0
.end method

.method managePeriodAnimation(I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->startTextAnimation()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->stopTextAnimation()V

    goto :goto_0
.end method

.method needShowRedial(I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    const-string v2, "20"

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_pcw_enabled"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v4, "20"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v4, v2

    :goto_0
    if-eqz v3, :cond_6

    iget-boolean v2, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    iget v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    sget v6, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    if-eq v5, v6, :cond_0

    iget v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    sget v6, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    if-ne v5, v6, :cond_3

    :cond_0
    move v3, v2

    move v2, v1

    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_5
    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_6
    move v2, v0

    move v3, v1

    goto :goto_1

    :cond_7
    move v4, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->showPopupWindow()V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    iget-object v4, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->showPopupWindow()V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x7f0800fe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;)V

    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mBackgroundScreen:Landroid/widget/FrameLayout;

    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryName:Landroid/widget/TextView;

    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoto:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoto:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/incallui/InCallPhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPhotoView;->setBlurEffect(Z)V

    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInset:Landroid/widget/ImageView;

    const v0, 0x7f0801c5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhotoOverlay:Landroid/widget/ImageView;

    const v0, 0x7f0801c8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f0801b2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallTypeLabel:Landroid/widget/TextView;

    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPeriodMark:Landroid/widget/ImageView;

    const v0, 0x7f0801a8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f080193

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    const v0, 0x7f080184

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mMultiTouchDummyStub:Landroid/view/ViewStub;

    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mVideoGuideText:Landroid/widget/TextView;

    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mModifyCallText:Landroid/widget/TextView;

    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverToast:Landroid/widget/LinearLayout;

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverToastText:Landroid/widget/TextView;

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCnapNameContainer:Landroid/view/View;

    const v0, 0x7f0801b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCnapName:Landroid/widget/TextView;

    :cond_0
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0801b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->onFinishInflateAnswerUI()V

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->onFinishInflateInCallUI()V

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->onFinishInflateEndUI()V

    invoke-virtual {p0}, Lcom/android/incallui/cover/CoverCall;->setCallState()V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v3, v2

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v4, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mCoverSpeakerToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    sget v4, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    iget-object v5, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCoverMuteToggleButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasPutUpDownMotionFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->pokeUserActivity(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800fe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->manageAnswer()V

    goto :goto_0

    :pswitch_2
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->manageReject()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const-string v0, "RIGHT_HANDLE: endCall"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_4
    const-string v0, "LEFT_HANDLE: redial"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/EndCallButtonPresenter;->voiceCallClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    return-void
.end method

.method public rejectWithAnswerMemo()V
    .locals 2

    const-string v0, "rejectWithAnswerMemo "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/cover/CoverCall;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->answeringMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    :cond_1
    return-void
.end method

.method public setBgScreenVisiblity(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mBackgroundScreen:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mBackgroundScreen:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mBackgroundScreen:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallState()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/cover/CoverCall;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/incallui/cover/CoverCall;->updateScreen(I)V

    return-void
.end method

.method public setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/cover/CoverCall;->getCallStateLabelFromState(ILcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisconnectCause "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gateway "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/cover/CoverCall;->updateScreen(I)V

    return-void
.end method

.method protected setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/cover/CoverCall;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method protected setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    if-nez p1, :cond_1

    const-string v1, "view is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V
    .locals 2

    const-string v0, "Setting primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    invoke-direct {p0, p8}, Lcom/android/incallui/cover/CoverCall;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->getConferenceGroupString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p8, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/cover/CoverCall;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/cover/CoverCall;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-virtual {p0, p5}, Lcom/android/incallui/cover/CoverCall;->setPrimaryLabelAsImage(I)V

    invoke-direct {p0, p9}, Lcom/android/incallui/cover/CoverCall;->showInternetCallLabel(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrimary cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_2

    invoke-direct {p0, p7, p8, p11}, Lcom/android/incallui/cover/CoverCall;->managePhotoWidget(ZZZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p6}, Lcom/android/incallui/cover/CoverCall;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p7, p8, p11}, Lcom/android/incallui/cover/CoverCall;->managePhotoWidget(ZZZ)V

    goto :goto_0
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallStateLabel:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallTime:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setPrimaryCdnipNumber(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdnipNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCdnipNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryCnapName(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCnapNameContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cnapName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCnapName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCnapName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCnapName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCnapNameContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCnapNameContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrimaryImage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/cover/CoverCall;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2, v2, p2}, Lcom/android/incallui/cover/CoverCall;->managePhotoWidget(ZZZ)V

    goto :goto_0
.end method

.method public setPrimaryLabelAsImage(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mNumberIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mNumberIconLabel:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/incallui/cover/CoverCall;->getIconForLabel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mNumberIconLabel:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mNumberIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mNumberIconLabel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_0
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoneNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_0
.end method

.method public showAnswermemoRecordingView()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInsetCover:Landroid/widget/ImageView;

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected startCallEndTimeBlink()V
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x0

    const-string v1, "startCallEndTimeBlink"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/cover/CoverCall;->mCallStateLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/cover/CoverCall;->mCallEndTimeBlinkCount:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallTime:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/incallui/cover/CoverCall;->mCallEndTimeBlinkCount:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallTime:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallEndTimeBlinkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallEndTimeBlinkCount:I

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v0, p0, Lcom/android/incallui/cover/CoverCall;->mCallEndTimeBlinkCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallTime:Ljava/lang/String;

    goto :goto_1
.end method

.method public stopAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mInCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mEndCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->removeArrowMsg()V

    :cond_2
    return-void
.end method

.method updateBgColorForCallState(I)V
    .locals 3

    const v2, 0x7f09006b

    const v1, 0x7f090066

    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVoiceCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09006e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCallStateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09006a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09006d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09006c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method updateCallButton(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/cover/CoverCall;->closeRejectCallWithMsgDrawer()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-eq v1, p1, :cond_2

    const/4 v1, 0x4

    if-ne v1, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->updateIncomingCallView()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    if-ne v1, p1, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->updateEndCallView()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/cover/CoverCall;->updateInCallView()V

    goto :goto_0
.end method

.method updateHelpText()V
    .locals 10

    const v9, 0x7f0702a3

    const v8, 0x7f070290

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v1, 0x0

    const-string v0, "%s"

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/cover/CoverCall;->getCallerName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v0

    if-eq v0, v6, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/cover/CoverCall;->getCallerName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isDualConversationState()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->getFirstCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->getFirstCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    if-ne v2, v6, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/cover/CoverCall;->getCallerName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/incallui/cover/CoverCall;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateModifyCallState(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mModifyCallText:Landroid/widget/TextView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    move v0, p1

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mModifyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/cover/CoverCall;->mModifyCallText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
