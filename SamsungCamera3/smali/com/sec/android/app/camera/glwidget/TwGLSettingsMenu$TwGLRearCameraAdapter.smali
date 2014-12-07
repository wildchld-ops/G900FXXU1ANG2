.class Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;
.super Ljava/lang/Object;
.source "TwGLSettingsMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLRearCameraAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$1;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;
    .param p2    # Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$1;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 18
    .param p1    # I
    .param p2    # Lcom/sec/android/glview/TwGLView;

    if-nez p2, :cond_5

    new-instance v16, Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I

    move-result v2

    mul-int v17, p1, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I

    move-result v2

    if-ge v14, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearCameraList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v15}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-nez v5, :cond_0

    invoke-virtual {v15}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_1

    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mRearSettingList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_LEFT_PADDING:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$900()I

    move-result v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$1000()I

    move-result v4

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    add-int/2addr v4, v6

    mul-int/2addr v4, v14

    add-int/2addr v3, v4

    int-to-float v3, v3

    if-nez p1, :cond_2

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getOnTouchListener()Lcom/sec/android/glview/TwGLView$OnTouchListener;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFLcom/sec/android/glview/TwGLView;Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox;->setOnShortcutBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenuDragDropBox$OnShortcutBoxCancelListener;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->mCols:I
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)I

    move-result v2

    mul-int v2, v2, p1

    add-int v17, v2, v14

    goto/16 :goto_0

    :cond_1
    const-string v2, "TwGLSettingsMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing item in mViewList, CommandId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_2
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    int-to-float v4, v4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    new-instance v6, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu$TwGLRearCameraAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->MENU_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->access$1200()I

    move-result v2

    int-to-float v10, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->LIST_LINE_THICKNESS:I

    int-to-float v11, v2

    const/4 v12, 0x0

    const v13, 0x7f02024d

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_4
    :goto_2
    return-object v16

    :cond_5
    move-object/from16 v16, p2

    goto :goto_2
.end method

.method public reset()V
    .locals 0

    return-void
.end method
