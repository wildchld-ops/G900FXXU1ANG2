.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorial3.java"


# static fields
.field private static final FOCUS_PADDING:F

.field private static final FONT_COLOR:I

.field private static final FONT_SIZE:I

.field private static final HELP_MODE_POPUP_LANDSCAPE_X:F

.field private static final HELP_MODE_POPUP_LANDSCAPE_Y:F

.field private static final HELP_MODE_POPUP_PORTRAIT_X:F

.field private static final HELP_POPUP_HEIGHT:F

.field private static final HELP_POPUP_PADDING:[F

.field private static final HELP_POPUP_PADDING_OFFSET:F

.field private static final HELP_POPUP_PICKER_PADDING:F

.field private static final HELP_POPUP_WIDTH:[F

.field private static final HELP_TEXT_HEIGHT:F

.field private static final HELP_TEXT_HEIGHT_MARGIN:F

.field private static final HELP_TEXT_WIDTH:[F

.field private static final HELP_TEXT_WIDTH_MARGIN:F

.field private static final HELP_TEXT_WIDTH_MARGIN_POSITION:F

.field public static final LAST_STEP:I = 0x3

.field private static final MODE_FOCUS_X:F

.field private static final MODE_FOCUS_Y:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLTutorialMode"


# instance fields
.field public STEP_NUM:I

.field public blinkAnimation:Landroid/view/animation/Animation;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mHelpFocus:Lcom/sec/android/glview/TwGLImage;

.field private mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

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

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    const v0, 0x7f090007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    const v0, 0x7f0901d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN:F

    const v0, 0x7f0901d7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN_POSITION:F

    const v0, 0x7f0901d9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT_MARGIN:F

    new-array v0, v6, [F

    const v1, 0x7f0901da

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f0901db

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    const v0, 0x7f0901dd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    const v0, 0x7f0901d3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_X:F

    const v0, 0x7f0901d4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    const v0, 0x7f0901d5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_PORTRAIT_X:F

    new-array v0, v6, [F

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT_MARGIN:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    const v0, 0x7f0901ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

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

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    const v0, 0x7f0901cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FOCUS_PADDING:F

    const v0, 0x7f09001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FOCUS_PADDING:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_X:F

    const v0, 0x7f09001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FOCUS_PADDING:F

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_Y:F

    const v0, 0x7f0a0038

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_COLOR:I

    const v0, 0x7f0901df

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING_OFFSET:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 10

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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

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

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH_MARGIN_POSITION:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT_MARGIN:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020312

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->blinkAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020315

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep1()V

    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public hideHelpTutorial()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    :cond_4
    return-void
.end method

.method public onHelpTts()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setSizeForOrientation(I)V

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onOrientationChanged(I)V

    return-void
.end method

.method public setHelpText(I)V
    .locals 13

    const/4 v12, 0x2

    const/high16 v11, 0x40000000

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b027f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v11

    sub-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    div-float/2addr v5, v11

    add-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    aget v4, v4, v12

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING_OFFSET:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PADDING:[F

    aget v5, v5, v12

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_PICKER_PADDING:F

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    :pswitch_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0280

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_X:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_X:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v4, v4, v9

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_LANDSCAPE_Y:F

    sub-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_PORTRAIT_X:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    div-float/2addr v4, v11

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v8, v3, v4}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_MODE_POPUP_PORTRAIT_X:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    sget-object v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    sub-float/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v8}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v9

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v9

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v9

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    :pswitch_5
    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v8

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v2, v0, v3, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v3, v3, v8

    int-to-float v4, v1

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v3, v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setSizeForOrientation(I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v5

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v5

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->FONT_SIZE:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_WIDTH:[F

    aget v2, v2, v6

    int-to-float v3, v0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_WIDTH:[F

    aget v2, v2, v6

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_POPUP_HEIGHT:F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->HELP_TEXT_HEIGHT:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setOrientation(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStep1()V
    .locals 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_X:F

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_Y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->MODE_FOCUS_Y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->SCREEN_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStep2()V
    .locals 3

    const/4 v1, 0x4

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpFocus:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopupPicker:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setHelpText(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpPopup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xcb

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    return-void
.end method

.method public setStep3()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public setStepHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->mHelpViewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    :cond_0
    return-void
.end method
