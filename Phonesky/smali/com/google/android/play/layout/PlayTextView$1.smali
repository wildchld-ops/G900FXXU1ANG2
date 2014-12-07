.class Lcom/google/android/play/layout/PlayTextView$1;
.super Ljava/lang/Object;
.source "PlayTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/layout/PlayTextView;->setContent(Lcom/google/android/play/layout/PlayTextView$UrlClickHandler;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/play/layout/PlayTextView;


# direct methods
.method constructor <init>(Lcom/google/android/play/layout/PlayTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/layout/PlayTextView$1;->this$0:Lcom/google/android/play/layout/PlayTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/layout/PlayTextView$1;->this$0:Lcom/google/android/play/layout/PlayTextView;

    # invokes: Lcom/google/android/play/layout/PlayTextView;->handleClick()V
    invoke-static {v0}, Lcom/google/android/play/layout/PlayTextView;->access$000(Lcom/google/android/play/layout/PlayTextView;)V

    return-void
.end method
