.class Lcom/google/android/finsky/previews/PreviewPlayer$1;
.super Lcom/google/android/finsky/previews/StatusListener;
.source "PreviewPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/previews/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/previews/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-direct {p0}, Lcom/google/android/finsky/previews/StatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public error()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public paused()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->paused()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public playing()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->playing()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepared()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preparing()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->preparing()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public queueChanged(I)V
    .locals 3
    .param p1    # I

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/previews/StatusListener;->queueChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unrolling()V
    .locals 3

    iget-object v2, p0, Lcom/google/android/finsky/previews/PreviewPlayer$1;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    # getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/previews/StatusListener;->unrolling()V

    goto :goto_0

    :cond_0
    return-void
.end method
