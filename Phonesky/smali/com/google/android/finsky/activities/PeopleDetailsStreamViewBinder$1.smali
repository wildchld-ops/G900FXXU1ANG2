.class Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder$1;
.super Ljava/lang/Object;
.source "PeopleDetailsStreamViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder$1;->this$0:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder$1;->this$0:Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;

    # invokes: Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->requestData()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;->access$000(Lcom/google/android/finsky/activities/PeopleDetailsStreamViewBinder;)V

    return-void
.end method
