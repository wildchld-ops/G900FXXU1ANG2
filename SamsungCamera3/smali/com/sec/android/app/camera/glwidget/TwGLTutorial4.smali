.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorial4.java"


# static fields
.field private static final DUAL_BUTTON_POS_X:I

.field private static final DUAL_MENU_HEIGHT:I

.field private static final DUAL_PIP_FOCUS_X:I

.field private static final DUAL_PIP_FOCUS_X_NORMAL:I

.field private static final DUAL_PIP_FOCUS_Y:I

.field private static final FONT_COLOR:I

.field private static final FONT_SIZE:I

.field private static final HELP_POPUP_HEIGHT:F

.field private static final HELP_POPUP_PADDING:[F

.field private static final HELP_POPUP_PICKER_PADDING:F

.field private static final HELP_POPUP_UP_OFFSET:F

.field private static final HELP_POPUP_WIDTH:[F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_MARGIN:F

.field private static final HELP_TEXT_WIDTH:[F

.field private static final HELP_TEXT_WIDTH_MARGIN:F

.field private static final HELP_TEXT_WIDTH_OFFSET:F

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field public static final LAST_STEP:I = 0x8

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SHUTTER_FOCUS_X:I

.field private static final SHUTTER_FOCUS_Y:I

.field private static final SHUTTER_PADDING:I

.field private static final SWITCHCAMERA_BUTTON_POS_X:I

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorialDual"


# instance fields
.field public STEP_NUM:I

.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

.field private mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/high16 v5, 0x40000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    const v0, 0x7f0901d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const v0, 0x7f0901d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

    new-array v0, v6, [F

    const v1, 0x7f0901da

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0901db

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const v0, 0x7f0901dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    const v0, 0x7f0901dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    const v0, 0x7f0901ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    const v0, 0x7f0901cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    const v1, 0x7f0901d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0901d1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f0901d2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const v0, 0x7f0a0038

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_COLOR:I

    const v0, 0x7f09016a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_MENU_HEIGHT:I

    const v0, 0x7f0901cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_PADDING:I

    const v0, 0x7f0901c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_PADDING:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_X:I

    const v0, 0x7f090017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f0901c7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_PADDING:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_Y:I

    const v0, 0x7f09001e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SWITCHCAMERA_BUTTON_POS_X:I

    const v0, 0x7f09001f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    const v0, 0x7f0901c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X:I

    const v0, 0x7f0901c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X_NORMAL:I

    const v0, 0x7f0901ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_Y:I

    const v0, 0x7f090011

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    const v0, 0x7f090012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 10
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f19999a

    const v2, 0x3f851eb8

    const v3, 0x3f19999a

    const v4, 0x3f851eb8

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020314

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020313

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->blinkAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020315

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02030e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02030f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02030c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02030d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setStep1()V

    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .param p1    # F
    .param p2    # F

    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public drawResizeGuide(IIII)V
    .locals 11
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v10, 0x0

    const/4 v9, 0x4

    add-int v3, p2, p3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    sub-int/2addr v7, p1

    add-int v4, v7, p3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sub-int/2addr v7, p4

    add-int v1, p2, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    sub-int/2addr v7, p1

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sub-int/2addr v8, p4

    add-int v2, v7, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v5, v3, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    int-to-float v8, p2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    int-to-float v9, p3

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v5, v4, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    add-int/lit8 v8, p1, 0x0

    int-to-float v8, v8

    int-to-float v9, p3

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :cond_2
    if-ne v5, v1, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    int-to-float v8, p2

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    add-int/lit8 v9, p4, 0x0

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0

    :cond_3
    if-ne v5, v2, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    add-int/lit8 v8, p1, 0x0

    int-to-float v8, v8

    add-int/lit8 v9, p4, 0x0

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1    # F
    .param p2    # F

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideHelpTutorial()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    :cond_4
    return-void
.end method

.method public hideHelpView()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setSizeForOrientation(I)V

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public setHelpText(I)V
    .locals 11
    .param p1    # I

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0281

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :goto_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    :pswitch_3
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0282

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    :goto_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    :pswitch_6
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    :pswitch_7
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0283

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    :goto_3
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_9
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0284

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    :goto_4
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    add-float/2addr v7, v8

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    :pswitch_c
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_4

    :pswitch_d
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0285

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_5

    :goto_5
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_UP_OFFSET:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v8, v3, -0x1

    int-to-float v8, v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PADDING:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_e
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_5

    :pswitch_f
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v6, v3

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_5

    :pswitch_10
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v5, 0x7f0b0286

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v4

    packed-switch v4, :pswitch_data_6

    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x0

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x3

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_X:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_6

    :pswitch_12
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_MARGIN:F

    const/high16 v6, 0x40000000

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_d
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 9
    .param p1    # I

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v7

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v7

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v8, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v5, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH_OFFSET:F

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    :cond_7
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-ne v1, v8, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_9

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    if-eq v1, v6, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStep1()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStep2()V
    .locals 6

    const/high16 v5, 0x40000000

    const/4 v4, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SWITCHCAMERA_BUTTON_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->ITEM_WIDTH:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStep3()V
    .locals 7

    const/high16 v6, 0x40000000

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020315

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_X_NORMAL:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_PIP_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto/16 :goto_0
.end method

.method public setStep5(IIII)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v1, 0x4

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->drawResizeGuide(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStep6()V
    .locals 7

    const/high16 v6, 0x40000000

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw1:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw3:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpDraw4:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020315

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStep7()V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020310

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->DUAL_MENU_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStep8()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020312

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->SHUTTER_FOCUS_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker2:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcc

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStep_complete()V
    .locals 3

    const/4 v1, 0x4

    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method
