.class public Lcom/google/android/finsky/utils/PlayCardCustomizer;
.super Ljava/lang/Object;
.source "PlayCardCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/play/layout/PlayCardViewBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preBind(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/finsky/api/model/Document;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->setData(Ljava/lang/Object;I)V

    return-void
.end method
