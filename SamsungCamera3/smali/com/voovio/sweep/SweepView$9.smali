.class Lcom/voovio/sweep/SweepView$9;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->onVoovioReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Voovio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;

.field private final synthetic val$oVoovio:Lcom/voovio/sweep/Voovio;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    iput-object p2, p0, Lcom/voovio/sweep/SweepView$9;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$9;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$9;->val$oVoovio:Lcom/voovio/sweep/Voovio;

    # invokes: Lcom/voovio/sweep/SweepView;->executeMoveToVoovio(Lcom/voovio/sweep/Voovio;)V
    invoke-static {v0, v1}, Lcom/voovio/sweep/SweepView;->access$25(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Voovio;)V

    return-void
.end method
