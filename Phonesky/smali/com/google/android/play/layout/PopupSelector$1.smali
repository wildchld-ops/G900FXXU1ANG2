.class Lcom/google/android/play/layout/PopupSelector$1;
.super Ljava/lang/Object;
.source "PopupSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/layout/PopupSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/play/layout/PopupSelector;


# direct methods
.method constructor <init>(Lcom/google/android/play/layout/PopupSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/layout/PopupSelector$1;->this$0:Lcom/google/android/play/layout/PopupSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-gez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/layout/PopupSelector$1;->this$0:Lcom/google/android/play/layout/PopupSelector;

    invoke-virtual {v0}, Lcom/google/android/play/layout/PopupSelector;->dismiss()V

    iget-object v0, p0, Lcom/google/android/play/layout/PopupSelector$1;->this$0:Lcom/google/android/play/layout/PopupSelector;

    # getter for: Lcom/google/android/play/layout/PopupSelector;->mListAdapter:Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;
    invoke-static {v0}, Lcom/google/android/play/layout/PopupSelector;->access$000(Lcom/google/android/play/layout/PopupSelector;)Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/play/layout/PlayPopupMenu$PopupListAdapter;->onSelect(I)V

    goto :goto_0
.end method
