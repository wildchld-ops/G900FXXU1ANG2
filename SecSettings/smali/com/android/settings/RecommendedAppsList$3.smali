.class Lcom/android/settings/RecommendedAppsList$3;
.super Ljava/lang/Object;
.source "RecommendedAppsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RecommendedAppsList;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RecommendedAppsList;


# direct methods
.method constructor <init>(Lcom/android/settings/RecommendedAppsList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RecommendedAppsList$3;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList$3;->this$0:Lcom/android/settings/RecommendedAppsList;

    # invokes: Lcom/android/settings/RecommendedAppsList;->SavedRecommendedAppsList()V
    invoke-static {v0}, Lcom/android/settings/RecommendedAppsList;->access$400(Lcom/android/settings/RecommendedAppsList;)V

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsList$3;->this$0:Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
