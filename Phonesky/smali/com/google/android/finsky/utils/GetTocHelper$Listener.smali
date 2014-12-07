.class public interface abstract Lcom/google/android/finsky/utils/GetTocHelper$Listener;
.super Ljava/lang/Object;
.source "GetTocHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/GetTocHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onErrorResponse(Lcom/android/volley/VolleyError;)V
.end method

.method public abstract onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
.end method
