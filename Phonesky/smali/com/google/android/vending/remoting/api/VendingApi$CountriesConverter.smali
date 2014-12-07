.class Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;
.super Ljava/lang/Object;
.source "VendingApi.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/api/VendingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountriesConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/Response$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;->mListener:Lcom/android/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;->countries:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;->mListener:Lcom/android/volley/Response$Listener;

    iget-object v1, p1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;->countries:Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;

    iget-object v1, v1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries;->country:[Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-static {v1}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;->mListener:Lcom/android/volley/Response$Listener;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;->onResponse(Lcom/google/android/finsky/protos/VendingProtos$PurchaseMetadataResponseProto;)V

    return-void
.end method
