.class Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;
.super Ljava/lang/Object;
.source "ClientLoginApi.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

.field final synthetic val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;->this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    iput-object p2, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;->onAuthSuccess()V

    return-void
.end method
