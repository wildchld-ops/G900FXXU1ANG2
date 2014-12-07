.class public abstract Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;
.super Ljava/lang/Object;
.source "CallDetailOptionsMenuController.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsEasyMode:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private resetOptionMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1    # Landroid/view/Menu;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected configureCommon(Landroid/view/Menu;)V
    .locals 20
    .param p1    # Landroid/view/Menu;

    const v18, 0x7f080317

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v18, 0x7f080318

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f080319

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v18, 0x7f080314

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v18, 0x7f08031a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const v18, 0x7f08031c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const v18, 0x7f08031d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v18, 0x7f08031e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const v18, 0x7f08031f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const v18, 0x7f080320

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v18, 0x7f080321

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v18, 0x7f08031b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const v18, 0x7f080322

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mIsEasyMode:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/dialer/CallDetailActivity;->canPlaceCallsTo()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/dialer/CallDetailActivity;->getRejectNumberCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/dialer/CallDetailActivity;->isSavedContact()Z

    move-result v18

    if-nez v18, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mIsEasyMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableBlockCallMsg()Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMenuDeleteHistory()Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const-string v18, "RecordingAllowed"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoiceCallRecording()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const-string v18, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogDisplayType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/android/dialer/CallDetailActivity;->isStartedByCover()Z

    move-result v18

    if-nez v18, :cond_5

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    return-void

    :cond_6
    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v4, :cond_8

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_8
    if-lez v4, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableBlockCallMsg()Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_a
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVIPMode()Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_b

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v18

    if-nez v18, :cond_b

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMenuDeleteHistory()Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_c
    const-string v18, "RecordingAllowed"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoiceCallRecording()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_d

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_d
    const-string v18, "SKT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigLogsOpStyleVariation()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/dialer/util/CallLogUtil;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e
    const-string v18, "KOR"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getConfigSpamReport()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/dialer/util/CallLogUtil;->isRoaming(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/CallDetailActivity;

    iget v0, v3, Lcom/android/dialer/CallDetailActivity;->mCallType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    iget v0, v3, Lcom/android/dialer/CallDetailActivity;->mLogType:I

    move/from16 v18, v0

    const/16 v19, 0x12c

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    iget v0, v3, Lcom/android/dialer/CallDetailActivity;->mLogType:I

    move/from16 v18, v0

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_f
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_1
.end method

.method protected configureFlagship(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;

    return-void
.end method

.method protected abstract configureVariation(Landroid/view/Menu;)V
.end method

.method public configureVisibility(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->resetOptionMenu(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->configureCommon(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->configureFlagship(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->configureVariation(Landroid/view/Menu;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/menu/controller/CallDetailOptionsMenuController;->mContext:Landroid/content/Context;

    return-object v0
.end method
