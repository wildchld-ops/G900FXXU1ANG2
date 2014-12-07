.class public Lcom/android/incallui/vt/InPSVTCallMenu;
.super Lcom/android/incallui/vt/InVTCallMenu;
.source "InPSVTCallMenu.java"


# instance fields
.field public isShowingResizeScreen:Z

.field private mDisableOutGoingMenu:Z

.field private mMenuSelected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/InVTCallMenu;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->mMenuSelected:I

    iput-boolean v1, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->mDisableOutGoingMenu:Z

    iput-boolean v1, p0, Lcom/android/incallui/vt/InPSVTCallMenu;->isShowingResizeScreen:Z

    const-string v0, "InPSVTCallMenu constructor..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    return-object v0
.end method

.method private manageHoldMenu(Landroid/view/MenuItem;)V
    .locals 14
    .param p1    # Landroid/view/MenuItem;

    const v13, 0x7f070090

    const/4 v12, 0x7

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    move-object v0, v5

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    if-eqz v4, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v10}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(canHold)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(canSwap)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportHold)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    const-string v7, "feature_ctc"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v7

    if-ne v7, v11, :cond_3

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    if-ne v7, v12, :cond_4

    const v7, 0x7f0702d4

    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_2
    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    invoke-interface {p1, v13}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_6
    if-eqz v6, :cond_8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    if-ne v7, v12, :cond_7

    const v7, 0x7f0702d4

    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_3
    invoke-interface {p1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_7
    invoke-interface {p1, v13}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method private prepareOptionVTMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 11
    .param p1    # Landroid/view/Menu;

    const v10, 0x7f08028f

    const v9, 0x7f08028e

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    const v5, 0x7f08028b

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isDialerOpened()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0204d9

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v5, 0x7f07014c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    const v5, 0x7f0204db

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v5, 0x7f070165

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v5

    sget v6, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {v5, v6}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    return v7

    :pswitch_data_0
    .packed-switch 0x7f08028b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
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


# virtual methods
.method mdmGetAllowCamera()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->getAllowCamera()Z

    move-result v0

    :cond_0
    return v0
.end method

.method mdmIsCameraEnabled(Z)Z
    .locals 2
    .param p1    # Z

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isCameraEnabled()Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1    # Landroid/view/MenuItem;

    const/16 v7, 0x191

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- optionsItemSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

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

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

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

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optionsItemSelected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), but null CallButtonPresenter.getInstance()!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return v6

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

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

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/vt/InVTCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->sendStillImage()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    :cond_1
    :goto_1
    move v6, v5

    goto :goto_0

    :sswitch_1
    const-string v3, "add_vt_hold_in_menu"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->toggleHold()V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f070138

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->sendLiveVideo()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->updateVTCallButtons()V

    goto :goto_1

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallButtonPresenter;->captureSurfaceImage(Z)V

    goto :goto_1

    :sswitch_4
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/CallButtonPresenter;->dialpadClicked(Z)V

    if-eqz v1, :cond_1

    const-string v3, "QCIF"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setVisibleCameraPreview(Z)V

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :sswitch_5
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->showAddUserForConferenceCall()V

    goto :goto_1

    :sswitch_6
    const-string v3, "ims_resize_screen"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/CallCardPresenter;->setResizeChecked(Z)V

    const-string v3, "isShowingResizeScreen changed true"

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-interface {v0, v7, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "ims_resize_screen"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallCardPresenter;->setResizeChecked(Z)V

    const-string v3, "isShowingResizeScreen changed false"

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-interface {v0, v7, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "ims_video_call_mediashare"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->startMediaShare()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f080282 -> :sswitch_0
        0x7f080283 -> :sswitch_2
        0x7f08028b -> :sswitch_4
        0x7f080298 -> :sswitch_1
        0x7f08029b -> :sswitch_3
        0x7f08029c -> :sswitch_6
        0x7f08029d -> :sswitch_7
        0x7f0802a9 -> :sswitch_5
        0x7f0802aa -> :sswitch_8
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 31
    .param p1    # Landroid/view/Menu;

    const-string v29, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v22

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v12

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v29

    if-eqz v29, :cond_1

    if-eqz v3, :cond_0

    const-string v29, "prepareOptionsMenu()...SUPPORT_EASY_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/vt/InPSVTCallMenu;->prepareOptionVTMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v29

    :goto_0
    return v29

    :cond_0
    const/16 v29, 0x0

    goto :goto_0

    :cond_1
    const-string v29, "ims_ui_for_kor"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_4

    if-eqz v3, :cond_2

    invoke-super/range {p0 .. p1}, Lcom/android/incallui/vt/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_2
    :goto_1
    const/4 v11, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_25

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/view/MenuItem;->getItemId()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_3
    :goto_3
    :sswitch_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/android/incallui/vt/InVTCallMenu;->prepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_1

    :sswitch_1
    const v29, 0x7f080298

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const-string v29, "add_vt_hold_in_menu"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    const v29, 0x7f02032e

    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v29, 0x7f070090

    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/incallui/vt/InPSVTCallMenu;->manageHoldMenu(Landroid/view/MenuItem;)V

    goto :goto_3

    :cond_5
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :sswitch_2
    const v29, 0x7f080282

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v29, 0x7f080283

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v29

    if-eqz v29, :cond_7

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->mdmGetAllowCamera()Z

    move-result v29

    if-eqz v29, :cond_6

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/InPSVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v29

    if-nez v29, :cond_3

    :cond_6
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_7
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_3
    if-eqz v3, :cond_3

    const v29, 0x7f080286

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    const-string v29, "ims_ui_for_kor"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_8

    const v29, 0x7f070143

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_8
    const/16 v29, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v29

    if-eqz v29, :cond_9

    const/16 v29, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_9
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_4
    if-eqz v3, :cond_3

    const v29, 0x7f08029b

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_a
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v29

    if-eqz v29, :cond_b

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_b
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_5
    if-eqz v3, :cond_3

    const v29, 0x7f08028a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    const-string v29, "use_snote_string"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    const v29, 0x7f0700fc

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_c
    :goto_4
    const-string v29, "in_call_menu_memo_enable"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_d
    const-string v29, "use_action_memo_string"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    const v29, 0x7f070100

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_4

    :sswitch_6
    if-eqz v3, :cond_3

    const v29, 0x7f08007c

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->showMessageMenu()Z

    move-result v29

    if-eqz v29, :cond_e

    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_e
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_7
    if-eqz v3, :cond_3

    const v29, 0x7f08028b

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v29

    if-eqz v29, :cond_f

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_f
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/vt/InVTCallMenu;->isDialerOpened()Z

    move-result v29

    if-eqz v29, :cond_10

    const v29, 0x7f0204d9

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v29, 0x7f07014c

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_10
    const v29, 0x7f0204db

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v29, 0x7f070165

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_8
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/incallui/CallButtonPresenter;->isIncomingVTSperkerMode()Z

    move-result v29

    if-nez v29, :cond_11

    const/4 v15, 0x1

    :goto_5
    const v29, 0x7f08028c

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    const v29, 0x7f08028d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    if-eqz v15, :cond_13

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v29

    sget v30, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_11
    const/4 v15, 0x0

    goto :goto_5

    :cond_12
    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_13
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v29

    sget v30, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v29 .. v30}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v29

    if-nez v29, :cond_14

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v29

    sget v30, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-virtual/range {v29 .. v30}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v29

    if-eqz v29, :cond_15

    :cond_14
    const/4 v7, 0x1

    :goto_6
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/incallui/CallButtonPresenter;->getIncomingVTSpeakerState()Z

    move-result v29

    if-eqz v29, :cond_16

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_7
    if-eqz v7, :cond_3

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_15
    const/4 v7, 0x0

    goto :goto_6

    :cond_16
    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    :sswitch_9
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v29

    sget v30, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual/range {v29 .. v30}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v29

    if-eqz v29, :cond_17

    const v29, 0x7f08028e

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v29, 0x7f08028f

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_17
    const v29, 0x7f08028e

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    const/16 v30, 0x1

    invoke-interface/range {v29 .. v30}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v29, 0x7f08028f

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_a
    const v29, 0x7f0802a9

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const-string v29, "ims_conference_call"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1b

    const-string v29, "feature_lgt"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1a

    if-eqz v3, :cond_18

    const/16 v29, 0x200

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v29

    if-eqz v29, :cond_18

    const/4 v13, 0x1

    :goto_8
    if-eqz v13, :cond_19

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_18
    const/4 v13, 0x0

    goto :goto_8

    :cond_19
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1a
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1b
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :sswitch_b
    const/4 v14, 0x0

    const/16 v23, 0x0

    const/4 v8, 0x0

    const-string v29, "ims_resize_screen"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1f

    if-eqz v3, :cond_1f

    const-string v29, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1c

    const-string v29, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    :cond_1c
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v29

    if-nez v29, :cond_1f

    const/4 v14, 0x1

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/vt/InPSVTCallMenu;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v29

    if-eqz v29, :cond_1d

    const/4 v8, 0x1

    :cond_1d
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v29

    if-eqz v29, :cond_1e

    const/16 v23, 0x1

    :cond_1e
    const v29, 0x7f08029d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const v29, 0x7f08029c

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    if-eqz v14, :cond_20

    if-eqz v23, :cond_20

    const/16 v29, 0x1

    :goto_a
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v14, :cond_21

    if-eqz v23, :cond_21

    if-eqz v8, :cond_21

    const/16 v29, 0x1

    :goto_b
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-eqz v14, :cond_22

    if-nez v23, :cond_22

    const/16 v29, 0x1

    :goto_c
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v14, :cond_23

    if-nez v23, :cond_23

    if-eqz v8, :cond_23

    const/16 v29, 0x1

    :goto_d
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_1f
    const/4 v14, 0x0

    goto :goto_9

    :cond_20
    const/16 v29, 0x0

    goto :goto_a

    :cond_21
    const/16 v29, 0x0

    goto :goto_b

    :cond_22
    const/16 v29, 0x0

    goto :goto_c

    :cond_23
    const/16 v29, 0x0

    goto :goto_d

    :sswitch_c
    const-string v29, "ims_video_call_mediashare"

    invoke-static/range {v29 .. v29}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMediaSharePossible()Z

    move-result v29

    if-eqz v29, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveHDVideoCall()Z

    move-result v29

    if-eqz v29, :cond_3

    const v29, 0x7f0802aa

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMediaShareEnabled()Z

    move-result v29

    if-eqz v29, :cond_24

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v29, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_24
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_25
    const/16 v29, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f08007c -> :sswitch_6
        0x7f080282 -> :sswitch_0
        0x7f080283 -> :sswitch_2
        0x7f080286 -> :sswitch_3
        0x7f08028a -> :sswitch_5
        0x7f08028b -> :sswitch_7
        0x7f08028c -> :sswitch_0
        0x7f08028d -> :sswitch_8
        0x7f08028e -> :sswitch_0
        0x7f08028f -> :sswitch_9
        0x7f080298 -> :sswitch_1
        0x7f08029b -> :sswitch_4
        0x7f08029c -> :sswitch_b
        0x7f08029d -> :sswitch_0
        0x7f0802a9 -> :sswitch_a
        0x7f0802aa -> :sswitch_c
    .end sparse-switch
.end method
