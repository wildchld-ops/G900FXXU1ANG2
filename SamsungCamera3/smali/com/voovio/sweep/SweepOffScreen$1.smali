.class Lcom/voovio/sweep/SweepOffScreen$1;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepOffScreen;->init(Lcom/voovio/sweep/ResourceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepOffScreen;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepOffScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen$1;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/voovio/sweep/SweepOffScreen$1;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    # getter for: Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;
    invoke-static {v0}, Lcom/voovio/sweep/SweepOffScreen;->access$0(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/ResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voovio/sweep/ResourceManager;->loop()V

    return-void
.end method
