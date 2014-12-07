.class Lcom/google/android/finsky/receivers/TosAckedReceiver$1;
.super Ljava/lang/Object;
.source "TosAckedReceiver.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/TosAckedReceiver;->fetchToc(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$optIn:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->val$account:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->val$optIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    const-string v0, "Error fetching TOC: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 4

    new-instance v0, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/protos/Toc$TocResponse;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    iget-object v1, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->val$account:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->val$optIn:Z

    # invokes: Lcom/google/android/finsky/receivers/TosAckedReceiver;->ackTos(Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/finsky/receivers/TosAckedReceiver;->access$000(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method
