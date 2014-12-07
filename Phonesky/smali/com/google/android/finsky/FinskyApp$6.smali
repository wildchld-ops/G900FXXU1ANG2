.class Lcom/google/android/finsky/FinskyApp$6;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/FinskyApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/FinskyApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$6;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePendingNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;Z)Z
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;
    .param p4    # Z

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/billing/iab/PendingNotificationsService;->handlePendingNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/protos/VendingProtos$PendingNotificationsProto;Z)Z

    move-result v0

    return v0
.end method
