.class Lcom/android/launcher2/HomeMagazineSoftKey$1;
.super Ljava/lang/Object;
.source "HomeMagazineSoftKey.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeMagazineSoftKey;->setup(Lcom/android/launcher2/HomeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeMagazineSoftKey;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeMagazineSoftKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeMagazineSoftKey$1;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey$1;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    # getter for: Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/launcher2/HomeMagazineSoftKey;->access$000(Lcom/android/launcher2/HomeMagazineSoftKey;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
