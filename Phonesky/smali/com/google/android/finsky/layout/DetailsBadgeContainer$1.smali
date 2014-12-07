.class Lcom/google/android/finsky/layout/DetailsBadgeContainer$1;
.super Ljava/lang/Object;
.source "DetailsBadgeContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/DetailsBadgeContainer;->configure(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/DetailsBadgeContainer;

.field final synthetic val$badgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

.field final synthetic val$fragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/DetailsBadgeContainer;Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$1;->this$0:Lcom/google/android/finsky/layout/DetailsBadgeContainer;

    iput-object p2, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$1;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$1;->val$badgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$1;->val$fragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsBadgeContainer$1;->val$badgeContainer:Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/DetailsBadgeContainer$BadgeContainerInfoDialog;->showInfo(Landroid/support/v4/app/FragmentManager;Lcom/google/android/finsky/protos/DocAnnotations$BadgeContainer;)V

    return-void
.end method
