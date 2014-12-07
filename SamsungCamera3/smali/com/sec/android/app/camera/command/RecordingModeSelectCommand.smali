.class public Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "RecordingModeSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingModeSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mRecordingMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p2, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mCommandId:I

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x3

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RecordingModeSelectCommand"

    const-string v2, "return isStartPreview.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RecordingModeSelectCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mCommandId:I

    sparse-switch v1, :sswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onRecordingModeMenuSelect(I)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    if-ne v1, v4, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x170e

    iget-object v3, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getBaseMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/resourcedata/SlowMotionResourceData;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/resourcedata/SlowMotionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mZOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    :cond_2
    :goto_2
    move v7, v8

    goto :goto_0

    :sswitch_0
    iput v7, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_1
    iput v8, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_2
    iput v4, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_3
    iput v3, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_4
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_5
    const/4 v1, 0x6

    iput v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :sswitch_6
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mRecordingMode:I

    if-ne v1, v3, :cond_4

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x170f

    iget-object v3, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getBaseMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/resourcedata/FastMotionResourceData;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/resourcedata/FastMotionResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mZOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLListTypeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mZOrder:I

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0xc1c -> :sswitch_0
        0xc1d -> :sswitch_1
        0xc20 -> :sswitch_4
        0xc21 -> :sswitch_5
        0xc22 -> :sswitch_6
        0x170e -> :sswitch_2
        0x170f -> :sswitch_3
    .end sparse-switch
.end method
