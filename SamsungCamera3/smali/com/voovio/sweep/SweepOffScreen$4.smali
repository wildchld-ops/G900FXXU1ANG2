.class Lcom/voovio/sweep/SweepOffScreen$4;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepOffScreen;->startFrom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepOffScreen;

.field private final synthetic val$initialIndex:I


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepOffScreen;I)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen$4;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iput p2, p0, Lcom/voovio/sweep/SweepOffScreen$4;->val$initialIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v3, p0, Lcom/voovio/sweep/SweepOffScreen$4;->val$initialIndex:I

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/voovio/sweep/SweepOffScreen$4;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v4, v4, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v4, v4, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, p0, Lcom/voovio/sweep/SweepOffScreen$4;->val$initialIndex:I

    :goto_0
    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen$4;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    iget-object v3, v3, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v3, v3, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voovio/sweep/Voovio;

    iget-object v3, p0, Lcom/voovio/sweep/SweepOffScreen$4;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    # getter for: Lcom/voovio/sweep/SweepOffScreen;->m_oResourceManager:Lcom/voovio/sweep/ResourceManager;
    invoke-static {v3}, Lcom/voovio/sweep/SweepOffScreen;->access$0(Lcom/voovio/sweep/SweepOffScreen;)Lcom/voovio/sweep/ResourceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/voovio/sweep/ResourceManager;->prepareVoovio(Lcom/voovio/sweep/Voovio;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
