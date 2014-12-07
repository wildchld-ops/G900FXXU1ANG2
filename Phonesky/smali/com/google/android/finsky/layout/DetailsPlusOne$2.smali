.class Lcom/google/android/finsky/layout/DetailsPlusOne$2;
.super Ljava/lang/Object;
.source "DetailsPlusOne.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/DetailsPlusOne;->bindPlusOneCircleAvatars()V
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

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$2;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$2;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne;

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/DetailsPlusOne;->access$200(Lcom/google/android/finsky/layout/DetailsPlusOne;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsPlusOne$2;->this$0:Lcom/google/android/finsky/layout/DetailsPlusOne;

    # getter for: Lcom/google/android/finsky/layout/DetailsPlusOne;->mData:Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;
    invoke-static {v1}, Lcom/google/android/finsky/layout/DetailsPlusOne;->access$300(Lcom/google/android/finsky/layout/DetailsPlusOne;)Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/DetailsPlusOne$PlusOneCirclesListingDialog;->showInfo(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/protos/DocumentV2$PlusOneData;)V

    return-void
.end method
