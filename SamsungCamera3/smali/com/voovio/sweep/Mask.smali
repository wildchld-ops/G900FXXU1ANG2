.class Lcom/voovio/sweep/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# instance fields
.field public m_nTextureID:I

.field public m_oVoovio:Lcom/voovio/sweep/Voovio;


# direct methods
.method public constructor <init>(Lcom/voovio/sweep/Voovio;)V
    .locals 0
    .param p1    # Lcom/voovio/sweep/Voovio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    return-void
.end method


# virtual methods
.method public Create()V
    .locals 9

    const/16 v2, 0x1908

    const/4 v1, 0x0

    const v5, 0x47012f00

    const/16 v0, 0xde1

    invoke-static {}, Lcom/voovio/sweep/TexturePool;->getTexture()I

    move-result v3

    iput v3, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    iget v3, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    invoke-static {v0, v3}, Landroid/opengl/GLES11;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/high16 v4, 0x46180000

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v3, 0x2800

    const v4, 0x46180400

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES11;->glTexParameterf(IIF)V

    iget-object v3, p0, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v3, v3, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v4, v4, Lcom/voovio/sweep/Voovio;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v7, 0x1401

    iget-object v5, p0, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v8, v5, Lcom/voovio/sweep/Voovio;->m_ibImage:Ljava/nio/IntBuffer;

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {}, Landroid/opengl/GLES11;->glFlush()V

    return-void
.end method

.method public Destroy()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    invoke-static {v0}, Lcom/voovio/sweep/TexturePool;->returnTexture(I)V

    iput v1, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    :cond_0
    return-void
.end method

.method DestroyWithoutOpenGLContext()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    :cond_0
    return-void
.end method

.method public clone()Lcom/voovio/sweep/Mask;
    .locals 2

    new-instance v0, Lcom/voovio/sweep/Mask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/voovio/sweep/Mask;-><init>(Lcom/voovio/sweep/Voovio;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/sweep/Mask;->clone()Lcom/voovio/sweep/Mask;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 2
    .param p1    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2    # F

    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES11;->glEnable(I)V

    iget v0, p0, Lcom/voovio/sweep/Mask;->m_nTextureID:I

    invoke-static {v1, v0}, Landroid/opengl/GLES11;->glBindTexture(II)V

    iget-object v0, p0, Lcom/voovio/sweep/Mask;->m_oVoovio:Lcom/voovio/sweep/Voovio;

    iget-object v0, v0, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v0, v0, Lcom/voovio/sweep/Sweep;->m_oMaskGeometry:Lcom/voovio/sweep/MaskGeometry;

    invoke-virtual {v0, p1, p2}, Lcom/voovio/sweep/MaskGeometry;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES11;->glBindTexture(II)V

    invoke-static {v1}, Landroid/opengl/GLES11;->glDisable(I)V

    return-void
.end method
