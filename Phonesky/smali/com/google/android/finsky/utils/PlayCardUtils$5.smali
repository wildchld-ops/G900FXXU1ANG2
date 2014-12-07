.class final Lcom/google/android/finsky/utils/PlayCardUtils$5;
.super Lcom/google/android/finsky/utils/PlayCardCustomizer;
.source "PlayCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->initializeCardTrackers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/utils/PlayCardCustomizer",
        "<",
        "Lcom/google/android/play/layout/PlayCardViewSmall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/utils/PlayCardCustomizer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic preBind(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0

    check-cast p1, Lcom/google/android/play/layout/PlayCardViewSmall;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/utils/PlayCardUtils$5;->preBind(Lcom/google/android/play/layout/PlayCardViewSmall;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method

.method public preBind(Lcom/google/android/play/layout/PlayCardViewSmall;Lcom/google/android/finsky/api/model/Document;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/utils/PlayCardCustomizer;->preBind(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;)V

    invoke-static {p2}, Lcom/google/android/finsky/utils/PlayUtils;->hasReasons(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasOptimalDeviceClassWarning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/play/layout/PlayCardViewSmall;->setReasonVisible(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
