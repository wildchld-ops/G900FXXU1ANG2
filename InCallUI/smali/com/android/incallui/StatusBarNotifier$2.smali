.class Lcom/android/incallui/StatusBarNotifier$2;
.super Landroid/os/AsyncTask;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/StatusBarNotifier;->makeNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;

.field final synthetic val$allowFullScreenIntent:Z

.field final synthetic val$call:Lcom/android/services/telephony/common/Call;

.field final synthetic val$entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$call:Lcom/android/services/telephony/common/Call;

    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-boolean p4, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$allowFullScreenIntent:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/StatusBarNotifier$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$call:Lcom/android/services/telephony/common/Call;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$allowFullScreenIntent:Z

    # invokes: Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    const/4 v0, 0x0

    return-object v0
.end method
