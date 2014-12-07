.class Lcom/android/launcher2/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mIsLaunching:Z

.field private mStep1Finished:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Z)V
    .locals 0
    .param p2    # Z

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return-void
.end method

.method static synthetic access$1202(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel$LoaderTask;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method private bindWorkspace()V
    .locals 24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v20

    if-nez v20, :cond_0

    const-string v20, "Launcher.Model"

    const-string v21, "LoaderTask running with no launcher"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    new-instance v19, Ljava/util/ArrayList;

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v8, 0x0

    const v20, 0x7f0b0020

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    const v21, 0x7f0b0021

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v13

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeItem;

    iget-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x65

    cmp-long v20, v20, v22

    if-nez v20, :cond_2

    add-int/lit8 v20, v13, -0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x64

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_5

    move v15, v10

    add-int/lit8 v20, v10, 0x6

    move/from16 v0, v20

    if-gt v0, v4, :cond_4

    const/4 v5, 0x6

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v15, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;II)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    add-int/lit8 v10, v10, 0x6

    goto :goto_2

    :cond_4
    sub-int v5, v4, v10

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/util/HashMap;

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/HashMap;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    const/4 v6, 0x0

    # getter for: Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_7
    # getter for: Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_9
    # getter for: Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/SamsungWidgetItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/SamsungWidgetItem;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_a
    # getter for: Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$800()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/SurfaceWidgetItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$12;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v20

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$13;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask$13;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;J)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z
    .locals 10
    .param p1    # [[[Lcom/android/launcher2/HomeItem;
    .param p2    # Lcom/android/launcher2/HomeItem;

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-wide v6, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    aget-object v6, p1, v1

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v6, v6, v7

    aget-object v6, v6, v4

    if-eqz v6, :cond_1

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut into hotseat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into position ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") occupied by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    iget v8, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v7, v7, v8

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    aget-object v6, p1, v1

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v6, v6, v7

    aput-object p2, v6, v4

    move v4, v5

    goto :goto_0

    :cond_2
    iget-wide v6, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    iget v2, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_1
    iget v6, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, p2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_6

    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    :goto_2
    iget v6, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, p2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_5

    aget-object v6, p1, v0

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    if-eqz v6, :cond_4

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into cell ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") occupied by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget v2, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_3
    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v4, v6

    if-ge v2, v4, :cond_8

    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    :goto_4
    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v4, v6

    if-ge v3, v4, :cond_7

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    aput-object p2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v4, v5

    goto/16 :goto_0
.end method

.method private getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$3300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v0

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadAllApps()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$2400(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems()Ljava/util/Map;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    # setter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$1902(Lcom/android/launcher2/LauncherModel;Z)Z

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/LauncherModel$LoaderTask$16;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$16;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private loadAndBindAllApps()V
    .locals 3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindAllApps mAllAppsLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllApps()V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask aborted or running with no launcher (bindAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$14;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$14;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$2400(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps()V

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1000(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->unbindAllHomeItemsOnMainThread()V
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1000(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    # getter for: Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    # getter for: Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    # getter for: Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$800()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    # getter for: Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$900()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace(Z)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_4

    # getter for: Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$900()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # setter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherModel;->access$1002(Lcom/android/launcher2/LauncherModel;Z)Z

    goto :goto_0
.end method

.method private loadWorkspace(Z)V
    .locals 82
    .param p1    # Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v74

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v79

    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v49

    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI(Z)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v56

    add-int/lit8 v4, v56, 0x1

    # getter for: Lcom/android/launcher2/LauncherModel;->sCellCountX:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2500()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    # getter for: Lcom/android/launcher2/LauncherModel;->sCellCountY:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2600()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v4, v5, v7}, [I

    move-result-object v4

    const-class v5, Lcom/android/launcher2/HomeItem;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, [[[Lcom/android/launcher2/HomeItem;

    const/16 v48, 0x0

    :try_start_0
    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    const-string v4, "intent"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    const-string v4, "title"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v4, "iconType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v4, "icon"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v4, "iconPackage"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v4, "iconResource"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v4, "container"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    const-string v4, "itemType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    const-string v4, "appWidgetId"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v4, "screen"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v69

    const-string v4, "cellX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v4, "cellY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v4, "spanX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v70

    const-string v4, "spanY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v71

    const-string v4, "color"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_18

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_18

    :try_start_1
    move/from16 v0, v52

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    sparse-switch v51, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v46

    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v46

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    if-eqz v49, :cond_1

    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v12, v6, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v64

    if-eqz v64, :cond_0

    move-object/from16 v0, v64

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    :cond_1
    if-nez v51, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    move-object v5, v12

    # invokes: Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel;->access$2700(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v45

    :goto_1
    if-eqz v45, :cond_9

    move-object/from16 v0, v45

    iput-object v6, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v45

    iput-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, v45

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, v69

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p1

    move-object/from16 v1, v45

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v45

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, -0x65

    cmp-long v4, v4, v13

    if-nez v4, :cond_2

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrong hotseat item : we remove the item in launcher.db - item="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    const/16 v48, 0x1

    :cond_2
    const-wide/16 v4, -0x64

    cmp-long v4, v34, v4

    if-eqz v4, :cond_3

    const-wide/16 v4, -0x65

    cmp-long v4, v34, v4

    if-nez v4, :cond_8

    :cond_3
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v45

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$900()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v45

    # invokes: Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    invoke-static {v4, v5, v0, v8, v9}, Lcom/android/launcher2/LauncherModel;->access$3200(Lcom/android/launcher2/LauncherModel;Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v37

    :try_start_4
    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    move-object/from16 v0, v37

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4

    :catch_1
    move-exception v37

    goto/16 :goto_0

    :cond_4
    if-eqz v6, :cond_7

    :try_start_5
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v14

    move-object v13, v6

    move-object v15, v8

    move/from16 v19, v9

    move/from16 v20, v10

    # invokes: Lcom/android/launcher2/LauncherModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;
    invoke-static/range {v11 .. v20}, Lcom/android/launcher2/LauncherModel;->access$2800(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v45

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    move-object v5, v12

    # invokes: Lcom/android/launcher2/LauncherModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel;->access$2900(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v45

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v15

    move-object v14, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v21, v12

    move-object/from16 v22, v6

    # invokes: Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    invoke-static/range {v13 .. v22}, Lcom/android/launcher2/LauncherModel;->access$3000(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v45

    goto/16 :goto_1

    :cond_8
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/HashMap;

    move-result-object v4

    move-wide/from16 v0, v34

    # invokes: Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->access$3100(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->loadItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_2

    :cond_9
    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v41

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", removing it"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/HashMap;

    move-result-object v4

    move-wide/from16 v0, v41

    # invokes: Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->access$3100(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v38

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-wide/from16 v0, v41

    move-object/from16 v2, v38

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, v38

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, v69

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mColor:I

    move/from16 v0, p1

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x64

    cmp-long v4, v34, v4

    if-eqz v4, :cond_a

    const-wide/16 v4, -0x65

    cmp-long v4, v34, v4

    if-nez v4, :cond_b

    :cond_a
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v38

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v38

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_2
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-object/from16 v0, v79

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v63

    if-nez v49, :cond_d

    const/4 v4, -0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_d

    if-nez v63, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v41

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "Launcher.Model"

    move-object/from16 v0, v55

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v4, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    const/16 v39, 0x0

    const/16 v50, 0x0

    if-eqz p1, :cond_11

    const/4 v4, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher.prefs"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v62

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrefsForContextualPagePackageName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrefsForContextualPageClassName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    new-instance v32, Landroid/content/ComponentName;

    move-object/from16 v0, v32

    move-object/from16 v1, v59

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v39, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    :cond_e
    :goto_3
    if-nez v39, :cond_f

    if-eqz v63, :cond_f

    new-instance v39, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v39

    move-object/from16 v1, v63

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    :cond_f
    if-eqz v39, :cond_0

    move-wide/from16 v0, v41

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v69

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v39

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v39

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v39

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v70

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v39

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v0, v71

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v39

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    if-eqz v46, :cond_10

    const-string v4, ":"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v72

    const/4 v4, 0x0

    aget-object v61, v72, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v27

    new-instance v66, Landroid/widget/RemoteViews;

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f03000b

    move-object/from16 v0, v66

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v76

    const v4, 0x7f08003b

    move-object/from16 v0, v66

    move-object/from16 v1, v76

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v44, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "pkgName"

    move-object/from16 v0, v44

    move-object/from16 v1, v61

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v44

    invoke-static {v4, v5, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v60

    const v4, 0x7f08003a

    move-object/from16 v0, v66

    move-object/from16 v1, v60

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object/from16 v0, v27

    move/from16 v1, v25

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :cond_10
    move/from16 v0, p1

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    const-wide/16 v4, -0x64

    cmp-long v4, v34, v4

    if-eqz v4, :cond_12

    const-wide/16 v4, -0x65

    cmp-long v4, v34, v4

    if-eqz v4, :cond_12

    const-string v4, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    if-eqz p1, :cond_e

    if-eqz v63, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1000(Lcom/android/launcher2/LauncherModel;)Z

    move-result v4

    if-nez v4, :cond_e

    move/from16 v0, v69

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher.prefs"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v62

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrefsForContextualPagePackageName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrefsForContextualPageClassName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v63

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v24, Landroid/appwidget/AppWidgetHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    const/16 v5, 0x400

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {v24 .. v25}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    const/16 v25, -0x1

    const/16 v50, 0x1

    goto/16 :goto_3

    :cond_12
    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v39

    iput-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v39

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v50, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v78, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-direct/range {v78 .. v78}, Lcom/android/launcher2/SamsungWidgetItem;-><init>()V

    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-wide/from16 v0, v41

    move-object/from16 v2, v78

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v69

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v70

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v0, v71

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v78

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v78

    iput-wide v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    move/from16 v0, p1

    move-object/from16 v1, v78

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    const-wide/16 v4, -0x64

    cmp-long v4, v34, v4

    if-eqz v4, :cond_13

    const-wide/16 v4, -0x65

    cmp-long v4, v34, v4

    if-eqz v4, :cond_13

    const-string v4, "Launcher.Model"

    const-string v5, "Samsung Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v78

    iput-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v77

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_6
    move-object/from16 v0, v77

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    :try_start_7
    move-object/from16 v0, v78

    iput-object v6, v0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v12, v6, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v65

    if-nez v65, :cond_14

    const-string v4, "Launcher.Model"

    const-string v5, "Can\'t resolve SamsungWidget\'s activity. Deleting it."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v37

    goto/16 :goto_0

    :cond_14
    :try_start_8
    move-object/from16 v0, v65

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v78

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v78

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v78

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v78

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_3
    move-exception v37

    const-string v4, "Launcher.Model"

    const-string v5, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v77

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_a
    move-object/from16 v0, v77

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v6

    :try_start_b
    sget-object v57, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v73

    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    if-nez v73, :cond_15

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SurfaceWidget-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'s provider info could not be found. Deleting it."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_4
    move-exception v37

    goto/16 :goto_0

    :cond_15
    new-instance v68, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {v68 .. v68}, Lcom/android/launcher2/SurfaceWidgetItem;-><init>()V

    move-wide/from16 v0, v41

    move-object/from16 v2, v68

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v69

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v70

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v0, v71

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v68

    iput-wide v4, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v68

    iput-object v4, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mThemeName:Ljava/lang/String;

    move/from16 v0, p1

    move-object/from16 v1, v68

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    const-wide/16 v4, -0x64

    cmp-long v4, v34, v4

    if-eqz v4, :cond_16

    const-wide/16 v4, -0x65

    cmp-long v4, v34, v4

    if-eqz v4, :cond_16

    const-string v4, "Launcher.Model"

    const-string v5, "Surface Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v68

    iput-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v68

    iput-object v4, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    const-string v4, "instance"

    const/4 v5, -0x1

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v68

    iput v4, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LauncherModel read out SurfaceWidgetItem mInstance = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v68

    iget v7, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v68

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v68

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v68

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$800()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :cond_18
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    if-eqz v48, :cond_19

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/LauncherModel$LoaderTask;->rearrangeHotseatData(Ljava/util/ArrayList;)V

    :cond_19
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI(Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v31

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_1a
    :goto_4
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v41

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_c
    move-wide/from16 v0, v41

    move/from16 v2, p1

    invoke-static {v0, v1, v4, v2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_4

    :catch_5
    move-exception v37

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not remove id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v41

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1b
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loaded workspace in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v74

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Launcher.Model"

    const-string v5, "workspace layout: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v81, 0x0

    :goto_5
    # getter for: Lcom/android/launcher2/LauncherModel;->sCellCountY:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2600()I

    move-result v4

    move/from16 v0, v81

    if-ge v0, v4, :cond_20

    const-string v54, ""

    const/16 v67, 0x0

    :goto_6
    move/from16 v0, v67

    move/from16 v1, v56

    if-ge v0, v1, :cond_1f

    if-lez v67, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    :cond_1c
    const/16 v80, 0x0

    :goto_7
    # getter for: Lcom/android/launcher2/LauncherModel;->sCellCountX:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2500()I

    move-result v4

    move/from16 v0, v80

    if-ge v0, v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, v58, v67

    aget-object v4, v4, v80

    aget-object v4, v4, v81

    if-eqz v4, :cond_1d

    const-string v4, "#"

    :goto_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    add-int/lit8 v80, v80, 0x1

    goto :goto_7

    :cond_1d
    const-string v4, "."

    goto :goto_8

    :cond_1e
    add-int/lit8 v67, v67, 0x1

    goto :goto_6

    :cond_1f
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v81, v81, 0x1

    goto :goto_5

    :cond_20
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x384 -> :sswitch_3
        0x385 -> :sswitch_4
    .end sparse-switch
.end method

.method private postModelRefreshed()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$15;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rearrangeHotseatData(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v3, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iput v2, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    invoke-static {v4, v3}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private waitForIdle()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStep1Finished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method isLaunching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 8

    const/16 v4, 0xa

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # setter for: Lcom/android/launcher2/LauncherModel;->mIsOldTaskStopped:Z
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherModel;->access$1402(Lcom/android/launcher2/LauncherModel;Z)Z

    :cond_0
    const-string v3, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin LoaderTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    const-string v3, "Launcher.Model"

    const-string v4, "Comparing loaded icons to database icons"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$900()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    # getter for: Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$900()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    # invokes: Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    invoke-static {v6, v7, v3, v4}, Lcom/android/launcher2/LauncherModel;->access$2100(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    goto :goto_1

    :cond_2
    const-string v6, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting thread priority to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_6

    const-string v3, "DEFAULT"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_7

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_3
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->setLocaleLocked()V
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1700(Lcom/android/launcher2/LauncherModel;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v4, 0x1

    # setter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->access$1102(Lcom/android/launcher2/LauncherModel;Z)Z

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/PkgResCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->clear()V

    :cond_4
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "Launcher.Model"

    const-string v4, "step 1: loading workspace"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_5

    const-string v3, "Launcher.Model"

    const-string v4, "Setting thread priority to BACKGROUND"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_a

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V

    const-string v3, "Launcher.Model"

    const-string v4, "step 2: loading all apps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_6
    const-string v3, "BACKGROUND"

    goto/16 :goto_2

    :cond_7
    :try_start_3
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_8

    move v3, v5

    :goto_6
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_3

    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_8
    move v3, v4

    goto :goto_6

    :cond_9
    :try_start_4
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :cond_a
    const/16 v3, 0xa

    :try_start_5
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_5

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_b
    # getter for: Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$900()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # setter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherModel;->access$1102(Lcom/android/launcher2/LauncherModel;Z)Z

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/LauncherModel$LoaderTask$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public stopLocked()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping LoaderTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$2400(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->abortLoader()V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # setter for: Lcom/android/launcher2/LauncherModel;->mIsOldTaskStopped:Z
    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherModel;->access$1402(Lcom/android/launcher2/LauncherModel;Z)Z

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
