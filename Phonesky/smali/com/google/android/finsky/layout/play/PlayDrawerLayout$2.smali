.class Lcom/google/android/finsky/layout/play/PlayDrawerLayout$2;
.super Ljava/lang/Object;
.source "PlayDrawerLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->configure(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/navigationmanager/NavigationManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$2;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerLayout$2;->this$0:Lcom/google/android/finsky/layout/play/PlayDrawerLayout;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/play/PlayDrawerLayout;->closeSideDrawer()V

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$SideDrawerAction;->activate()V

    return-void
.end method
