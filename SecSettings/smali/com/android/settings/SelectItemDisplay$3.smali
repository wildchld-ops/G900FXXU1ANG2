.class Lcom/android/settings/SelectItemDisplay$3;
.super Ljava/lang/Object;
.source "SelectItemDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SelectItemDisplay;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SelectItemDisplay;


# direct methods
.method constructor <init>(Lcom/android/settings/SelectItemDisplay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SelectItemDisplay$3;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$3;->this$0:Lcom/android/settings/SelectItemDisplay;

    # getter for: Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/SelectItemDisplay;->access$100(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$3;->this$0:Lcom/android/settings/SelectItemDisplay;

    # getter for: Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/SelectItemDisplay;->access$100(Lcom/android/settings/SelectItemDisplay;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
