.class public Lcom/voovio/gles/Snapshot;
.super Ljava/lang/Object;
.source "Snapshot.java"


# instance fields
.field private m_aTexCoords:[F

.field public m_aTextureIDs:[I

.field public m_bCreated:Z

.field private m_bbIndices:Ljava/nio/ByteBuffer;

.field private m_fbTexCoords:Ljava/nio/FloatBuffer;

.field private m_fbVertices:Ljava/nio/FloatBuffer;

.field private m_oP:[F

.field public m_szFrame:Lcom/voovio/geometry/Point;

.field public m_szTexture:Lcom/voovio/geometry/Point;


# direct methods
.method public constructor <init>(IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/voovio/geometry/Point;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/voovio/gles/Snapshot;->m_szTexture:Lcom/voovio/geometry/Point;

    new-instance v0, Lcom/voovio/geometry/Point;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-direct {v0, v1, v2}, Lcom/voovio/geometry/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot;->m_bbIndices:Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/gles/Snapshot;->m_oP:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/gles/Snapshot;->m_bCreated:Z

    return-void
.end method

.method private UpdateTextureCoordinates()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v4, 0x3f000000

    const/high16 v5, 0x3f800000

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_szTexture:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    div-float v0, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v2, v2, Lcom/voovio/geometry/Point;->y:F

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_szTexture:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->y:F

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    aput v0, v2, v6

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    const/4 v3, 0x1

    aput v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    const/4 v3, 0x2

    sub-float v4, v5, v0

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    const/4 v3, 0x4

    sub-float v4, v5, v0

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    const/4 v3, 0x5

    sub-float v4, v5, v1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    const/4 v3, 0x6

    aput v0, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    const/4 v3, 0x7

    sub-float v4, v5, v1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_aTexCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public Create()V
    .locals 14

    const/high16 v4, 0x46180000

    const/4 v3, 0x2

    const/4 v13, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0xc

    new-array v12, v2, [F

    fill-array-data v12, :array_0

    array-length v2, v12

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-direct {p0}, Lcom/voovio/gles/Snapshot;->UpdateTextureCoordinates()V

    const/4 v2, 0x6

    new-array v9, v2, [B

    aput-byte v13, v9, v13

    aput-byte v3, v9, v3

    const/4 v2, 0x4

    aput-byte v3, v9, v2

    const/4 v2, 0x5

    const/4 v3, 0x3

    aput-byte v3, v9, v2

    array-length v2, v9

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/voovio/gles/Snapshot;->m_bbIndices:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_bbIndices:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_bbIndices:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    new-array v2, v13, [I

    iput-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    invoke-static {v13, v2, v1}, Landroid/opengl/GLES11;->glGenTextures(I[II)V

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x47012f00

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    const v3, 0x47012f00

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v2, 0x1907

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v3, v3, Lcom/voovio/geometry/Point;->x:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/voovio/gles/Snapshot;->m_szFrame:Lcom/voovio/geometry/Point;

    iget v4, v4, Lcom/voovio/geometry/Point;->y:F

    float-to-int v4, v4

    const/16 v6, 0x1907

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v0, v1}, Landroid/opengl/GLES11;->glBindTexture(II)V

    iput-boolean v13, p0, Lcom/voovio/gles/Snapshot;->m_bCreated:Z

    return-void

    :array_0
    .array-data 4
        -0x40800000
        -0x40800000
        0x0
        0x3f800000
        -0x40800000
        0x0
        0x3f800000
        0x3f800000
        0x0
        -0x40800000
        0x3f800000
        0x0
    .end array-data
.end method

.method public Destroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/voovio/gles/Snapshot;->m_bCreated:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES11;->glDeleteTextures(I[II)V

    iput-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    iput-object v2, p0, Lcom/voovio/gles/Snapshot;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iput-object v2, p0, Lcom/voovio/gles/Snapshot;->m_bbIndices:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    :cond_1
    iput-boolean v3, p0, Lcom/voovio/gles/Snapshot;->m_bCreated:Z

    goto :goto_0
.end method

.method public DestroyWithoutOpenGLContext()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/voovio/gles/Snapshot;->m_bCreated:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot;->m_bbIndices:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/gles/Snapshot;->m_bCreated:Z

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 10

    const/16 v9, 0xb71

    const/high16 v0, -0x40800000

    const/16 v8, 0xde1

    const/4 v7, 0x0

    const/high16 v1, 0x3f800000

    invoke-static {v9}, Landroid/opengl/GLES11;->glIsEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v9}, Landroid/opengl/GLES11;->glDisable(I)V

    :cond_0
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES11;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES11;->glBlendFunc(II)V

    invoke-static {v8}, Landroid/opengl/GLES11;->glEnable(I)V

    iget-object v2, p0, Lcom/voovio/gles/Snapshot;->m_aTextureIDs:[I

    aget v2, v2, v7

    invoke-static {v8, v2}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/16 v2, 0xba7

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_oP:[F

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES11;->glGetFloatv(I[FI)V

    const/16 v2, 0x1701

    invoke-static {v2}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    move v2, v0

    move v3, v1

    move v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES11;->glOrthof(FFFFFF)V

    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES11;->glLoadIdentity()V

    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES11;->glEnableClientState(I)V

    const/4 v0, 0x3

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_fbVertices:Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v7, v3}, Landroid/opengl/GLES11;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_fbTexCoords:Ljava/nio/FloatBuffer;

    invoke-static {v0, v2, v7, v3}, Landroid/opengl/GLES11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-static {v1, v1, v1, p2}, Landroid/opengl/GLES11;->glColor4f(FFFF)V

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/voovio/gles/Snapshot;->m_bbIndices:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES11;->glDrawElements(IIILjava/nio/Buffer;)V

    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES11;->glDisableClientState(I)V

    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/voovio/gles/Snapshot;->m_oP:[F

    invoke-static {v0, v7}, Landroid/opengl/GLES11;->glLoadMatrixf([FI)V

    invoke-static {v8, v7}, Landroid/opengl/GLES11;->glBindTexture(II)V

    invoke-static {v8}, Landroid/opengl/GLES11;->glDisable(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES11;->glDisable(I)V

    if-eqz v6, :cond_1

    invoke-static {v9}, Landroid/opengl/GLES11;->glEnable(I)V

    :cond_1
    return-void
.end method

.method public setTextureSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/voovio/gles/Snapshot;->m_szTexture:Lcom/voovio/geometry/Point;

    int-to-float v1, p1

    iput v1, v0, Lcom/voovio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/voovio/gles/Snapshot;->m_szTexture:Lcom/voovio/geometry/Point;

    int-to-float v1, p2

    iput v1, v0, Lcom/voovio/geometry/Point;->y:F

    invoke-direct {p0}, Lcom/voovio/gles/Snapshot;->UpdateTextureCoordinates()V

    return-void
.end method
