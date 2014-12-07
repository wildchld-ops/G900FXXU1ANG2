.class final Lcom/google/android/finsky/utils/AppSupport$1;
.super Ljava/lang/Object;
.source "AppSupport.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/AppSupport;->silentRefund(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/AppSupport$RefundListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/RevokeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/google/android/finsky/utils/AppSupport$RefundListener;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/AppSupport$RefundListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/AppSupport$1;->val$listener:Lcom/google/android/finsky/utils/AppSupport$RefundListener;

    iput-object p2, p0, Lcom/google/android/finsky/utils/AppSupport$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/RevokeResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/utils/AppSupport$1;->val$listener:Lcom/google/android/finsky/utils/AppSupport$RefundListener;

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->SUCCESS:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    iget-object v2, p0, Lcom/google/android/finsky/utils/AppSupport$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/utils/AppSupport$RefundListener;->onRefundComplete(Lcom/google/android/finsky/utils/AppSupport$RefundResult;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/finsky/protos/RevokeResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/AppSupport$1;->onResponse(Lcom/google/android/finsky/protos/RevokeResponse;)V

    return-void
.end method
