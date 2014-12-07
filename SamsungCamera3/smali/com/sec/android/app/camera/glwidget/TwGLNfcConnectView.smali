.class public Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLNfcConnectView.java"


# static fields
.field private static final FULL_SCREEN_HEIGHT:I

.field private static final FULL_SCREEN_WIDTH:I

.field private static final NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

.field private static final NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

.field private static final NFC_CONNECTING_CANCEL_BTN_WIDTH:I

.field private static final NFC_CONNECTING_CANCEL_BTN_X:I

.field private static final NFC_CONNECTING_CANCEL_BTN_Y:I

.field private static final NFC_CONNECTING_IMAGE_HEIGHT:I

.field private static final NFC_CONNECTING_IMAGE_WIDTH:I

.field private static final NFC_CONNECTING_IMAGE_X:I

.field private static final NFC_CONNECTING_IMAGE_Y:I

.field private static final NFC_CONNECTING_MESSAGE_FONT_SIZE:I

.field private static final NFC_CONNECTING_MESSAGE_HEIGHT:I

.field private static final NFC_CONNECTING_MESSAGE_WIDTH:I

.field private static final NFC_CONNECTING_MESSAGE_X:I

.field private static final NFC_CONNECTING_MESSAGE_Y:I

.field private static final TAG:Ljava/lang/String; = "TwGLNfcConnectView"


# instance fields
.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    const v0, 0x7f0901a7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    const v0, 0x7f0901a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    const v0, 0x7f0901a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_WIDTH:I

    const v0, 0x7f0901aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_HEIGHT:I

    const v0, 0x7f0901ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    const v0, 0x7f0901ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    const v0, 0x7f0901ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    const v0, 0x7f0901ae

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    const v0, 0x7f0a0025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_FONT_SIZE:I

    const v0, 0x7f0901af

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    const v0, 0x7f0901b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    const v0, 0x7f0901b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_WIDTH:I

    const v0, 0x7f0901b2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    const v0, 0x7f0a0026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11

    const/high16 v10, 0x1040000

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->FULL_SCREEN_HEIGHT:I

    int-to-float v5, v2

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020369

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const v7, 0x7f0202e6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0b01c1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_MESSAGE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v9, v9}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0203c3

    const v7, 0x7f0203c5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->NFC_CONNECTING_CANCEL_BTN_FONT_SIZE:I

    int-to-float v2, v2

    const v3, 0x7f080019

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method


# virtual methods
.method public hideNfcConnectView()V
    .locals 2

    const-string v0, "TwGLNfcConnectView"

    const-string v1, "hideNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public onBack()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->resetNfcConnectView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3

    const-string v0, "TwGLNfcConnectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_0

    const-string v0, "TwGLNfcConnectView"

    const-string v1, "mButton onClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->resetNfcConnectView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method public resetNfcConnectView()V
    .locals 2

    const-string v0, "TwGLNfcConnectView"

    const-string v1, "resetNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->setEnableDirectConnect(Z)V

    return-void
.end method

.method public showNfcConnectView()V
    .locals 2

    const-string v0, "TwGLNfcConnectView"

    const-string v1, "showNfcConnectView"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNfcConnectView;->mNfcConnectView:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method
