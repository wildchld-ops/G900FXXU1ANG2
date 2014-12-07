.class public Lcom/android/launcher2/guide/ViewAppsGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "ViewAppsGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewAppsGuider"

.field static image:Landroid/widget/ImageView;

.field static layout:Landroid/view/ViewGroup;

.field static menuLayout:Landroid/view/View;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGoalAnimationView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/launcher2/guide/ViewAppsGuider;->mActivity:Landroid/app/Activity;

    const-string v0, "ViewAppsGuider"

    const-string v1, "Viewappsguider"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isPortOrientation()Z
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/guide/ViewAppsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    sget-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_1
    const/4 v3, 0x0

    sput-object v3, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    goto :goto_0
.end method

.method public bridge synthetic finish()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->dismissHelpDialog()V

    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->showHelpDialog()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 28

    sget-object v25, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v26, "change_wallpaper"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x1

    sput v25, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    :cond_0
    const/4 v13, 0x0

    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    if-eqz v8, :cond_2

    invoke-static {v4}, Lcom/android/launcher2/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v25

    sput-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    const-string v25, "layout_inflater"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v25, 0x7f030019

    sget-object v26, Lcom/android/launcher2/guide/ViewAppsGuider;->layout:Landroid/view/ViewGroup;

    const/16 v27, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    sput-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v25, 0x7f0d0147

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f080046

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    sput-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f080046

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/guide/ViewAppsGuider;->mGoalAnimationView:Landroid/view/View;

    new-instance v5, Lcom/android/launcher2/guide/HelpAnimatedDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/guide/ViewAppsGuider;->mGoalAnimationView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v5, v4, v0}, Lcom/android/launcher2/guide/HelpAnimatedDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f080048

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f080027

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v25, -0x2

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getHotseatItemcount()I

    move-result v13

    sget-object v25, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v26, "add_widgets"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    const v25, 0x7f0d0226

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const v25, 0x7f0d0227

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d002f

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v25, 0x7f0d0030

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v25, 0x7f0d002e

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0031

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f080025

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->start()V

    const v25, 0x3f4ccccd

    const v26, 0x3f4ccccd

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->startZoom(FFLandroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    sget-object v25, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v26, "change_wallpaper"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    const v25, 0x7f0d0037

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const v25, 0x7f0d0038

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0034

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v25, 0x7f0d0035

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v25, 0x7f0d0033

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0036

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/guide/ViewAppsGuider;->isPortOrientation()Z

    move-result v25

    if-nez v25, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x320

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    :cond_5
    const v25, 0x7f0d0146

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v25, 0x7f0d0148

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v25, "ViewAppsGuider"

    const-string v26, "HotSeatItems Cannot be null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1
    const v25, 0x7f0d0022

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0152

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0151

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_2
    const v25, 0x7f0d0023

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0150

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d014f

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x320

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    const v25, 0x7f0d025f

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    const v25, 0x7f0d014e

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d014d

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x320

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    const v25, 0x7f0d025f

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const v25, 0x7f0d014c

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d014b

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_5
    const v25, 0x7f0d014a

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0149

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_6
    const v25, 0x7f0d0231

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0230

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_7
    const v25, 0x7f0d025e

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d025d

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_8
    const v25, 0x7f0d025c

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d025b

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v0

    const/16 v26, 0x258

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->menuLayout:Landroid/view/View;

    const v26, 0x7f080025

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_9
    const-string v25, "ViewAppsGuider"

    const-string v26, "HotSeatItems Cannot be null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_a
    const v25, 0x7f0d024a

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const v25, 0x7f0d0152

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v25, 0x7f0d0250

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0151

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_b
    const v25, 0x7f0d024b

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const v25, 0x7f0d0150

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v25, 0x7f0d0251

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d014f

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_c
    const v25, 0x7f0d024c

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const v25, 0x7f0d014e

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v25, 0x7f0d0252

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d014d

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_d
    const v25, 0x7f0d024d

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const v25, 0x7f0d014c

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v25, 0x7f0d0253

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d014b

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_e
    const v25, 0x7f0d024e

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const v25, 0x7f0d014a

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v25, 0x7f0d0254

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0149

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_f
    const v25, 0x7f0d024f

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    const v25, 0x7f0d0231

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v25, 0x7f0d0255

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v25, 0x7f0d0230

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    sget-object v25, Lcom/android/launcher2/guide/ViewAppsGuider;->image:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
