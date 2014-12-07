.class Lcom/samsung/contacts/list/BaseActionModeAdapter$2;
.super Ljava/lang/Object;
.source "BaseActionModeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/list/BaseActionModeAdapter;->showSelectAllHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/list/BaseActionModeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    # getter for: Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->access$000(Lcom/samsung/contacts/list/BaseActionModeAdapter;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->onDeselectAll()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->getListItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    # getter for: Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->access$000(Lcom/samsung/contacts/list/BaseActionModeAdapter;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    # getter for: Lcom/samsung/contacts/list/BaseActionModeAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->access$100(Lcom/samsung/contacts/list/BaseActionModeAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    # getter for: Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->access$000(Lcom/samsung/contacts/list/BaseActionModeAdapter;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->updateActionBarTitle()V

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->updateSelectAllState()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;->this$0:Lcom/samsung/contacts/list/BaseActionModeAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->onSelectAll()V

    goto :goto_0
.end method
