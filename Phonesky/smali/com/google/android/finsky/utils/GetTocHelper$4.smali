.class final Lcom/google/android/finsky/utils/GetTocHelper$4;
.super Ljava/lang/Object;
.source "GetTocHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/GetTocHelper;->doGetToc(ZLcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/GetTocHelper$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/GetTocHelper$4;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/utils/GetTocHelper$4;->val$listener:Lcom/google/android/finsky/utils/GetTocHelper$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/utils/GetTocHelper$Listener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method
