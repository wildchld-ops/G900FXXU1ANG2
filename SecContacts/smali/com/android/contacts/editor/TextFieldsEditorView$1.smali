.class Lcom/android/contacts/editor/TextFieldsEditorView$1;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, -0x1

    :goto_0
    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # getter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z
    invoke-static {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    # setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z
    invoke-static {v5, v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    # setter for: Lcom/android/contacts/editor/TextFieldsEditorView;->mForceHideOrShow:Z
    invoke-static {v3, v4}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$102(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/LabeledEditorView;->onOptionalFieldVisibilityChange()V

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$1;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
