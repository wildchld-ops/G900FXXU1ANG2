.class Lcom/android/launcher2/guide/AddWidgetsGuider$2;
.super Ljava/lang/Object;
.source "AddWidgetsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/guide/AddWidgetsGuider;

.field final synthetic val$textBox:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/guide/AddWidgetsGuider;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/guide/AddWidgetsGuider$2;->this$0:Lcom/android/launcher2/guide/AddWidgetsGuider;

    iput-object p2, p0, Lcom/android/launcher2/guide/AddWidgetsGuider$2;->val$textBox:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/guide/AddWidgetsGuider$2;->val$textBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method
