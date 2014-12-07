.class Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;
.super Ljava/lang/Object;
.source "MyAppsSubscriptionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAppsSubscriptionEntry"
.end annotation


# instance fields
.field public final parentDoc:Lcom/google/android/finsky/api/model/Document;

.field public final subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

.field public final subscriptionOwnership:Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionOwnership:Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    return-void
.end method
