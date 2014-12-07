.class public Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLModeMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;
.implements Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_PADDING:I

.field private static final LIST_POS_Y:I

.field private static final LIST_TRANSLATE_PADDING:I

.field private static final LIST_WIDTH:I

.field private static final MODE_ITEM_MARGIN:I

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLModeMenu"

.field private static final TUTORIAL_HELP_GROUP_WIDTH:I


# instance fields
.field private mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f09002f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_POS_Y:I

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    const v0, 0x7f090030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    const v0, 0x7f090031

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    const v0, 0x7f090032

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    const v0, 0x7f090046

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_ITEM_MARGIN:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TRANSLATE_PADDING:I

    const v0, 0x7f0901f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    iput-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_ITEM_MARGIN:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_ITEM_MARGIN:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLList;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    int-to-float v4, v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move-object v1, p1

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->registerHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->MODE_ITEM_MARGIN:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLContext;->unregisterHoverEventChangedObserver(Lcom/sec/android/glview/TwGLContext$OnHoverEventChangedObserver;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getModeItemByCommandId(I)Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .locals 5
    .param p1    # I

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/16 v4, 0xcb

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_1
    return v3
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->resetOrder(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TRANSLATE_PADDING:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLList;->translateList(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_TRANSLATE_PADDING:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLList;->translateList(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_PADDING:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # F
    .param p3    # F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->resetOrder(Z)V

    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # F
    .param p3    # F

    return-void
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLView;

    return-void
.end method

.method protected onHide()V
    .locals 2

    const-string v0, "TwGLModeMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onHoverEventChanged(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # Landroid/view/MotionEvent;

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v3, 0x4

    const/4 v0, 0x0

    if-ne p1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v0, v0}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStepHide()V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    return-void
.end method

.method public onSelect(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/16 v4, 0xcb

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep3()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v1, v3, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getItemWithData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getItemWithData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    if-eq v1, v4, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    :cond_2
    return-void
.end method

.method protected onShow()V
    .locals 4

    const-string v2, "TwGLModeMenu"

    const-string v3, "onShow"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->refreshMenuPosition()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->getModeItemByCommandId(I)Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setHighlightImage(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->getCurrentSelectedIndex()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public refreshMenuPosition()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->LIST_WIDTH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float v0, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    return-void
.end method

.method public refreshModeMenu()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->reset()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetOrder(Z)V
    .locals 7
    .param p1    # Z

    const/16 v6, 0x63

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->getFirstBox()Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->moveEmptyToLast()V

    move-object v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v5, v5, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-nez v5, :cond_2

    const-string v5, "TwGLModeMenu"

    const-string v6, "Invalid menu data was provided"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v5

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->saveOrder()V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    instance-of v5, v5, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-nez v5, :cond_6

    const-string v5, "TwGLModeMenu"

    const-string v6, "Invalid menu data was provided"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v5

    if-eq v5, v6, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-static {v1, v5}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    move-result-object v0

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v3, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->saveOrder()V

    goto :goto_0
.end method

.method public setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu$TwGLMenuAdapter;->setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->refreshMenuPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    return-void
.end method
