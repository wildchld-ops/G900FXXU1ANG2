.class Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$1;
.super Ljava/lang/Object;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$1;->this$0:Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;

    # invokes: Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->showToast()V
    invoke-static {v0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->access$000(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    const/4 v0, 0x0

    return v0
.end method