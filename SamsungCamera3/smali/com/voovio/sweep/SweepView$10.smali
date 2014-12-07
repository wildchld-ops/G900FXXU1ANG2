.class Lcom/voovio/sweep/SweepView$10;
.super Ljava/lang/Object;
.source "SweepView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepView;->onTransitionReady(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voovio/sweep/SweepView;

.field private final synthetic val$oTransition:Lcom/voovio/sweep/Transition;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/SweepView$10;->this$0:Lcom/voovio/sweep/SweepView;

    iput-object p2, p0, Lcom/voovio/sweep/SweepView$10;->val$oTransition:Lcom/voovio/sweep/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/voovio/sweep/SweepView$10;->this$0:Lcom/voovio/sweep/SweepView;

    iget-object v1, p0, Lcom/voovio/sweep/SweepView$10;->val$oTransition:Lcom/voovio/sweep/Transition;

    # invokes: Lcom/voovio/sweep/SweepView;->executeMoveToTransition(Lcom/voovio/sweep/Transition;)V
    invoke-static {v0, v1}, Lcom/voovio/sweep/SweepView;->access$26(Lcom/voovio/sweep/SweepView;Lcom/voovio/sweep/Transition;)V

    return-void
.end method
