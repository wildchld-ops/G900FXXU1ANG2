.class Lcom/google/android/finsky/layout/HorizontalStrip$2;
.super Ljava/lang/Object;
.source "HorizontalStrip.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/HorizontalStrip;

.field final synthetic val$childIndex:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/HorizontalStrip;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip$2;->this$0:Lcom/google/android/finsky/layout/HorizontalStrip;

    iput p2, p0, Lcom/google/android/finsky/layout/HorizontalStrip$2;->val$childIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip$2;->this$0:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget v1, p0, Lcom/google/android/finsky/layout/HorizontalStrip$2;->val$childIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->onChildAcquiredFocus(I)V

    :cond_0
    return-void
.end method
