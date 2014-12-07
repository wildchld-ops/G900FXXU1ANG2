.class Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CardDismissalAction"
.end annotation


# instance fields
.field private final mCard:Lcom/google/android/play/layout/PlayCardViewBase;

.field private final mClickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method public constructor <init>(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p1    # Lcom/google/android/play/layout/PlayCardViewBase;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Lcom/google/android/finsky/api/DfeApi;
    .param p4    # Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mCard:Lcom/google/android/play/layout/PlayCardViewBase;

    iput-object p2, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iput-object p4, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    iput-object p5, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mClickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)Lcom/google/android/play/layout/PlayCardViewBase;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mCard:Lcom/google/android/play/layout/PlayCardViewBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDismissListener:Lcom/google/android/finsky/layout/play/PlayCardDismissListener;

    return-object v0
.end method


# virtual methods
.method public onActionSelected()V
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0xd4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mClickedNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getNeutralDismissal()Lcom/google/android/finsky/protos/DocumentV2$Dismissal;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/finsky/protos/DocumentV2$Dismissal;->url:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$1;-><init>(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)V

    new-instance v3, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction$2;-><init>(Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->rateSuggestedContent(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method
