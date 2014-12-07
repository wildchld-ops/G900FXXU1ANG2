.class public Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLTutorialModeDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;
    }
.end annotation


# static fields
.field private static final CONTENT_HEIGHT:F

.field private static final CONTENT_POS_X:F

.field private static final CONTENT_POS_Y:F

.field private static final CONTENT_WIDTH:[F

.field private static final DESCRIPTION_FONT_COLOR:I

.field private static final DESCRIPTION_FONT_SIZE:I

.field private static final DESCRIPTION_GROUP_PADDING_HEIGHT:F

.field private static final DESCRIPTION_GROUP_WIDTH:[F

.field private static final DESCRIPTION_IMAGE_X:[F

.field private static final DESCRIPTION_IMAGE_Y:[F

.field private static final DESCRIPTION_LINE_HEIGHT:F

.field private static final MODE_ITEM_WIDTH:F

.field private static final MODE_TITLE_FONT_COLOR:I

.field private static final MODE_TITLE_FONT_SIZE:I

.field private static final MODE_TITLE_HEIGHT:F

.field private static final MODE_TITLE_POS_Y:F

.field private static final TITLE_FONT_SIZE:I

.field private static final TITLE_HEIGHT:F

.field private static final TITLE_POS_X:[F

.field private static final TITLE_POS_Y:F

.field private static final TITLE_WIDTH:[F


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mImageTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitle:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [F

    const v1, 0x7f0901e0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0901e1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_X:[F

    const v0, 0x7f0901e2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:F

    new-array v0, v4, [F

    const v1, 0x7f0901e4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0901e5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_WIDTH:[F

    const v0, 0x7f0901e3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    const v0, 0x7f0901e6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    const v0, 0x7f0901e8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:F

    const v0, 0x7f0901e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_Y:F

    new-array v0, v4, [F

    const v1, 0x7f0901ea

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0901eb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_Y:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    new-array v0, v4, [F

    const v1, 0x7f0901ec

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0901ed

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const v0, 0x7f0901e7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    new-array v0, v4, [F

    const v1, 0x7f0901ee

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0901ef

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    new-array v0, v4, [F

    const v1, 0x7f0901f0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f0901f1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    const v0, 0x7f090031

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_ITEM_WIDTH:F

    const v0, 0x7f090042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_TITLE_HEIGHT:F

    const v0, 0x7f090044

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_TITLE_POS_Y:F

    const v0, 0x7f0a0032

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_FONT_SIZE:I

    const v0, 0x7f0a0033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    const v0, 0x7f080006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_COLOR:I

    const v0, 0x7f0a0030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_TITLE_FONT_SIZE:I

    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_TITLE_FONT_COLOR:I

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

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_POS_Y:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_POS_Y:F

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    sub-float v3, p5, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    add-float/2addr v3, p5

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    const v3, 0x7f090007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    sget-object v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0x7f020345

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_TITLE_POS_Y:F

    add-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_ITEM_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_TITLE_HEIGHT:F

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_TITLE_FONT_SIZE:I

    int-to-float v7, v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->MODE_TITLE_FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImageTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImageTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImageTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    return-object v0
.end method


# virtual methods
.method public setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;I)V

    return-void
.end method

.method public setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;I)V
    .locals 13
    .param p1    # Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .param p2    # I

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-static {v1}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x155

    if-ne v1, v8, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v2, v4, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    iget-object v7, v4, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iget v3, v4, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->iconId:I

    :cond_1
    :goto_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8, v7}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8, v0}, Lcom/sec/android/glview/TwGLImage;->setImageResources(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImageTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8, v7}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->showDescription()V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v3

    packed-switch v1, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v8

    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/MenuDimController;->getSavedUserSettingValues(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0056

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_2
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b005a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_3
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0058

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_4
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b005e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_5
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0060

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0057

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_6
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0067

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_7
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0069

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_8
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b006a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_9
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b006b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_a
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b006c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_b
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0062

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_c
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b005d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_d
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b005b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_e
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b005c

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_f
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0063

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_10
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0066

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_11
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b005f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_12
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0059

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_13
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0064

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_14
    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v9, 0x7f0b0061

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_15
    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-static {v8, v2, v9, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v10, v6

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImageTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v10, v11

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    add-int/lit8 v10, v6, -0x1

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v9, 0x7f0200e0

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    :pswitch_16
    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-static {v8, v2, v9, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v10, v6

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImageTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v10, v11

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v9, v6, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v9, 0x7f0200e0

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    :pswitch_17
    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-static {v8, v2, v9, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v10, v6

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImageTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v10, v11

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v9, 0x0

    add-int/lit8 v10, v6, -0x1

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v9, 0x7f0200e0

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    :pswitch_18
    sget-object v8, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_FONT_SIZE:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-static {v8, v2, v9, v10}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v10, v6

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->TITLE_HEIGHT:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescription:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImage:Lcom/sec/android/glview/TwGLImage;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mImageTitle:Lcom/sec/android/glview/TwGLText;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_X:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget-object v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_IMAGE_Y:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v9, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_WIDTH:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_GROUP_PADDING_HEIGHT:F

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->CONTENT_HEIGHT:F

    add-float/2addr v10, v11

    add-int/lit8 v11, v6, -0x1

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v9, v6, -0x1

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->DESCRIPTION_LINE_HEIGHT:F

    mul-float/2addr v9, v10

    neg-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const v9, 0x7f0200e0

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_12
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_c
        :pswitch_14
        :pswitch_0
        :pswitch_11
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public showDescription()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mDescriptionGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    return-void
.end method
