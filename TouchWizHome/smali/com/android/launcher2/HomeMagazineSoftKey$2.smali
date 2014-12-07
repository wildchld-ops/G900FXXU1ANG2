.class Lcom/android/launcher2/HomeMagazineSoftKey$2;
.super Ljava/lang/Object;
.source "HomeMagazineSoftKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/launcher2/HomeMagazineSoftKey$2;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey$2;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    # getter for: Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/launcher2/HomeMagazineSoftKey;->access$000(Lcom/android/launcher2/HomeMagazineSoftKey;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeMagazineSoftKey$2;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    # getter for: Lcom/android/launcher2/HomeMagazineSoftKey;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v0}, Lcom/android/launcher2/HomeMagazineSoftKey;->access$100(Lcom/android/launcher2/HomeMagazineSoftKey;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeMagazineSoftKey$2;->this$0:Lcom/android/launcher2/HomeMagazineSoftKey;

    # getter for: Lcom/android/launcher2/HomeMagazineSoftKey;->mAppsBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/launcher2/HomeMagazineSoftKey;->access$000(Lcom/android/launcher2/HomeMagazineSoftKey;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    return-void
.end method
