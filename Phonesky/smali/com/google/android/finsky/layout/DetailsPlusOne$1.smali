.class Lcom/google/android/finsky/layout/DetailsPlusOne$1;
.super Ljava/lang/Object;
.source "DetailsPlusOne.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/DetailsPlusOne;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/DetailsPlusOne;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$1;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$1;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne;

    # invokes: Lcom/google/android/finsky/layout/DetailsPlusOne;->handleMainContentClick()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->access$100(Lcom/google/android/finsky/layout/DetailsPlusOne;)V

    return-void
.end method
