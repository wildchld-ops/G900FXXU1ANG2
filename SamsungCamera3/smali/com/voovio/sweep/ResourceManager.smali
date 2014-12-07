.class Lcom/voovio/sweep/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/ResourceManager$DecodeImageTask;,
        Lcom/voovio/sweep/ResourceManager$OnReadyListener;
    }
.end annotation


# instance fields
.field MAX_DISTANCE:I

.field private m_aAlphas:[B

.field private m_aNeighbours:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field private m_aPixels:[I

.field public m_aQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field private m_bmImage:Landroid/graphics/Bitmap;

.field private m_bmOpts:Landroid/graphics/BitmapFactory$Options;

.field private m_ibPixels:Ljava/nio/IntBuffer;

.field private m_nGradientWidth:I

.field private m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

.field private m_oInstance:Lcom/voovio/sweep/ResourceManager;

.field private m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

.field m_oSweep:Lcom/voovio/sweep/Sweep;

.field private m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

.field private m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    iput-object p0, p0, Lcom/voovio/sweep/ResourceManager;->m_oInstance:Lcom/voovio/sweep/ResourceManager;

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/voovio/sweep/ResourceManager;->m_nGradientWidth:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    return-void
.end method

.method private checkWaitingForVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 6
    .param p1    # Lcom/voovio/sweep/Voovio;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    if-ne v2, p1, :cond_2

    iget v2, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v3, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_oInstance:Lcom/voovio/sweep/ResourceManager;

    invoke-interface {v2, v3, p1}, Lcom/voovio/sweep/ResourceManager$OnReadyListener;->onVoovioReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Voovio;)V

    :cond_0
    iput-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    iget-object v2, v2, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_1

    :cond_3
    iget v2, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v3, v0, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v3, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_oInstance:Lcom/voovio/sweep/ResourceManager;

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    invoke-interface {v2, v3, v4}, Lcom/voovio/sweep/ResourceManager$OnReadyListener;->onTransitionReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Transition;)V

    :cond_4
    iput-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    goto :goto_0
.end method


# virtual methods
.method public ClearQueue()V
    .locals 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v3

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oInstance:Lcom/voovio/sweep/ResourceManager;

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    return-void
.end method

.method public getImage(Lcom/voovio/sweep/Voovio;)Z
    .locals 30
    .param p1    # Lcom/voovio/sweep/Voovio;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eq v15, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string v2, "SweepView::ResourceManager"

    const-string v3, "Bitmap was not reused in BitmapFactory.decodeByteArray() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v2, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v2, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/voovio/sweep/Voovio;->getRotations()I

    move-result v25

    sget v2, Lcom/voovio/sweep/Voovio;->ROTATION_LEFT:I

    and-int v2, v2, v25

    if-lez v2, :cond_5

    const/4 v11, 0x1

    :goto_1
    sget v2, Lcom/voovio/sweep/Voovio;->ROTATION_RIGHT:I

    and-int v2, v2, v25

    if-lez v2, :cond_6

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v2, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v2, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    move v13, v12

    move v12, v11

    move v11, v13

    :cond_2
    const/16 v20, 0x0

    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/ResourceManager;->m_nGradientWidth:I

    sub-int v2, v5, v2

    add-int/lit8 v24, v2, -0x1

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    if-lt v0, v9, :cond_7

    :cond_3
    const/4 v2, 0x1

    :goto_4
    return v2

    :catch_0
    move-exception v16

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v6, 0x400

    div-long v22, v2, v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    const-wide/16 v6, 0x400

    div-long v26, v2, v6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    const-wide/16 v6, 0x400

    div-long v17, v2, v6

    sub-long v28, v26, v17

    const-string v2, "Memory Log (SweepView::ResourceManager)"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OutOfMemoryError decoding image "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v4, v0, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Memory Log (SweepView::ResourceManager)"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Memory: Used ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Free ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Total ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Max ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_4
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_7
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    if-lt v0, v5, :cond_8

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    aget v10, v2, v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/ResourceManager;->m_nGradientWidth:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/ResourceManager;->m_aAlphas:[B

    aget-byte v3, v3, v19

    shl-int/lit8 v3, v3, 0x18

    aput v3, v2, v20

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    aget v3, v2, v20

    const v4, 0xff00

    and-int/2addr v4, v10

    and-int/lit16 v6, v10, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    shr-int/lit8 v6, v10, 0x10

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    or-int/2addr v3, v4

    aput v3, v2, v20

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    :cond_9
    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/ResourceManager;->m_aAlphas:[B

    sub-int v4, v5, v19

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    aput v3, v2, v20

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    const/high16 v3, -0x1000000

    aput v3, v2, v20

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/ResourceManager;->m_nGradientWidth:I

    sub-int v2, v9, v2

    add-int/lit8 v24, v2, -0x1

    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v9, :cond_3

    const/16 v19, 0x0

    :goto_8
    move/from16 v0, v19

    if-lt v0, v5, :cond_c

    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    aget v10, v2, v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/voovio/sweep/ResourceManager;->m_nGradientWidth:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_d

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/ResourceManager;->m_aAlphas:[B

    aget-byte v3, v3, v21

    shl-int/lit8 v3, v3, 0x18

    aput v3, v2, v20

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    aget v3, v2, v20

    const v4, 0xff00

    and-int/2addr v4, v10

    and-int/lit16 v6, v10, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    shr-int/lit8 v6, v10, 0x10

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    or-int/2addr v3, v4

    aput v3, v2, v20

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    :cond_d
    move/from16 v0, v21

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/voovio/sweep/ResourceManager;->m_aAlphas:[B

    sub-int v4, v9, v21

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    aput v3, v2, v20

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    const/high16 v3, -0x1000000

    aput v3, v2, v20

    goto :goto_9
.end method

.method public isWaitingForReady(Lcom/voovio/sweep/Transition;)Z
    .locals 1
    .param p1    # Lcom/voovio/sweep/Transition;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitingForReady(Lcom/voovio/sweep/Voovio;)Z
    .locals 1
    .param p1    # Lcom/voovio/sweep/Voovio;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loop()V
    .locals 7

    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-gez v0, :cond_2

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v4, :cond_5

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-nez v2, :cond_4

    new-instance v2, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;-><init>(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/voovio/sweep/Voovio;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget v2, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/voovio/sweep/ResourceManager;->checkWaitingForVoovio(Lcom/voovio/sweep/Voovio;)V

    :cond_1
    :goto_2
    monitor-exit v3

    return-void

    :cond_2
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    if-ne v2, v4, :cond_3

    invoke-virtual {v1}, Lcom/voovio/sweep/Voovio;->Destroy()V

    sget v2, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_ibPixels:Ljava/nio/IntBuffer;

    iput-object v2, v1, Lcom/voovio/sweep/Voovio;->m_ibImage:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Lcom/voovio/sweep/Voovio;->Create()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/voovio/sweep/Voovio;->m_ibImage:Ljava/nio/IntBuffer;

    sget v2, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    :try_start_1
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    if-ne v2, v4, :cond_6

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    if-ne v2, v4, :cond_6

    sget v2, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v4, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public prepareVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 3
    .param p1    # Lcom/voovio/sweep/Voovio;

    const/4 v2, 0x0

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v0, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v1, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/voovio/sweep/ResourceManager;->getImage(Lcom/voovio/sweep/Voovio;)Z

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_ibPixels:Ljava/nio/IntBuffer;

    iput-object v0, p1, Lcom/voovio/sweep/Voovio;->m_ibImage:Ljava/nio/IntBuffer;

    invoke-virtual {p1}, Lcom/voovio/sweep/Voovio;->Create()V

    iput-object v2, p1, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/voovio/sweep/Voovio;->m_ibImage:Ljava/nio/IntBuffer;

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    goto :goto_0
.end method

.method public setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 7
    .param p1    # Lcom/voovio/sweep/Voovio;

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v6}, Lcom/voovio/sweep/Sweep;->getNeighbours(Lcom/voovio/sweep/Voovio;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    invoke-virtual {v5}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget v5, v3, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    iget v6, p0, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    if-gt v5, v6, :cond_5

    sget v5, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-virtual {p0, v3, v5}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_5
    sget v5, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    invoke-virtual {p0, v3, v5}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    goto :goto_2
.end method

.method public setListener(Lcom/voovio/sweep/ResourceManager$OnReadyListener;)V
    .locals 0
    .param p1    # Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oListener:Lcom/voovio/sweep/ResourceManager$OnReadyListener;

    return-void
.end method

.method public setState(Lcom/voovio/sweep/Voovio;I)V
    .locals 5
    .param p1    # Lcom/voovio/sweep/Voovio;
    .param p2    # I

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iput p2, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v4, :cond_2

    iget v1, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iget v3, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    if-eq v0, v4, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v1, :cond_3

    if-lez v0, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 7
    .param p1    # Lcom/voovio/sweep/Sweep;

    invoke-virtual {p0}, Lcom/voovio/sweep/ResourceManager;->ClearQueue()V

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v4, v4, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v4, v4, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v4, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v4, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    :goto_2
    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v2, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    mul-int v4, v3, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_aPixels:[I

    invoke-static {v4}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_ibPixels:Ljava/nio/IntBuffer;

    iget v4, p0, Lcom/voovio/sweep/ResourceManager;->m_nGradientWidth:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_aAlphas:[B

    const/4 v1, 0x0

    :goto_3
    iget v4, p0, Lcom/voovio/sweep/ResourceManager;->m_nGradientWidth:I

    if-lt v1, v4, :cond_6

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v4, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v4, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/voovio/sweep/ResourceManager;->m_aAlphas:[B

    mul-int/lit16 v5, v1, 0xff

    iget v6, p0, Lcom/voovio/sweep/ResourceManager;->m_nGradientWidth:I

    div-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public waitForReady(Lcom/voovio/sweep/Transition;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/Transition;

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForTransition:Lcom/voovio/sweep/Transition;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-virtual {p0, v0, v1}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    iget-object v0, p1, Lcom/voovio/sweep/Transition;->m_aVoovios:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-virtual {p0, v0, v1}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    :cond_0
    return-void
.end method

.method public waitForReady(Lcom/voovio/sweep/Voovio;)V
    .locals 1
    .param p1    # Lcom/voovio/sweep/Voovio;

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oWaitingForVoovio:Lcom/voovio/sweep/Voovio;

    if-eqz p1, :cond_0

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-virtual {p0, p1, v0}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    :cond_0
    return-void
.end method
