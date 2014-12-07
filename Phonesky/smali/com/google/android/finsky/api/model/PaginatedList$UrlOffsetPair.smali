.class public Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
.super Ljava/lang/Object;
.source "PaginatedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/PaginatedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UrlOffsetPair"
.end annotation


# instance fields
.field public final offset:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    iput-object p2, p0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    return-void
.end method
