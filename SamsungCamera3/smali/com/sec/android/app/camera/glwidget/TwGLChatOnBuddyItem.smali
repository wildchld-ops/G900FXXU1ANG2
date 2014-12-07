.class public Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLChatOnBuddyItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final CHECKBOX_POS_Y:I

.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I

.field private static final ICON_IMAGE_HEIGHT:I

.field private static final ICON_IMAGE_WIDTH:I

.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I

.field private static final LIST_TYPE_BUTTON_HEIGHT:I

.field private static final LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_X:I

.field private static final LIST_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

.field private static final LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

.field private static final LIST_TYPE_BUTTON_WIDTH:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:I

.field private static final LIST_TYPE_TEXT_HEIGHT:I

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field private static final LIST_TYPE_TEXT_WIDTH:I

.field private static final SEPARATOR_HEIGHT:I

.field private static final SEPARATOR_POS_X:I

.field public static final TITLE_HEIGHT:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mBuddyName:Lcom/sec/android/glview/TwGLText;

.field public mButton:Lcom/sec/android/glview/TwGLButton;

.field private mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

.field public mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

.field private mDim:Z

.field private mIcon:Lcom/sec/android/glview/TwGLImage;

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0900e9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    const v0, 0x7f0900ea

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    const v0, 0x7f0900eb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f0900ec

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_HEIGHT:I

    const v0, 0x7f0900f1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_POS_X:I

    const v0, 0x7f0900f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_POS_Y:I

    const v0, 0x7f0900f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_WIDTH:I

    const v0, 0x7f0900f4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_HEIGHT:I

    const v0, 0x7f0a0034

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    const v0, 0x7f0901c0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->ICON_IMAGE_WIDTH:I

    const v0, 0x7f0901c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->ICON_IMAGE_HEIGHT:I

    const v0, 0x7f0900ed

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

    const v0, 0x7f0900ee

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

    const v0, 0x7f0900ef

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

    const v0, 0x7f0900f0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

    const v0, 0x7f0901c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    const v0, 0x7f0901c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->CHECKBOX_POS_Y:I

    const v0, 0x7f0901c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_HEIGHT:I

    const v0, 0x7f0901c5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_POS_X:I

    const v0, 0x7f0900d2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->TITLE_HEIGHT:I

    const v0, 0x7f08000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;IFF)V
    .locals 6
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;
    .param p3    # I
    .param p4    # F
    .param p5    # F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDim:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->initContents()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->setContentType()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .param p1    # Lcom/sec/android/glview/TwGLContext;

    const/4 v7, 0x0

    const v4, 0x7f020305

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDim:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    return-void
.end method

.method private clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    :cond_1
    return-void
.end method

.method private initContents()V
    .locals 17

    const/16 v16, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_5

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    const v7, 0x7f020305

    const v8, 0x7f020305

    const v9, 0x7f020305

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDim:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v2, Landroid/graphics/Rect;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_LEFT_PADDING:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_TOP_PADDING:I

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_RIGHT_PADDING:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_BOTTOM_PADDING:I

    invoke-direct {v2, v3, v4, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-nez v1, :cond_3

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->CHECKBOX_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mChatONBuddyInfo:Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;->isSelected()Z

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/Camera;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    :cond_3
    new-instance v8, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_HEIGHT:I

    int-to-float v13, v1

    const v14, 0x7f0203ca

    move v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v4, v4

    const v8, 0x7f0202dc

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    return-void

    :cond_4
    move v6, v15

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_5
    move v6, v15

    move/from16 v5, v16

    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->clearContent()V

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public getScrollHint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRotatable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V

    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCheckBox(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iput-boolean p1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    :cond_0
    return-void
.end method

.method public setContentType()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->ICON_IMAGE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->ICON_IMAGE_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mBuddyName:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method
