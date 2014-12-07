.class public Lcom/google/android/finsky/layout/play/SelectableUiElementNode;
.super Lcom/google/android/finsky/layout/play/GenericUiElementNode;
.source "SelectableUiElementNode.java"


# instance fields
.field private mSelected:Z


# direct methods
.method public constructor <init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1
    .param p1    # I
    .param p2    # [B
    .param p3    # Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;
    .param p4    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->mSelected:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->mSelected:Z

    return-void
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->mSelected:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "childNode has null element"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p0, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->findOrAddChild(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z

    goto :goto_0
.end method

.method public reportImpression()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->mSelected:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;->reportImpression()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Should not be report impressions when not selected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNodeSelected(Z)V
    .locals 3
    .param p1    # Z

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->findOrAddChild(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;->child:[Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->mSelected:Z

    return-void

    :cond_1
    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->flushImpressionAtRoot(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-interface {v0}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/SelectableUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->removeChild(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;)Z

    goto :goto_0
.end method
