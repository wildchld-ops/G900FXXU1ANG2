.class Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$1;
.super Ljava/lang/Object;
.source "PlayCardViewMyApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setArchivable(ZLcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

.field final synthetic val$onArchiveActionListener:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    iput-object p2, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$1;->val$onArchiveActionListener:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$1;->this$0:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$1;->val$onArchiveActionListener:Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;->onArchiveAction(Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method
