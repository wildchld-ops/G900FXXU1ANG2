.class public Lcom/sec/android/app/camera/glwidget/TwGLItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final CHECKBOX_POS_Y:I

.field public static final EASYMODE_TYPE:I = 0x6

.field private static final EASYMODE_TYPE_BUTTON_HEIGHT:I

.field private static final EASYMODE_TYPE_BUTTON_WIDTH:I

.field private static final EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

.field private static final EDITABLESHORTCUT_TYPE_FONT_SIZE:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

.field private static final EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

.field public static final EFFECT_TYPE:I = 0x5

.field private static final EFFECT_TYPE_BUTTON_MARGIN:I

.field private static final EFFECT_TYPE_BUTTON_WIDTH:I

.field private static final EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

.field private static final EFFECT_TYPE_MANAGER_TEXT_HEIGHT:I

.field private static final EFFECT_TYPE_MANAGER_TEXT_Y:I

.field private static final EFFECT_TYPE_TEXT_HEIGHT:I

.field private static final EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

.field private static EFFECT_TYPE_TEXT_SIZE:I = 0x0

.field private static final EFFECT_TYPE_TEXT_SIZE_SWA:I

.field private static final EFFECT_TYPE_TEXT_WIDTH:I

.field private static final EFFECT_TYPE_TEXT_X:I

.field private static final EFFECT_TYPE_TEXT_Y:I

.field private static final FIRST_ITEM:I = 0x0

.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I

.field public static final LIST_TYPE:I = 0x0

.field private static final LIST_TYPE_ANCHOR_POS_Y:I

.field private static final LIST_TYPE_BUTTON_HEIGHT:I

.field private static final LIST_TYPE_BUTTON_WIDTH:I

.field private static final LIST_TYPE_IMAGE_LEFT_PADDING:I

.field private static final LIST_TYPE_IMAGE_TOP_PADDING:I

.field private static final LIST_TYPE_LEFT_PADDING:I

.field private static final LIST_TYPE_TEXT_FONT_COLOR:I

.field private static final LIST_TYPE_TEXT_FONT_SIZE:I

.field private static final LIST_TYPE_TEXT_HEIGHT:I

.field private static final LIST_TYPE_TEXT_POS_X:I

.field private static final LIST_TYPE_TEXT_POS_Y:I

.field private static final LIST_TYPE_TEXT_WIDTH:I

.field private static final ROTATE_ANIMATION_DURATION:I = 0x12c

.field private static final SEPARATOR_HEIGHT:I

.field public static final SETTINGS_TYPE:I = 0x3

.field private static final SETTING_MODE_VALUE_COLOR:I

.field private static final SETTING_TYPE_BUTTON_HEIGHT:I

.field private static final SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

.field private static final SETTING_TYPE_BUTTON_WIDTH:I

.field private static final SETTING_TYPE_FONT_SIZE:I

.field private static final SETTING_TYPE_FONT_SIZE_SWA:I

.field private static final SETTING_TYPE_MODE_FONT_SIZE:I

.field private static final SETTING_TYPE_MODE_FONT_SIZE_SWA:I

.field private static final SETTING_TYPE_MODE_TEXT_HEIGHT:I

.field private static final SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

.field private static final SETTING_TYPE_MODE_TEXT_WIDTH:I

.field private static final SETTING_TYPE_TEXT_HEIGHT:I

.field private static final SETTING_TYPE_TEXT_HEIGHT_SWA:I

.field private static final SETTING_TYPE_TEXT_LEFT_PADDING:I

.field private static final SETTING_TYPE_TEXT_TOP_PADDING:I

.field private static final SETTING_TYPE_TEXT_WIDTH:I

.field private static final SETTING_TYPE_TEXT_WIDTH_SWA:I

.field private static final SETTING_TYPE_TOP_PADDING:I

.field public static final SIDEBAR_ITEM_TYPE:I = 0x2

.field private static final SIDEBAR_TYPE_BUTTON_HEIGHT:I

.field private static final SIDEBAR_TYPE_BUTTON_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLItem"

.field public static final THUMBNAIL_TYPE:I = 0x4

.field private static final THUMBNAIL_TYPE_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_TYPE_BUTTON_MARGIN:I

.field private static final THUMBNAIL_TYPE_BUTTON_WIDTH:I

.field private static final THUMBNAIL_TYPE_TEXT_HEIGHT:I

.field private static final THUMBNAIL_TYPE_TEXT_SIZE:I

.field private static final THUMBNAIL_TYPE_TEXT_WIDTH:I

.field private static final THUMBNAIL_TYPE_TEXT_X:I

.field private static final THUMBNAIL_TYPE_TEXT_Y:I

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

.field private mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

.field private mDimmed:Z

.field private mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

.field private mExtra:I

.field private mHeight:F

.field private mModeText:Lcom/sec/android/glview/TwGLText;

.field private mSelected:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mSettingTopPadding:I

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

.field private mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

.field private mToggle:Z

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f0900eb

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f0900ec

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f0900f1

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    const v1, 0x7f0900f2

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    const v1, 0x7f0900f3

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    const v1, 0x7f0900f4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    const v1, 0x7f0a0034

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    const v1, 0x7f08000c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    const v1, 0x7f0900f5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_ANCHOR_POS_Y:I

    const v1, 0x7f0900ed

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_LEFT_PADDING:I

    const v1, 0x7f0900ee

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_TOP_PADDING:I

    const v1, 0x7f0900f6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_LEFT_PADDING:I

    const v1, 0x7f0900f7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    const v1, 0x7f090011

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f090012

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f090184

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f090185

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f090107

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    const v1, 0x7f090108

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    const v1, 0x7f090109

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    const v1, 0x7f09010a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    const v1, 0x7f09010b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    const v1, 0x7f09010c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    const v1, 0x7f09010d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    const v1, 0x7f09010e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    const v1, 0x7f0a0035

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    const v1, 0x7f0a0020

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    const v0, 0x7f09010f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    const v0, 0x7f09016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f09016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    const v0, 0x7f09016d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    const v0, 0x7f090171

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_X:I

    const v0, 0x7f090172

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    const v0, 0x7f09016f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_WIDTH:I

    const v0, 0x7f090170

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    const v0, 0x7f09011b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_SIZE:I

    const v0, 0x7f090333

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f090110

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    const v0, 0x7f090111

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    const v0, 0x7f090112

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    const v0, 0x7f090113

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_Y:I

    const v0, 0x7f090114

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    const v0, 0x7f090115

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    const v0, 0x7f090117

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    const v0, 0x7f090118

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE_SWA:I

    const v0, 0x7f09042d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

    const v0, 0x7f090119

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_MANAGER_TEXT_Y:I

    const v0, 0x7f09011a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_MANAGER_TEXT_HEIGHT:I

    const v0, 0x7f08000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    const v0, 0x7f08001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_MODE_VALUE_COLOR:I

    const v0, 0x7f0900f8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE:I

    const v0, 0x7f0900f9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE_SWA:I

    const v0, 0x7f0900fa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE:I

    const v0, 0x7f0900fb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE_SWA:I

    const v0, 0x7f0900fc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_LEFT_PADDING:I

    const v0, 0x7f0900fd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    const v0, 0x7f0900fe

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    const v0, 0x7f0900ff

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    const v0, 0x7f090100

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH_SWA:I

    const v0, 0x7f090101

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT_SWA:I

    const v0, 0x7f090104

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_HEIGHT:I

    const v0, 0x7f090102

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

    const v0, 0x7f090103

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_WIDTH:I

    const v0, 0x7f090196

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    const v0, 0x7f090197

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    const v0, 0x7f090105

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

    const v0, 0x7f090106

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TOP_PADDING:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8    # I

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    invoke-virtual {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;II)V
    .locals 6
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p8    # I
    .param p9    # I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    iput-object p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mHeight:F

    iput p9, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    invoke-virtual {p0, p8}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p5    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p6    # I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 3
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p3    # Lcom/sec/android/app/camera/command/MenuCommand;
    .param p4    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->initContents(I)V

    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setContentType(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .param p1    # Lcom/sec/android/glview/TwGLContext;

    const v4, 0x7f020305

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    return-void
.end method

.method private clearContent()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    :cond_7
    return-void
.end method

.method private diableDrag()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDraggable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDraggable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDraggable(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDraggable(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDraggable(Z)V

    :cond_5
    return-void
.end method

.method private initContents(I)V
    .locals 26
    .param p1    # I

    const/16 v25, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v2, :cond_6

    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v2, :cond_4

    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v2 .. v12}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v2, v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getContentDescriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/glview/TwGLButton;->mContentDescription:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v7

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v2, :cond_2

    const/4 v8, 0x0

    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getAbbTitleId()I

    move-result v24

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    new-instance v2, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_2
    :goto_5
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v22

    if-nez v22, :cond_1b

    const-string v2, "TwGLItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing resource for CommandID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_6
    return-void

    :cond_4
    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v8

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/glview/TwGLButton;->mTitle:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    :cond_7
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v8

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setExtraDescription(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setObjectTag(I)V

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_X:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v7, v9

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_Y:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_WIDTH:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_HEIGHT:I

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const v3, 0x7f080007

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setTextShadow(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setBypassTouch(Z)V

    move/from16 v7, v16

    move/from16 v6, v25

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v2, v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    :cond_b
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;-><init>(Lcom/sec/android/app/camera/Camera;FFII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v8

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalFilterFullName(I)Ljava/lang/String;

    move-result-object v21

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setExtraDescription(Z)V

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    if-eq v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setObjectTag(Ljava/lang/String;)V

    :goto_a
    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE_SWA:I

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    :cond_d
    const/16 v18, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x232e

    if-ne v2, v3, :cond_11

    sget v18, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_MANAGER_TEXT_Y:I

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_MANAGER_TEXT_HEIGHT:I

    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mExtra:I

    if-nez v2, :cond_12

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    int-to-float v5, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v7, v9

    const/4 v8, 0x0

    move/from16 v0, v18

    int-to-float v9, v0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v10, v10

    move/from16 v0, v17

    int-to-float v11, v0

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_FIRST_BUTTON_MARGIN:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    const v4, 0x40490fdb

    const/4 v5, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SHADOW_Y_POS:I

    int-to-float v6, v9

    const v7, 0x7f080007

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setShadowLayer(ZFFFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setBypassTouch(Z)V

    move/from16 v7, v16

    move/from16 v6, v25

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_9

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setObjectTag(I)V

    goto/16 :goto_a

    :cond_11
    sget v18, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_Y:I

    sget v17, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_HEIGHT:I

    goto/16 :goto_b

    :cond_12
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    int-to-float v5, v5

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v6, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v7, v9

    const/4 v8, 0x0

    move/from16 v0, v18

    int-to-float v9, v0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    int-to-float v10, v10

    move/from16 v0, v17

    int-to-float v11, v0

    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_SIZE:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-direct/range {v2 .. v13}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;-><init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x1

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x2

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    const/4 v3, 0x3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_TEXT_WIDTH:I

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_MARGIN:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->setLeftTop(IFF)V

    goto/16 :goto_c

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSizeSpecified:Z

    if-eqz v2, :cond_15

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getWidth()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getHeight()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    move/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFFFII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v2, v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setObjectTag(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-nez v2, :cond_14

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getWidth()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->getHeight()F

    move-result v7

    goto/16 :goto_2

    :cond_15
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    goto/16 :goto_d

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTitle(Ljava/lang/String;)V

    goto :goto_e

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v24

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v2, v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0xbb9

    move/from16 v0, v19

    if-ne v0, v2, :cond_22

    :cond_1c
    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v8, v2, v3

    :cond_1d
    :goto_f
    new-instance v2, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setBypassTouch(Z)V

    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_1e
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v2, :cond_1f

    if-nez p1, :cond_1f

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_ANCHOR_POS_Y:I

    int-to-float v4, v4

    sub-float v4, v6, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;->CHECKBOX_POS_Y:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v9

    invoke-direct {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/Camera;FFI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setBypassTouch(Z)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v2, :cond_20

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_20

    new-instance v9, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v14, v2

    const v15, 0x7f0203ca

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->diableDrag()V

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    invoke-direct {v3, v4, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setPaddings(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setObjectTag(I)V

    goto/16 :goto_6

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x6f

    move/from16 v0, v19

    if-eq v0, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x1e

    move/from16 v0, v19

    if-eq v0, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x2d

    move/from16 v0, v19

    if-ne v0, v2, :cond_24

    :cond_23
    const-string v8, ""

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TOP_PADDING:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    goto/16 :goto_f

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v2, 0x8

    move/from16 v0, v19

    if-ne v0, v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_f

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_10

    :cond_26
    move/from16 v7, v16

    move/from16 v6, v25

    goto/16 :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;->removeButton(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->clearContent()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public getButtonType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getScrollHint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelected()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getSelected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->getSelected()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    goto :goto_0
.end method

.method public isDim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    return v0
.end method

.method public onButtonHighlightChanged(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setColor(I)V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 8
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/high16 v7, 0x40000000

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CommonEngine;->isCurrentState(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->isThumbnailListMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->hideEffectThumbnailList()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_4
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isAnimationFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setSelectedMenuId(I)V

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v3, :cond_7

    const-string v3, "TwGLItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Execute Menu!!!!, CurrentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CommandId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v2

    :cond_7
    move v3, v2

    goto/16 :goto_0
.end method

.method protected onDraw()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getRotatable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V

    :cond_1
    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnFocusListener;->onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v4, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v2, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public resetSettingsText()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLText;->setBoldColor(ZI)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLImage;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    return-void
.end method

.method public setContentType(I)V
    .locals 9
    .param p1    # I

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_IMAGE_TOP_PADDING:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_FONT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->resetSize()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setMargin(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_a
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EFFECT_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailText:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_BUTTON_IMAGE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_BUTTON_IMAGE_POS_Y:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_TYPE_TEXT_POS_Y:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextPosition(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH_SWA:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT_SWA:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSettingTopPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EDITABLESHORTCUT_ITEM_TEXT_SET_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSWALanguage()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE_SWA:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_MODE_VALUE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_LEFT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_TOP_PADDING:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v6, v6}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setModeText(Lcom/sec/android/glview/TwGLText;)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto/16 :goto_3

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SETTING_TYPE_MODE_FONT_SIZE:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    goto :goto_4

    :cond_10
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-ne v0, v6, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->SIDEBAR_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const v1, 0x7f090013

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f090014

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_11
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2

    :cond_12
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;->EASYMODE_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    const v1, 0x7f090013

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    const v2, 0x7f090014

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setHighlightVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_13
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotatable(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setCenterPivot(Z)V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimationDuration(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setRotateAnimation(Z)V

    goto/16 :goto_2
.end method

.method public setDim(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDimmed:Z

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDim(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDim(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setDim(Z)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setDim(Z)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLText;->setDim(Z)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setDim(Z)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1    # Z

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setMute(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setMute(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setMute(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->getButton()Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setNextFocusUpId(I)V

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mCurrentType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->getButton()Lcom/sec/android/glview/TwGLSelectButton;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSelectButton;->setNextFocusUpId(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusUpId(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView$OnKeyListener;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView$OnTouchListener;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataText:Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mEffectThumbnailItemButton:Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemEffectThumbnailButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mSelected:Z

    return-void
.end method

.method public setToggleButton()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mToggle:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setToggleButton()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->setToggleButton()V

    :cond_1
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItem;->mZOrder:I

    return-void
.end method
