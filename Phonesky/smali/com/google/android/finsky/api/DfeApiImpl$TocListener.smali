.class Lcom/google/android/finsky/api/DfeApiImpl$TocListener;
.super Ljava/lang/Object;
.source "DfeApiImpl.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/DfeApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TocListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/Toc$TocResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Toc$TocResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/api/DfeApiImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApiImpl;Lcom/android/volley/Response$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/protos/Toc$TocResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->this$0:Lcom/google/android/finsky/api/DfeApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->this$0:Lcom/google/android/finsky/api/DfeApiImpl;

    # getter for: Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    invoke-static {v0}, Lcom/google/android/finsky/api/DfeApiImpl;->access$000(Lcom/google/android/finsky/api/DfeApiImpl;)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/Experiments;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->this$0:Lcom/google/android/finsky/api/DfeApiImpl;

    # getter for: Lcom/google/android/finsky/api/DfeApiImpl;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;
    invoke-static {v0}, Lcom/google/android/finsky/api/DfeApiImpl;->access$000(Lcom/google/android/finsky/api/DfeApiImpl;)Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getExperiments()Lcom/google/android/finsky/experiments/Experiments;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/finsky/protos/Toc$TocResponse;->experiments:Lcom/google/android/finsky/protos/Toc$Experiments;

    iget-object v1, v1, Lcom/google/android/finsky/protos/Toc$Experiments;->experimentId:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ListsUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/experiments/Experiments;->setExperiments(Ljava/util/Collection;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/Toc$TocResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/DfeApiImpl$TocListener;->onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V

    return-void
.end method
