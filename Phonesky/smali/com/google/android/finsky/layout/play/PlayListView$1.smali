.class Lcom/google/android/finsky/layout/play/PlayListView$1;
.super Landroid/database/DataSetObserver;
.source "PlayListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayListView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayListView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayListView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayListView;

    # invokes: Lcom/google/android/finsky/layout/play/PlayListView;->captureCardPositions()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PlayListView;->access$000(Lcom/google/android/finsky/layout/play/PlayListView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayListView$1;->this$0:Lcom/google/android/finsky/layout/play/PlayListView;

    # invokes: Lcom/google/android/finsky/layout/play/PlayListView;->captureCardPositions()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/play/PlayListView;->access$000(Lcom/google/android/finsky/layout/play/PlayListView;)V

    return-void
.end method
