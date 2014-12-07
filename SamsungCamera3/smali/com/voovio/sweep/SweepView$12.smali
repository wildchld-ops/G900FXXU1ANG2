.class Lcom/voovio/sweep/SweepView$12;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView$12;->this$0:Lcom/voovio/sweep/SweepView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$12;->this$0:Lcom/voovio/sweep/SweepView;

    # getter for: Lcom/voovio/sweep/SweepView;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;
    invoke-static {v0}, Lcom/voovio/sweep/SweepView;->access$28(Lcom/voovio/sweep/SweepView;)Lcom/voovio/sweep/ResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$12;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, v1, Lcom/voovio/sweep/SweepView;->m_oCurVoovio:Lcom/voovio/sweep/Voovio;

    invoke-virtual {v0, v1}, Lcom/voovio/sweep/ResourceManager;->setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V

    return-void
.end method
