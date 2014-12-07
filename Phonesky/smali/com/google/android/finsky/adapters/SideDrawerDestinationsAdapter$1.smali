.class Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$1;
.super Ljava/lang/Object;
.source "SideDrawerDestinationsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter$1;->this$0:Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->notifyDataSetChanged()V

    return-void
.end method
