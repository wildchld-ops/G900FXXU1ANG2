.class public Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLModeDescription.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;
    }
.end annotation


# static fields
.field private static final CONTENT_HEIGHT:F

.field private static final CONTENT_POS_X:[F

.field private static final CONTENT_WIDTH:[F

.field private static final DESCRIPTION_FONT_COLOR:I

.field private static final DESCRIPTION_FONT_SIZE:I

.field private static final DESCRIPTION_GROUP_PADDING_HEIGHT:[F

.field private static final DESCRIPTION_GROUP_POS_X:[F

.field private static final DESCRIPTION_GROUP_POS_Y:[F

.field private static final DESCRIPTION_GROUP_WIDTH:[F

.field private static final DESCRIPTION_LINE_HEIGHT:F

.field private static final DESCRIPTION_OFFSET_Y:F

.field private static final DESCRIPTION_TEXT_SHADOW_OFFSET:I

.field private static final DESCRIPTION_TIMEOUT:I = 0x1b58

.field private static final TEXT_STROKE_COLOR:I

.field private static final TEXT_STROKE_WIDTH:I

.field private static final TITLE_DESCRIPTION_PADDING:F

.field private static final TITLE_FONT_SIZE:I

.field private static final TITLE_HEIGHT:F

.field private static final TITLE_POS_Y:[F


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionFontSize:I

.field private mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mHideDescription:Ljava/lang/Runnable;

.field public mIsDescriptionHidedByTimeOut:Z

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleFontSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [F

    const v1, 0x7f090053

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f090054

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f090055

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f090056

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    const v0, 0x7f09005d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    const v0, 0x7f09005e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_OFFSET_Y:F

    const v0, 0x7f09005f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    new-array v0, v6, [F

    const v1, 0x7f090059

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f09005a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f090059

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f09005a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    new-array v0, v6, [F

    const v1, 0x7f09005b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f09005c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f09005b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f09005c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_DESCRIPTION_PADDING:F

    add-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    new-array v0, v6, [F

    const v1, 0x7f09004b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f09004c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f09004d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f09004e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    new-array v0, v6, [F

    const v1, 0x7f09004f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f090050

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f090051

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f090052

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    new-array v0, v6, [F

    const v1, 0x7f090057

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f090058

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f090057

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f090058

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    new-array v0, v6, [F

    const v1, 0x7f090060

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f090061

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    const v1, 0x7f090060

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v4

    const v1, 0x7f090061

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const v0, 0x7f0a0032

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_FONT_SIZE:I

    const v0, 0x7f0a001d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_WIDTH:I

    const v0, 0x7f080001

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_COLOR:I

    const v0, 0x7f0a0033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    const v0, 0x7f080010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_COLOR:I

    const v0, 0x7f0a001a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_TEXT_SHADOW_OFFSET:I

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_FONT_SIZE:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitleFontSize:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setCurrentLocaleDescriptionText()V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitleFontSize:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_OFFSET_Y:F

    add-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    const-string v6, ""

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    const-string v0, "ar"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ur"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_TEXT_SHADOW_OFFSET:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setShadowOffset(FF)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    sub-float v3, p5, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    add-float/2addr v3, p5

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_X:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_POS_Y:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLModeDescription$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0202df

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    return-object v0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x155

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b005a

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v2

    if-eq v2, v4, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->getSavedUserSettingValues(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b006a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b006c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b005d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b005b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b005c

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b005e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0066

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b005f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_2
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_12
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_8
        :pswitch_14
        :pswitch_0
        :pswitch_11
        :pswitch_9
        :pswitch_e
        :pswitch_13
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public hideDescription()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    :cond_0
    return v3
.end method

.method public setCurrentLocaleDescriptionText()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a002b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitleFontSize:I

    const v1, 0x7f0a002c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    :goto_0
    return-void

    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_FONT_SIZE:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitleFontSize:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_FONT_SIZE:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    goto :goto_0
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;I)V

    return-void
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;I)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->showDescription()V

    return-void

    :pswitch_0
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v4, v4, v8

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v8

    int-to-float v6, v2

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v8

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v5, v5, v8

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v6, v6, v8

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    neg-float v5, v5

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v5, 0x7f0202df

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_0

    :pswitch_1
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v4, v4, v10

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v10

    int-to-float v6, v2

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v10

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v5, v5, v10

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v5, v5, v10

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v5, v5, v10

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v6, v6, v10

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4, v9, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v5, 0x7f0202de

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_0

    :pswitch_2
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v4, v4, v12

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v12

    int-to-float v6, v2

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v12

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v5, v5, v12

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v6, v6, v12

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v5, 0x7f0202e0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_0

    :pswitch_3
    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v4, v4, v11

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionFontSize:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v11

    int-to-float v6, v2

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_WIDTH:[F

    aget v5, v5, v11

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v5, v5, v11

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v5, v5, v11

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->TITLE_POS_Y:[F

    aget v6, v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {v4, v9, v5}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v5, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    aget v5, v5, v11

    sget-object v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:[F

    aget v6, v6, v11

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v5, v2, -0x1

    neg-int v5, v5

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v5, 0x7f0202dd

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showDescription()V
    .locals 5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mIsDescriptionHidedByTimeOut:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeDescription;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
